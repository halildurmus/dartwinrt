// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_ai/windows_ai.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'helpers.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final windowsBuildNumber = getWindowsBuildNumber();

  if (windowsBuildNumber >= 18362) {
    group('IVectorView<double>', () {
      IVectorView<double> getAsVectorView(Pointer<COMObject> ptr) {
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
                    int Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        return IVectorView.fromPtr(retValuePtr,
            iterableIid: '{b01bee51-063a-5fda-bd72-d76637bb8cb8}',
            doubleType: DoubleType.float);
      }

      IVectorView<double> getVectorView() {
        final tensorFloat =
            TensorFloat.createFromShapeArrayAndDataArray([1, 4], [1, 2, 3, 4])!;
        return getAsVectorView(tensorFloat.ptr);
      }

      test('getAt throws exception if the index is out of bounds', () {
        final vectorView = getVectorView();
        expect(() => vectorView.getAt(20), throwsException);
      });

      test('getAt returns elements', () {
        final vectorView = getVectorView();
        final element = vectorView.getAt(0);
        expect(element, equals(1));
      });

      test('indexOf finds element', () {
        final pIndex = calloc<Uint32>();

        final vectorView = getVectorView();
        final containsElement = vectorView.indexOf(3, pIndex);
        expect(containsElement, isTrue);
        expect(pIndex.value, equals(2));

        free(pIndex);
      });

      test('getMany returns elements starting from index 0', () {
        final list = <double>[];
        final vectorView = getVectorView();
        expect(vectorView.getMany(0, vectorView.size, list),
            greaterThanOrEqualTo(1));
        expect(list.length, equals(vectorView.size));
        expect(list[0], equals(1));
      });

      test(
          'getMany returns all elements if valueSize is greater than the number '
          'of elements', () {
        final list = <double>[];
        final vectorView = getVectorView();
        expect(vectorView.getMany(0, vectorView.size + 1, list),
            greaterThanOrEqualTo(1));
        expect(list.length, equals(vectorView.size));
        expect(list[0], equals(1));
      });

      test('toList', () {
        final vectorView = getVectorView();
        final list = vectorView.toList();
        expect(list.length, greaterThanOrEqualTo(1));
        expect(list.first, equals(1));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('first', () {
        final vectorView = getVectorView();
        final list = vectorView.toList();
        final iterator = vectorView.first();

        for (var i = 0; i < list.length; i++) {
          expect(iterator.hasCurrent, isTrue);
          expect(iterator.current, isA<double>());
          // MoveNext() should return true except for the last iteration
          expect(iterator.moveNext(), i < list.length - 1);
        }
      });

      test('operator []', () {
        final vector = getVectorView();
        expect(vector[3], equals(4));
      });

      test('operator +', () {
        final vector = getVectorView();
        final list = <double>[1.5];
        final newList = vector + list;
        expect(newList.length, equals(vector.size + 1));
        expect(newList.first, equals(1));
        expect(newList.last, equals(1.5));
      });
    });
  }
}
