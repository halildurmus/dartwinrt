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
import 'package:windows_globalization/windows_globalization.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('IVectorView<String>', () {
    IVectorView<String> getLanguages(Pointer<COMObject> ptr) {
      final retValuePtr = calloc<COMObject>();

      final hr = ptr.ref.vtable
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

      return IVectorView.fromPtr(retValuePtr,
          iterableIid: IID_IIterable_String);
    }

    IVectorView<String> getVectorView() {
      final calendar = Calendar();
      return getLanguages(calendar.ptr);
    }

    test('getAt throws a WindowsException if the index is out of bounds', () {
      final vectorView = getVectorView();
      expect(() => vectorView.getAt(20), throwsA(isA<WindowsException>()));
    });

    test('getAt returns elements', () {
      final vectorView = getVectorView();
      expect(vectorView.size, greaterThanOrEqualTo(1));
      final element = vectorView.getAt(0);
      // Should be something like en-US
      expect(element[2], equals('-'));
      expect(element.length, equals(5));
    });

    test('indexOf returns false if the element is not found', () {
      final vectorView = getVectorView();
      final (containsElement, :index) = vectorView.indexOf('xx-xx');
      expect(containsElement, isFalse);
      expect(index, equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final vectorView = getVectorView();
      final (itemCount, :items) = vectorView.getMany(0, vectorView.size);
      expect(itemCount, greaterThanOrEqualTo(1));
      expect(items.length, equals(vectorView.size));
      // Should be something like en-US
      expect(items[0][2], equals('-'));
      expect(items[0].length, equals(5));
    });

    test(
        'getMany returns all elements if valueSize is greater than the number '
        'of elements', () {
      final vectorView = getVectorView();
      final (itemCount, :items) = vectorView.getMany(0, vectorView.size + 1);
      expect(itemCount, greaterThanOrEqualTo(1));
      expect(items.length, equals(vectorView.size));
      // Should be something like en-US
      expect(items[0][2], equals('-'));
      expect(items[0].length, equals(5));
    });

    test('toList', () {
      final vectorView = getVectorView();
      final list = vectorView.toList();
      expect(list.length, greaterThanOrEqualTo(1));
      // Should be something like en-US
      expect(list.first[2], equals('-'));
      expect(list.first.length, equals(5));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final vectorView = getVectorView();
      final list = vectorView.toList();
      final iterator = vectorView.first();

      for (var i = 0; i < list.length; i++) {
        expect(iterator.hasCurrent, isTrue);
        // Should be something like en-US
        expect(iterator.current[2], equals('-'));
        // MoveNext() should return true except for the last iteration
        expect(iterator.moveNext(), i < list.length - 1);
      }
    });

    test('operator []', () {
      final vector = getVectorView();
      // Should be something like en-US
      expect(vector[0][2], equals('-'));
    });

    test('operator +', () {
      final vector = getVectorView();
      final list = ['tr-TR'];
      final newList = vector + list;
      expect(newList.length, equals(vector.size + 1));
      expect(newList.first[2], equals('-'));
      expect(newList.last, equals('tr-TR'));
    });
  });

  tearDownAll(forceGC);
}
