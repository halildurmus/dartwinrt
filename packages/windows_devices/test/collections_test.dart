// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
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
    late DevicePicker picker;
    late DevicePickerFilter pickerFilter;
    late IVector<DeviceClass> vector;
    late Arena allocator;

    setUp(() {
      allocator = Arena();
      picker = DevicePicker();
      pickerFilter = picker.filter;
      vector = pickerFilter.supportedDeviceClasses;
    });

    test('getAt fails if the vector is empty', () {
      expect(() => vector.getAt(0), throwsException);
    });

    test('getAt throws exception if the index is out of bounds', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.getAt(2), throwsException);
    });

    test('getAt returns elements', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.getAt(0), equals(DeviceClass.audioCapture));
      expect(vector.getAt(1), equals(DeviceClass.audioRender));
    });

    test('getView', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      final list = vector.getView();
      expect(list.length, equals(2));
      expect(() => list..clear(), throwsUnsupportedError);
    });

    test('indexOf finds element', () {
      final pIndex = allocator<Uint32>();

      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      final containsElement = vector.indexOf(DeviceClass.audioRender, pIndex);
      expect(containsElement, isTrue);
      expect(pIndex.value, equals(1));
    });

    test('indexOf returns 0 if the element is not found', () {
      final pIndex = allocator<Uint32>();

      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      final containsElement = vector.indexOf(DeviceClass.imageScanner, pIndex);
      expect(containsElement, isFalse);
      expect(pIndex.value, equals(0));
    });

    test('setAt throws exception if the vector is empty', () {
      expect(() => vector.setAt(0, DeviceClass.audioCapture), throwsException);
    });

    test('setAt throws exception if the index is out of bounds', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.setAt(3, DeviceClass.imageScanner), throwsException);
    });

    test('setAt', () {
      vector
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

    test('insertAt throws exception if the index is out of bounds', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(
          () => vector.insertAt(3, DeviceClass.imageScanner), throwsException);
    });

    test('insertAt', () {
      vector
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

    test('removeAt throws exception if the vector is empty', () {
      expect(() => vector.removeAt(0), throwsException);
    });

    test('removeAt throws exception if the index is out of bounds', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(() => vector.removeAt(3), throwsException);
    });

    test('removeAt', () {
      vector
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
      expect(vector.size, equals(0));
      vector.append(DeviceClass.audioCapture);
      expect(vector.size, equals(1));
      vector.append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
    });

    test('removeAtEnd throws exception if the vector is empty', () {
      expect(() => vector.removeAtEnd(), throwsException);
    });

    test('removeAtEnd', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
      vector.removeAtEnd();
      expect(vector.size, equals(1));
    });

    test('clear', () {
      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender);
      expect(vector.size, equals(2));
      vector.clear();
      expect(vector.size, equals(0));
    });

    test('getMany returns 0 if the vector is empty', () {
      final pInt32 = allocator<Int32>();

      expect(vector.getMany(0, 1, pInt32), equals(0));
    });

    test('getMany returns elements starting from index 0', () {
      final pInt32 = allocator<Int32>(3);

      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      expect(vector.getMany(0, 3, pInt32), equals(3));
      final list = pInt32.asTypedList(3);
      expect(list.length, equals(3));
      expect(list.elementAt(0), equals(DeviceClass.audioCapture.value));
      expect(list.elementAt(1), equals(DeviceClass.audioRender.value));
      expect(list.elementAt(2), equals(DeviceClass.imageScanner.value));
    });

    test('getMany returns elements starting from index 1', () {
      final pInt32 = allocator<Int32>(2);

      vector
        ..append(DeviceClass.audioCapture)
        ..append(DeviceClass.audioRender)
        ..append(DeviceClass.imageScanner);
      expect(vector.getMany(1, 2, pInt32), equals(2));
      final list = pInt32.asTypedList(2);
      expect(list.length, equals(2));
      expect(list.elementAt(0), equals(DeviceClass.audioRender.value));
      expect(list.elementAt(1), equals(DeviceClass.imageScanner.value));
    });

    test('replaceAll', () {
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
      vector
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
      vector
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

    tearDown(() {
      vector.release();
      pickerFilter.release();
      picker.release();
      allocator.releaseAll(reuse: true);
    });
  });
}
