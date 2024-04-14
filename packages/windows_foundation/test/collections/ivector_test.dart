// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('IVector<Uri?>', () {
    IVector<Uri?> getServerUris(Pointer<COMObject> ptr) {
      final retValuePtr = calloc<COMObject>();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<COMObject> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) {
        free(retValuePtr);
        throwWindowsException(hr);
      }

      return IVector.fromPtr(retValuePtr, iterableIid: IID_IIterable_Uri);
    }

    IVector<Uri?> getVector() {
      // ignore: constant_identifier_names
      const IID_IVpnPlugInProfile = '{0edf0da4-4f00-4589-8d7b-4bf988f6542c}';
      final object = createObject(IInspectable.new,
          'Windows.Networking.Vpn.VpnPlugInProfile', IID_IVpnPlugInProfile);
      return getServerUris(object.ptr);
    }

    test('getAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.getAt(0), throwsA(isA<WindowsException>()));
    });

    test('getAt throws a WindowsException if the index is out of bounds', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(() => vector.getAt(2), throwsA(isA<WindowsException>()));
    });

    test('getAt returns elements', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(3));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/overview')));
      expect(vector.getAt(1), isNull);
      expect(vector.getAt(2), equals(Uri.parse('https://dart.dev/docs')));
    });

    test('getView returns empty List', () {
      final vector = getVector();
      final list = vector.getView();
      expect(list, isEmpty);
    });

    test('getView returns elements', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://dart.dev/docs'));
      final list = vector.getView();
      expect(list.length, equals(3));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('setAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.setAt(0, Uri.parse('https://dart.dev/overview')),
          throwsA(isA<WindowsException>()));
    });

    test('setAt throws a WindowsException if the index is out of bounds', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(
          () => vector.setAt(3, Uri.parse('https://flutter.dev/development')),
          throwsA(isA<WindowsException>()));
    });

    test('setAt', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null);
      expect(vector.size, equals(2));
      vector.setAt(0, Uri.parse('https://flutter.dev/development'));
      expect(vector.size, equals(2));
      vector.setAt(1, Uri.parse('https://flutter.dev/multi-platform'));
      expect(vector.size, equals(2));
      expect(vector.getAt(0),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(vector.getAt(1),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
    });

    test('insertAt throws a WindowsException if the index is out of bounds',
        () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(
          () =>
              vector.insertAt(3, Uri.parse('https://flutter.dev/development')),
          throwsA(isA<WindowsException>()));
    });

    test('insertAt', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
      vector.insertAt(0, Uri.parse('https://flutter.dev/development'));
      expect(vector.size, equals(3));
      vector.insertAt(2, null);
      expect(vector.size, equals(4));
      expect(vector.getAt(0),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(vector.getAt(1), equals(Uri.parse('https://dart.dev/overview')));
      expect(vector.getAt(2), isNull);
      expect(vector.getAt(3), equals(Uri.parse('https://dart.dev/docs')));
    });

    test('removeAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.removeAt(0), throwsA(isA<WindowsException>()));
    });

    test('removeAt throws a WindowsException if the index is out of bounds',
        () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(() => vector.removeAt(3), throwsA(isA<WindowsException>()));
    });

    test('removeAt', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/multi-platform'));
      expect(vector.size, equals(4));
      vector.removeAt(2);
      expect(vector.size, equals(3));
      expect(vector.getAt(2),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
      vector.removeAt(0);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/docs')));
      vector.removeAt(1);
      expect(vector.size, equals(1));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/docs')));
      vector.removeAt(0);
      expect(vector.size, equals(0));
    });

    test('append', () {
      final vector = getVector();
      expect(vector.size, equals(0));
      vector.append(Uri.parse('https://dart.dev/overview'));
      expect(vector.size, equals(1));
      vector.append(null);
      expect(vector.size, equals(2));
      vector.append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(3));
    });

    test('removeAtEnd throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(vector.removeAtEnd, throwsA(isA<WindowsException>()));
    });

    test('removeAtEnd', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://dart.dev/docs'));
      expect(vector.size, equals(3));
      vector.clear();
      expect(vector.size, equals(0));
    });

    test('getMany returns 0 if the vector is empty', () {
      final vector = getVector();
      final (itemCount, :items) = vector.getMany(0, 1);
      expect(itemCount, equals(0));
      expect(items.length, equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/development'));
      final (itemCount, :items) = vector.getMany(0, 3);
      expect(itemCount, equals(3));
      expect(items.length, equals(3));
      expect(items[0].toString(), equals('https://dart.dev/overview'));
      expect(items[1], isNull);
      expect(items[2].toString(), equals('https://flutter.dev/development'));
    });

    test(
        'getMany returns all elements if valueSize is greater than the number '
        'of elements', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/development'));
      final (itemCount, :items) = vector.getMany(0, 5);
      expect(itemCount, equals(3));
      expect(items.length, equals(3));
      expect(items[0].toString(), equals('https://dart.dev/overview'));
      expect(items[1], isNull);
      expect(items[2].toString(), equals('https://flutter.dev/development'));
    });

    test('getMany returns elements starting from index 1', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/development'));
      final (itemCount, :items) = vector.getMany(1, 2);
      expect(itemCount, equals(2));
      expect(items.length, equals(2));
      expect(items[0], isNull);
      expect(items[1].toString(), equals('https://flutter.dev/development'));
    });

    test('replaceAll', () {
      final vector = getVector();
      expect(vector.size, equals(0));
      vector.replaceAll([
        Uri.parse('https://dart.dev/overview'),
        null,
        Uri.parse('https://dart.dev/docs')
      ]);
      expect(vector.size, equals(3));
      expect(vector.getAt(0), equals(Uri.parse('https://dart.dev/overview')));
      expect(vector.getAt(1), isNull);
      expect(vector.getAt(2), equals(Uri.parse('https://dart.dev/docs')));
      vector.replaceAll([
        Uri.parse('https://flutter.dev/development'),
        Uri.parse('https://flutter.dev/multi-platform')
      ]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0),
          equals(Uri.parse('https://flutter.dev/development')));
      expect(vector.getAt(1),
          equals(Uri.parse('https://flutter.dev/multi-platform')));
    });

    test('toList', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/development'));
      final list = vector.toList();
      expect(list.length, equals(3));
      expect(list[0], equals(Uri.parse('https://dart.dev/overview')));
      expect(list[1], isNull);
      expect(list[2], equals(Uri.parse('https://flutter.dev/development')));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/development'));
      final iterator = vector.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current, equals(Uri.parse('https://dart.dev/overview')));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, isNull);
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current,
          equals(Uri.parse('https://flutter.dev/development')));
      expect(iterator.moveNext(), isFalse);
    });

    test('operator []', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(null)
        ..append(Uri.parse('https://flutter.dev/development'));
      expect(vector[0], equals(Uri.parse('https://dart.dev/overview')));
      expect(vector[1], isNull);
      expect(vector[2], equals(Uri.parse('https://flutter.dev/development')));
    });

    test('operator []=', () {
      final vector = getVector()
        ..append(Uri.parse('https://dart.dev/overview'))
        ..append(Uri.parse('https://dart.dev/docs'))
        ..append(Uri.parse('https://flutter.dev/development'));
      vector[1] = Uri.parse('https://dart.dev/tutorials');
      expect(vector[1], equals(Uri.parse('https://dart.dev/tutorials')));
    });

    test('operator +', () {
      final vector = getVector()..append(Uri.parse('https://dart.dev/docs'));
      final list = [Uri.parse('https://dart.dev/tutorials')];
      final newList = vector + list;
      expect(newList.length, equals(2));
      expect(
          newList,
          orderedEquals([
            Uri.parse('https://dart.dev/docs'),
            Uri.parse('https://dart.dev/tutorials')
          ]));
    });
  });

  tearDownAll(forceGC);
}
