// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart' hide IUnknown;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('boxValue', () {
    test('Pointer<COMObject>', () {
      final pv = PropertyValue.createString('Dart');
      final boxed = pv.ptr.boxValue();
      expect(getClassName(boxed),
          equals('Windows.Foundation.IReference`1<String>'));
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
      final newStringMap = boxed as StringMap;
      expect(newStringMap.size, equals(0));
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
      final boxed = [Uri.parse('https://dartwinrt.dev'), null].boxValue();
      expect(boxed, isA<IPropertyValue>());
      final pv = boxed as IPropertyValue;
      expect(pv.type, equals(PropertyType.inspectableArray));
      final list = pv.getInspectableArray();
      expect(list.length, equals(2));
      expect(list.first, isA<IInspectable>());
      final firstObject = list.first as IInspectable;
      expect(getClassName(firstObject), equals('Windows.Foundation.Uri'));
      final uri = firstObject.cast(
          winrt_uri.Uri.fromPtr, winrt_uri.IID_IUriRuntimeClass);
      expect(uri.toString(), equals('https://dartwinrt.dev/'));
      expect(list.last, isNull);
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
}
