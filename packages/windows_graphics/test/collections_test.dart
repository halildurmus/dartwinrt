// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IVector<int>', () {
    late Printing3DMultiplePropertyMaterial material;
    late IVector<int> vector;
    late Arena allocator;

    setUp(() {
      allocator = Arena();
      material = Printing3DMultiplePropertyMaterial();
      vector = material.materialIndices;
    });

    test('getAt fails if the vector is empty', () {
      expect(() => vector.getAt(0), throwsException);
    });

    test('getAt throws exception if the index is out of bounds', () {
      vector
        ..append(5)
        ..append(259);
      expect(() => vector.getAt(2), throwsException);
    });

    test('getAt returns elements', () {
      vector
        ..append(5)
        ..append(259);
      expect(vector.getAt(0), equals(5));
      expect(vector.getAt(1), equals(259));
    });

    test('getView', () {
      vector
        ..append(5)
        ..append(259);
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('indexOf finds element', () {
      final pIndex = allocator<Uint32>();

      vector
        ..append(5)
        ..append(259);
      final containsElement = vector.indexOf(259, pIndex);
      expect(containsElement, isTrue);
      expect(pIndex.value, equals(1));
    });

    test('indexOf returns 0 if the element is not found', () {
      final pIndex = allocator<Uint32>();

      vector
        ..append(5)
        ..append(259);
      final containsElement = vector.indexOf(666, pIndex);
      expect(containsElement, isFalse);
      expect(pIndex.value, equals(0));
    });

    test('setAt throws exception if the vector is empty', () {
      expect(() => vector.setAt(0, 5), throwsException);
    });

    test('setAt throws exception if the index is out of bounds', () {
      vector
        ..append(5)
        ..append(259);
      expect(() => vector.setAt(3, 666), throwsException);
    });

    test('setAt', () {
      vector
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
      vector.setAt(0, 666);
      expect(vector.size, equals(2));
      vector.setAt(1, 4294967295); // 2 ^ 32 - 1
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(666));
      expect(vector.getAt(1), equals(4294967295));
    });

    test('insertAt throws exception if the index is out of bounds', () {
      vector
        ..append(5)
        ..append(259);
      expect(() => vector.insertAt(3, 666), throwsException);
    });

    test('insertAt', () {
      vector
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
      vector.insertAt(0, 666);
      expect(vector.size, equals(3));
      vector.insertAt(2, 4294967295);
      expect(vector.size, equals(4));
      expect(vector.getAt(0), equals(666));
      expect(vector.getAt(1), equals(5));
      expect(vector.getAt(2), equals(4294967295));
      expect(vector.getAt(3), equals(259));
    });

    test('removeAt throws exception if the vector is empty', () {
      expect(() => vector.removeAt(0), throwsException);
    });

    test('removeAt throws exception if the index is out of bounds', () {
      vector
        ..append(5)
        ..append(259);
      expect(() => vector.removeAt(3), throwsException);
    });

    test('removeAt', () {
      vector
        ..append(5)
        ..append(259)
        ..append(666)
        ..append(4294967295);
      expect(vector.size, equals(4));
      vector.removeAt(2);
      expect(vector.size, equals(3));
      expect(vector.getAt(2), equals(4294967295));
      vector.removeAt(0);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(259));
      vector.removeAt(1);
      expect(vector.size, equals(1));
      expect(vector.getAt(0), equals(259));
      vector.removeAt(0);
      expect(vector.size, equals(0));
    });

    test('append', () {
      expect(vector.size, equals(0));
      vector.append(5);
      expect(vector.size, equals(1));
      vector.append(259);
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws exception if the vector is empty', () {
      expect(() => vector.removeAtEnd(), throwsException);
    });

    test('removeAtEnd', () {
      vector
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      vector
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
      vector.clear();
      expect(vector.size, equals(0));
    });

    test('getMany returns 0 if the vector is empty', () {
      final pUint32 = allocator<Uint32>();

      expect(vector.getMany(0, 1, pUint32), equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final pUint32 = allocator<Uint32>(3);

      vector
        ..append(5)
        ..append(259)
        ..append(666);
      expect(vector.getMany(0, 3, pUint32), equals(3));
      final list = pUint32.asTypedList(vector.size);
      expect(list.length, equals(3));
      expect(list.elementAt(0), equals(5));
      expect(list.elementAt(1), equals(259));
      expect(list.elementAt(2), equals(666));
    });

    test('getMany returns elements starting from index 1', () {
      final pUint32 = allocator<Uint32>(2);

      vector
        ..append(5)
        ..append(259)
        ..append(666);
      expect(vector.getMany(1, 2, pUint32), equals(2));
      final list = pUint32.asTypedList(2);
      expect(list.length, equals(2));
      expect(list.elementAt(0), equals(259));
      expect(list.elementAt(1), equals(666));
    });

    test('replaceAll', () {
      expect(vector.size, equals(0));
      vector.replaceAll([5, 259]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(5));
      expect(vector.getAt(1), equals(259));
      vector.replaceAll([666, 4294967295]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(666));
      expect(vector.getAt(1), equals(4294967295));
    });

    test('toList', () {
      vector
        ..append(5)
        ..append(259)
        ..append(666);
      final list = vector.toList();
      expect(list.length, equals(3));
      expect(list.elementAt(0), equals(5));
      expect(list.elementAt(1), equals(259));
      expect(list.elementAt(2), equals(666));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      vector
        ..append(5)
        ..append(259)
        ..append(666);
      final iterator = vector.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current, equals(5));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals(259));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals(666));
      expect(iterator.moveNext(), isFalse);
    });

    tearDown(() {
      vector.release();
      material.release();
      allocator.releaseAll(reuse: true);
    });
  });
}
