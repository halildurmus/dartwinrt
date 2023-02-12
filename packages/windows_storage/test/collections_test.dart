// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IVector<String>', () {
    late FileOpenPicker picker;
    late IVector<String> vector;
    late Arena allocator;

    setUp(() {
      allocator = Arena();
      picker = FileOpenPicker();
      vector = picker.fileTypeFilter;
    });

    test('getAt fails if the vector is empty', () {
      expect(() => vector.getAt(0), throwsException);
    });

    test('getAt throws exception if the index is out of bounds', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.getAt(2), throwsException);
    });

    test('getAt returns elements', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.getAt(0), equals('.jpg'));
      expect(vector.getAt(1), equals('.jpeg'));
    });

    test('getView', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('indexOf finds element', () {
      final pIndex = allocator<Uint32>();

      vector
        ..append('.jpg')
        ..append('.jpeg');
      final containsElement = vector.indexOf('.jpeg', pIndex);
      expect(containsElement, isTrue);
      expect(pIndex.value, equals(1));
    });

    test('indexOf returns 0 if the element is not found', () {
      final pIndex = allocator<Uint32>();

      vector
        ..append('.jpg')
        ..append('.jpeg');
      final containsElement = vector.indexOf('.png', pIndex);
      expect(containsElement, isFalse);
      expect(pIndex.value, equals(0));
    });

    test('setAt throws exception if the vector is empty', () {
      expect(() => vector.setAt(0, '.jpg'), throwsException);
    });

    test('setAt throws exception if the index is out of bounds', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.setAt(3, '.png'), throwsException);
    });

    test('setAt', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      vector.setAt(0, '.png');
      expect(vector.size, equals(2));
      vector.setAt(1, '.gif');
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals('.png'));
      expect(vector.getAt(1), equals('.gif'));
    });

    test('insertAt throws exception if the index is out of bounds', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.insertAt(3, '.png'), throwsException);
    });

    test('insertAt', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      vector.insertAt(0, '.png');
      expect(vector.size, equals(3));
      vector.insertAt(2, '.gif');
      expect(vector.size, equals(4));
      expect(vector.getAt(0), equals('.png'));
      expect(vector.getAt(1), equals('.jpg'));
      expect(vector.getAt(2), equals('.gif'));
      expect(vector.getAt(3), equals('.jpeg'));
    });

    test('removeAt throws exception if the vector is empty', () {
      expect(() => vector.removeAt(0), throwsException);
    });

    test('removeAt throws exception if the index is out of bounds', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.removeAt(3), throwsException);
    });

    test('removeAt', () {
      vector
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png')
        ..append('.gif');
      expect(vector.size, equals(4));
      vector.removeAt(2);
      expect(vector.size, equals(3));
      expect(vector.getAt(2), equals('.gif'));
      vector.removeAt(0);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals('.jpeg'));
      vector.removeAt(1);
      expect(vector.size, equals(1));
      expect(vector.getAt(0), equals('.jpeg'));
      vector.removeAt(0);
      expect(vector.size, equals(0));
    });

    test('append', () {
      expect(vector.size, equals(0));
      vector.append('.jpg');
      expect(vector.size, equals(1));
      vector.append('.jpeg');
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws exception if the vector is empty', () {
      expect(() => vector.removeAtEnd(), throwsException);
    });

    test('removeAtEnd', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      vector
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      vector.clear();
      expect(vector.size, equals(0));
    });

    test('getMany returns 0 if the vector is empty', () {
      final pHString = allocator<HSTRING>();

      expect(vector.getMany(0, 1, pHString), equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final pHString = allocator<HSTRING>(3);

      vector
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      expect(vector.getMany(0, 3, pHString), equals(3));
      expect(convertFromHString(pHString[0]), equals('.jpg'));
      expect(convertFromHString(pHString[1]), equals('.jpeg'));
      expect(convertFromHString(pHString[2]), equals('.png'));
    });

    test('getMany returns elements starting from index 1', () {
      final pHString = allocator<HSTRING>(2);

      vector
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      expect(vector.getMany(1, 2, pHString), equals(2));
      expect(convertFromHString(pHString[0]), equals('.jpeg'));
      expect(convertFromHString(pHString[1]), equals('.png'));
    });

    test('replaceAll', () {
      expect(vector.size, equals(0));
      vector.replaceAll(['.jpg', '.jpeg']);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals('.jpg'));
      expect(vector.getAt(1), equals('.jpeg'));
      vector.replaceAll(['.png', '.gif']);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals('.png'));
      expect(vector.getAt(1), equals('.gif'));
    });

    test('toList', () {
      vector
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      final list = vector.toList();
      expect(list.length, equals(3));
      expect(list.elementAt(0), equals('.jpg'));
      expect(list.elementAt(1), equals('.jpeg'));
      expect(list.elementAt(2), equals('.png'));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      vector
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      final iterator = vector.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current, equals('.jpg'));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals('.jpeg'));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals('.png'));
      expect(iterator.moveNext(), isFalse);
    });

    tearDown(() {
      picker.release();
      vector.release();
      allocator.releaseAll(reuse: true);
    });
  });
}
