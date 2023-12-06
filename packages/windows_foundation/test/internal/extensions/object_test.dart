// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('boxValue', () {
    test('Pointer<COMObject>', () {
      final pv = PropertyValue.createString('Dart');
      final boxed = pv.ptr.boxValue();
      expect(getClassName(boxed),
          equals('Windows.Foundation.IReference`1<String>'));
      expect(refCount(boxed), equals(1));
    });

    test('Guid', () {
      final boxed = Guid.parse(IID_IAsyncAction).boxValue();
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.guid));
      expect(pv.getGuid().toString(), equals(IID_IAsyncAction));
    });

    test('IInspectable', () {
      final stringMap = StringMap();
      final boxed = stringMap.boxValue();
      expect(boxed, isA<StringMap>());
      expect((boxed as StringMap).size, equals(0));
    });

    test('List<double> (Double)', () {
      final boxed = [1.5, -2.5].boxValue(doubleType: DoubleType.double);
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.doubleArray));
      final list = pv.getDoubleArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([1.5, -2.5]));
    });

    test('List<double> (Float)', () {
      final boxed = [1.5, -2.5].boxValue(doubleType: DoubleType.float);
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.singleArray));
      final list = pv.getDoubleArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([1.5, -2.5]));
    });

    test('List<Uri?>', () {
      final boxed = <Uri?>[Uri.parse('https://dartwinrt.dev'), null].boxValue();
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.inspectableArray));
      final list = pv.getInspectableArray();
      expect(list.length, equals(2));
      final [element1, element2] = list;
      expect(element1, isA<Uri>());
      expect(element1.toString(), equals('https://dartwinrt.dev/'));
      expect(element2, isNull);
    });

    test('String', () {
      final boxed = 'dart'.boxValue();
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.string));
      expect(pv.getString(), equals('dart'));
    });

    test('Uri', () {
      final boxed = Uri.parse('https://dartwinrt.dev').boxValue();
      expect(boxed, isA<winrt_uri.Uri>());
      final pv = boxed as winrt_uri.Uri;
      expect(pv.toString(), equals('https://dartwinrt.dev/'));
    });
  });

  test('List<IInspectable?> to Pointer<VTablePointer>', () {
    final list = [StringMap(), null, ValueSet()];
    final array = list.toArray();
    expect(array[0].address, isNonZero);
    expect(array[1].address, isZero);
    expect(array[2].address, isNonZero);
    free(array);
  });

  test('List<Object?> to Pointer<VTablePointer>', () {
    final list = <Object?>[
      StringMap(),
      null,
      Guid.parse(IID_IAsyncAction),
      true,
      1.5,
      5,
      DateTime.now(),
      const Rect(1, 2, 3, 4),
      Uri.https('dartwinrt.dev')
    ];
    final array = list.toArray();
    expect(array[0].address, isNonZero);
    expect(array[1].address, isZero);
    expect(array[2].address, isNonZero);
    expect(array[3].address, isNonZero);
    expect(array[4].address, isNonZero);
    expect(array[5].address, isNonZero);
    expect(array[6].address, isNonZero);
    expect(array[7].address, isNonZero);
    expect(array[8].address, isNonZero);
    free(array);
  });

  group('Pointer<COMObject>', () {
    test('to List<IInspectable?>', () {
      final map1 = StringMap()..addRef();
      final map2 = StringMap()
        ..insert('dart', 'winrt')
        ..addRef();
      final ptr = calloc<COMObject>(3)
        ..[0] = map1.ptr.ref
        ..[2] = map2.ptr.ref;
      final list = ptr.toList<StringMap?>(StringMap.fromPtr, length: 3);
      expect(list.length, equals(3));
      expect(list[0], isNotNull);
      expect(list[0]!.size, isZero);
      expect(list[1], isNull);
      expect(list[2], isNotNull);
      expect(list[2]!.size, equals(1));
      free(ptr);
    });

    test('to List<Object?>', () {
      Pointer<COMObject> getInspectableArray(Pointer<COMObject> ptr) {
        final valueSize = calloc<Uint32>();
        final value = calloc<Pointer<COMObject>>();

        try {
          final hr = ptr.ref.vtable
                  .elementAt(38)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Pointer<Uint32> valueSize,
                                  Pointer<Pointer<COMObject>> value)>>>()
                  .value
                  .asFunction<
                      int Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<COMObject>> value)>()(
              ptr.ref.lpVtbl, valueSize, value);

          if (FAILED(hr)) throwWindowsException(hr);

          return value.value;
        } finally {
          free(valueSize);
          free(value);
        }
      }

      final pv = PropertyValue.createInspectableArray([
        StringMap(),
        null,
        Guid.parse(IID_IAsyncAction),
        true,
        1.5,
        5,
        DateTime.now(),
        const Rect(1, 2, 3, 4),
        Uri.https('dartwinrt.dev')
      ]);

      final array = getInspectableArray(pv.ptr);
      final list = array.toObjectList(length: 9);
      expect(list.length, equals(9));
      expect(list[0], isA<IInspectable>());
      expect(list[1], isNull);
      expect(list[2], isA<Guid>());
      expect(list[3], isA<bool>());
      expect(list[4], isA<double>());
      expect(list[5], isA<int>());
      expect(list[6], isA<DateTime>());
      expect(list[7], isA<Rect>());
      expect(list[8], isA<Uri>());
      free(array);
    });
  });

  tearDownAll(forceGC);
}
