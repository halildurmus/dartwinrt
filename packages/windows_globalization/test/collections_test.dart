// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_globalization/windows_globalization.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    group('IVectorView<String>', () {
      late Arena allocator;
      late IVectorView<String> vectorView;

      IVectorView<String> getLanguages(Pointer<COMObject> ptr) {
        final retValuePtr = calloc<COMObject>();

        final hr = ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Pointer<COMObject>)>>>()
                .value
                .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        return IVectorView.fromRawPointer(retValuePtr,
            iterableIid: IID_IIterable_String);
      }

      setUp(() {
        allocator = Arena();
        final calendar = Calendar();
        vectorView = getLanguages(calendar.ptr);
      });

      test('getAt throws exception if the index is out of bounds', () {
        expect(() => vectorView.getAt(20), throwsException);
      });

      test('getAt returns elements', () {
        final element = vectorView.getAt(0);
        // Should be something like en-US
        expect(element[2], equals('-'));
        expect(element.length, equals(5));
      });

      test('indexOf returns 0 if the element is not found', () {
        final pIndex = allocator<Uint32>();
        final containsElement = vectorView.indexOf('xx-xx', pIndex);
        expect(containsElement, isFalse);
        expect(pIndex.value, equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pHString = allocator<HSTRING>(vectorView.size);

        expect(vectorView.getMany(0, vectorView.size, pHString),
            greaterThanOrEqualTo(1));
        // Should be something like en-US
        expect(convertFromHString(pHString[0])[2], equals('-'));
        expect(convertFromHString(pHString[0]).length, equals(5));
      });

      test('toList', () {
        final list = vectorView.toList();
        expect(list.length, greaterThanOrEqualTo(1));
        // Should be something like en-US
        expect(list.first[2], equals('-'));
        expect(list.first.length, equals(5));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('first', () {
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

      tearDown(() {
        allocator.releaseAll(reuse: true);
      });
    });
  }
}
