// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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
    IVector<String> getVector() {
      final picker = FileOpenPicker();
      return picker.fileTypeFilter!;
    }

    test('getAt fails if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.getAt(0), throwsException);
    });

    test('getAt throws exception if the index is out of bounds', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.getAt(2), throwsException);
    });

    test('getAt returns elements', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals('.jpg'));
      expect(vector.getAt(1), equals('.jpeg'));
    });

    test('getView', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('indexOf finds element', () {
      final pIndex = calloc<Uint32>();

      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      final containsElement = vector.indexOf('.jpeg', pIndex);
      expect(containsElement, isTrue);
      expect(pIndex.value, equals(1));

      free(pIndex);
    });

    test('indexOf returns false if the element is not found', () {
      final pIndex = calloc<Uint32>();

      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      final containsElement = vector.indexOf('.png', pIndex);
      expect(containsElement, isFalse);
      expect(pIndex.value, equals(0));

      free(pIndex);
    });

    test('setAt throws exception if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.setAt(0, '.jpg'), throwsException);
    });

    test('setAt throws exception if the index is out of bounds', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.setAt(3, '.png'), throwsException);
    });

    test('setAt', () {
      final vector = getVector()
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
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.insertAt(3, '.png'), throwsException);
    });

    test('insertAt', () {
      final vector = getVector()
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
      final vector = getVector();
      expect(() => vector.removeAt(0), throwsException);
    });

    test('removeAt throws exception if the index is out of bounds', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(() => vector.removeAt(3), throwsException);
    });

    test('removeAt', () {
      final vector = getVector()
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
      final vector = getVector();
      expect(vector.size, equals(0));
      vector.append('.jpg');
      expect(vector.size, equals(1));
      vector.append('.jpeg');
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws exception if the vector is empty', () {
      final vector = getVector();
      expect(vector.removeAtEnd, throwsException);
    });

    test('removeAtEnd', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg');
      expect(vector.size, equals(2));
      vector.clear();
      expect(vector.size, equals(0));
    });

    test('getMany returns 0 if the vector is empty', () {
      final vector = getVector();
      expect(vector.getMany(0, 1, []), equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final list = <String>[];

      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      expect(vector.getMany(0, 3, list), equals(3));
      expect(list.length, equals(3));
      expect(list[0], equals('.jpg'));
      expect(list[1], equals('.jpeg'));
      expect(list[2], equals('.png'));
    });

    test(
        'getMany returns all elements if valueSize is greater than the number '
        'of elements', () {
      final list = <String>[];

      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      expect(vector.getMany(0, 5, list), equals(3));
      expect(list.length, equals(3));
      expect(list[0], equals('.jpg'));
      expect(list[1], equals('.jpeg'));
      expect(list[2], equals('.png'));
    });

    test('getMany returns elements starting from index 1', () {
      final list = <String>[];

      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      expect(vector.getMany(1, 2, list), equals(2));
      expect(list.length, equals(2));
      expect(list[0], equals('.jpeg'));
      expect(list[1], equals('.png'));
    });

    test('replaceAll', () {
      final vector = getVector();
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
      final vector = getVector()
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
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      final iterator = vector.first();
      expect(iterator.hasCurrent, isTrue);
      var current = iterator.current;
      expect(current, equals('.jpg'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current, equals('.jpeg'));
      expect(iterator.moveNext(), isTrue);
      current = iterator.current;
      expect(current, equals('.png'));
      expect(iterator.moveNext(), isFalse);
    });

    test('operator []', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      expect(vector[0], equals('.jpg'));
      expect(vector[1], equals('.jpeg'));
      expect(vector[2], equals('.png'));
    });

    test('operator []=', () {
      final vector = getVector()
        ..append('.jpg')
        ..append('.jpeg')
        ..append('.png');
      vector[1] = '.gif';
      expect(vector.getAt(1), equals('.gif'));
    });

    test('operator +', () {
      final vector = getVector()..append('.jpg');
      final list = ['.jpeg', '.png'];
      final newList = vector + list;
      expect(newList.length, equals(3));
      expect(
          newList,
          orderedEquals([
            '.jpg',
            '.jpeg',
            '.png',
          ]));
    });
  });
}
