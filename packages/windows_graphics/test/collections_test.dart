// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IVector<int>', () {
    IVector<int> getVector() {
      final material = Printing3DMultiplePropertyMaterial();
      return material.materialIndices!;
    }

    test('getAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.getAt(0), throwsA(isA<WindowsException>()));
    });

    test('getAt throws a WindowsException if the index is out of bounds', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(() => vector.getAt(2), throwsA(isA<WindowsException>()));
    });

    test('getAt returns elements', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(5));
      expect(vector.getAt(1), equals(259));
    });

    test('getView', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('indexOf finds element', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      final (containsElement, :index) = vector.indexOf(259);
      expect(containsElement, isTrue);
      expect(index, equals(1));
    });

    test('indexOf returns 0 if the element is not found', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      final (containsElement, :index) = vector.indexOf(666);
      expect(containsElement, isFalse);
      expect(index, equals(0));
    });

    test('setAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.setAt(0, 5), throwsA(isA<WindowsException>()));
    });

    test('setAt throws a WindowsException if the index is out of bounds', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(() => vector.setAt(3, 666), throwsA(isA<WindowsException>()));
    });

    test('setAt', () {
      final vector = getVector()
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

    test('insertAt throws a WindowsException if the index is out of bounds',
        () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(() => vector.insertAt(3, 666), throwsA(isA<WindowsException>()));
    });

    test('insertAt', () {
      final vector = getVector()
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

    test('removeAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.removeAt(0), throwsA(isA<WindowsException>()));
    });

    test('removeAt throws a WindowsException if the index is out of bounds',
        () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(() => vector.removeAt(3), throwsA(isA<WindowsException>()));
    });

    test('removeAt', () {
      final vector = getVector()
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
      final vector = getVector();
      expect(vector.size, equals(0));
      vector.append(5);
      expect(vector.size, equals(1));
      vector.append(259);
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(vector.removeAtEnd, throwsA(isA<WindowsException>()));
    });

    test('removeAtEnd', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      final vector = getVector()
        ..append(5)
        ..append(259);
      expect(vector.size, equals(2));
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
        ..append(5)
        ..append(259)
        ..append(666);
      final (itemCount, :items) = vector.getMany(0, 3);
      expect(itemCount, equals(3));
      expect(items.length, equals(3));
      expect(items[0], equals(5));
      expect(items[1], equals(259));
      expect(items[2], equals(666));
    });

    test(
        'getMany returns all elements if valueSize is greater than the number '
        'of elements', () {
      final vector = getVector()
        ..append(5)
        ..append(259)
        ..append(666);
      final (itemCount, :items) = vector.getMany(0, 5);
      expect(itemCount, equals(3));
      expect(items.length, equals(3));
      expect(items[0], equals(5));
      expect(items[1], equals(259));
      expect(items[2], equals(666));
    });

    test('getMany returns elements starting from index 1', () {
      final vector = getVector()
        ..append(5)
        ..append(259)
        ..append(666);
      final (itemCount, :items) = vector.getMany(1, 2);
      expect(itemCount, equals(2));
      expect(items.length, equals(2));
      expect(items[0], equals(259));
      expect(items[1], equals(666));
    });

    test('replaceAll', () {
      final vector = getVector();
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
      final vector = getVector()
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
      final vector = getVector()
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

    test('operator []', () {
      final vector = getVector()
        ..append(5)
        ..append(259)
        ..append(666);
      expect(vector[0], equals(5));
      expect(vector[1], equals(259));
      expect(vector[2], equals(666));
    });

    test('operator []=', () {
      final vector = getVector()
        ..append(5)
        ..append(259)
        ..append(666);
      vector[1] = 11811;
      expect(vector.getAt(1), equals(11811));
    });

    test('operator +', () {
      final vector = getVector()..append(259);
      final list = [11811, 32367];
      final newList = vector + list;
      expect(newList.length, equals(3));
      expect(newList, orderedEquals([259, 11811, 32367]));
    });
  });

  tearDownAll(forceGC);
}
