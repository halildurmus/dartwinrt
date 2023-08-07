// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('IVector<DeviceClass>', () {
    IVector<DeviceClass> getVector() {
      final picker = DevicePicker();
      final pickerFilter = picker.filter!;
      return pickerFilter.supportedDeviceClasses!;
    }

    test('getAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.getAt(0), throwsA(isA<WindowsException>()));
    });

    test('getAt throws a WindowsException if the index is out of bounds', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.getAt(2), throwsA(isA<WindowsException>()));
    });

    test('getAt returns elements', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(DeviceClass.audioCapture));
      expect(vector.getAt(1), equals(DeviceClass.audioRender));
    });

    test('getView', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('indexOf finds element', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      final (containsElement, :index) = vector.indexOf(DeviceClass.audioRender);
      expect(containsElement, isTrue);
      expect(index, equals(1));
    });

    test('indexOf returns 0 if the element is not found', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      final (containsElement, :index) =
          vector.indexOf(DeviceClass.imageScanner);
      expect(containsElement, isFalse);
      expect(index, equals(0));
    });

    test('setAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.setAt(0, DeviceClass.audioCapture),
          throwsA(isA<WindowsException>()));
    });

    test('setAt throws a WindowsException if the index is out of bounds', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.setAt(3, DeviceClass.imageScanner),
          throwsA(isA<WindowsException>()));
    });

    test('setAt', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
      vector.setAt(0, DeviceClass.imageScanner);
      expect(vector.size, equals(2));
      vector.setAt(1, DeviceClass.location);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(DeviceClass.imageScanner));
      expect(vector.getAt(1), equals(DeviceClass.location));
    });

    test('insertAt throws a WindowsException if the index is out of bounds',
        () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.insertAt(3, DeviceClass.imageScanner),
          throwsA(isA<WindowsException>()));
    });

    test('insertAt', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
      vector.insertAt(0, DeviceClass.imageScanner);
      expect(vector.size, equals(3));
      vector.insertAt(2, DeviceClass.location);
      expect(vector.size, equals(4));
      expect(vector.getAt(0), equals(DeviceClass.imageScanner));
      expect(vector.getAt(1), equals(DeviceClass.audioCapture));
      expect(vector.getAt(2), equals(DeviceClass.location));
      expect(vector.getAt(3), equals(DeviceClass.audioRender));
    });

    test('removeAt throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(() => vector.removeAt(0), throwsA(isA<WindowsException>()));
    });

    test('removeAt throws a WindowsException if the index is out of bounds',
        () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.removeAt(3), throwsA(isA<WindowsException>()));
    });

    test('removeAt', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner)
        ..append(DeviceClass.location);
      expect(vector.size, equals(4));
      vector.removeAt(2);
      expect(vector.size, equals(3));
      expect(vector.getAt(2), equals(DeviceClass.location));
      vector.removeAt(0);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(DeviceClass.audioRender));
      vector.removeAt(1);
      expect(vector.size, equals(1));
      expect(vector.getAt(0), equals(DeviceClass.audioRender));
      vector.removeAt(0);
      expect(vector.size, equals(0));
    });

    test('append', () {
      final vector = getVector();
      expect(vector.size, equals(0));
      vector.append(DeviceClass.audioCapture);
      expect(vector.size, equals(1));
      vector.append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws a WindowsException if the vector is empty', () {
      final vector = getVector();
      expect(vector.removeAtEnd, throwsA(isA<WindowsException>()));
    });

    test('removeAtEnd', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
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
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      final (itemCount, :items) = vector.getMany(0, 3);
      expect(itemCount, equals(3));
      expect(items.length, equals(3));
      expect(items[0], equals(DeviceClass.audioCapture));
      expect(items[1], equals(DeviceClass.audioRender));
      expect(items[2], equals(DeviceClass.imageScanner));
    });

    test(
        'getMany returns all elements if valueSize is greater than the number '
        'of elements', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      final (itemCount, :items) = vector.getMany(0, 5);
      expect(itemCount, equals(3));
      expect(items.length, equals(3));
      expect(items[0], equals(DeviceClass.audioCapture));
      expect(items[1], equals(DeviceClass.audioRender));
      expect(items[2], equals(DeviceClass.imageScanner));
    });

    test('getMany returns elements starting from index 1', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      final (itemCount, :items) = vector.getMany(1, 2);
      expect(itemCount, equals(2));
      expect(items.length, equals(2));
      expect(items[0], equals(DeviceClass.audioRender));
      expect(items[1], equals(DeviceClass.imageScanner));
    });

    test('replaceAll', () {
      final vector = getVector();
      expect(vector.size, equals(0));
      vector.replaceAll([DeviceClass.audioCapture, DeviceClass.audioRender]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(DeviceClass.audioCapture));
      expect(vector.getAt(1), equals(DeviceClass.audioRender));
      vector.replaceAll([DeviceClass.imageScanner, DeviceClass.location]);
      expect(vector.size, equals(2));
      expect(vector.getAt(0), equals(DeviceClass.imageScanner));
      expect(vector.getAt(1), equals(DeviceClass.location));
    });

    test('toList', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      final list = vector.toList();
      expect(list.length, equals(3));
      expect(list.elementAt(0), equals(DeviceClass.audioCapture));
      expect(list.elementAt(1), equals(DeviceClass.audioRender));
      expect(list.elementAt(2), equals(DeviceClass.imageScanner));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('first', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      final iterator = vector.first();
      expect(iterator.hasCurrent, isTrue);
      expect(iterator.current, equals(DeviceClass.audioCapture));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals(DeviceClass.audioRender));
      expect(iterator.moveNext(), isTrue);
      expect(iterator.current, equals(DeviceClass.imageScanner));
      expect(iterator.moveNext(), isFalse);
    });

    test('operator []', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      expect(vector[0], equals(DeviceClass.audioCapture));
      expect(vector[1], equals(DeviceClass.audioRender));
      expect(vector[2], equals(DeviceClass.imageScanner));
    });

    test('operator []=', () {
      final vector = getVector()
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      vector[1] = DeviceClass.location;
      expect(vector.getAt(1), equals(DeviceClass.location));
    });

    test('operator +', () {
      final vector = getVector()..append(DeviceClass.audioCapture);
      final list = [DeviceClass.audioRender, DeviceClass.imageScanner];
      final newList = vector + list;
      expect(newList.length, equals(3));
      expect(
          newList,
          orderedEquals([
            DeviceClass.audioCapture,
            DeviceClass.audioRender,
            DeviceClass.imageScanner
          ]));
    });
  });
}
