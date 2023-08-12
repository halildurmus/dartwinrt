// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IMapView<String, String>', () {
    IMapView<String, String> getView(Pointer<COMObject> ptr) {
      final retValuePtr = calloc<COMObject>();

      final hr = ptr.ref.lpVtbl.value
              .elementAt(9)
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

      if (FAILED(hr)) throwWindowsException(hr);

      return IMapView.fromPtr(retValuePtr,
          iterableIid: IID_IIterable_IKeyValuePair_String_String);
    }

    IMapView<String, String> getMapView() {
      final map = StringMap()
        ..insert('key1', 'value1')
        ..insert('key2', '')
        ..insert('key3', 'value3');
      return getView(map.ptr);
    }

    test('lookup throws a WindowsException if the map is empty', () {
      final map = StringMap();
      final mapView = getView(map.ptr);
      expect(() => mapView.lookup('key1'), throwsA(isA<WindowsException>()));
    });

    test('lookup throws a WindowsException if the item does not exists', () {
      final mapView = getMapView();
      expect(() => mapView.lookup('key4'), throwsA(isA<WindowsException>()));
    });

    test('lookup returns items', () {
      final mapView = getMapView();
      expect(mapView.lookup('key1'), equals('value1'));
      expect(mapView.lookup('key2'), isEmpty);
      expect(mapView.lookup('key3'), equals('value3'));
    });

    test('hasKey finds items', () {
      final mapView = getMapView();
      expect(mapView.hasKey('key1'), isTrue);
      expect(mapView.hasKey('key2'), isTrue);
      expect(mapView.hasKey('key3'), isTrue);
    });

    test('hasKey returns false if the item does not exists', () {
      final mapView = getMapView();
      expect(mapView.hasKey('key4'), isFalse);
    });

    test('toMap', () {
      final mapView = getMapView();
      final dartMap = mapView.toMap();
      expect(dartMap.length, equals(3));
      expect(dartMap['key1'], equals('value1'));
      expect(dartMap['key2'], isEmpty);
      expect(dartMap['key3'], equals('value3'));
      expect(() => dartMap..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final mapView = getMapView();
      final iterator = mapView.first();
      expect(iterator.hasCurrent, isTrue);
      var current = iterator.current;
      expect(current.key, equals('key3'));
      expect(current.value, equals('value3'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current.key, equals('key2'));
      expect(current.value, isEmpty);
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current.key, equals('key1'));
      expect(current.value, equals('value1'));
      expect(iterator.moveNext(), isFalse);
    });

    test('operator []', () {
      final map = getMapView();
      expect(map['key1'], equals('value1'));
      expect(map['key2'], isEmpty);
      expect(map['key3'], equals('value3'));
    });
  });

  tearDownAll(forceGC);
}
