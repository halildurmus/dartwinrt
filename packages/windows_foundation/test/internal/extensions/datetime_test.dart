// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final dartDateTime1 = DateTime.utc(2023, 8, 28, 12, 12, 12);
  final dartDateTime2 = DateTime.utc(1999, 12, 31, 23, 59, 59);
  const winrtDateTime1 = 133376983320000000; // 2023-08-28 12:12:12
  const winrtDateTime2 = 125911583990000000; // 1999-12-31 23:59:59

  test('WinRT DateTime to Dart DateTime', () {
    final dateTime = winrtDateTime1.toDartDateTime();
    expect(dateTime.year, equals(2023));
    expect(dateTime.month, equals(8));
    expect(dateTime.day, equals(28));
    expect(dateTime.hour, equals(12));
    expect(dateTime.minute, equals(12));
    expect(dateTime.second, equals(12));
  });

  group('DateTime', () {
    test('to IPropertyValue', () {
      final pv = dartDateTime1.toPropertyValue();
      expect(pv.type, equals(PropertyType.dateTime));
      expect(pv.getDateTime(), equals(dartDateTime1));
    });

    test('to IReference', () {
      final ireference = dartDateTime1.toReference();
      expect(ireference.value, equals(dartDateTime1));
    });

    test('toWinRTDateTime', () {
      expect(dartDateTime1.toWinRTDateTime(), equals(133376983320000000));
    });
  });

  group('List<DateTime>', () {
    test('to Pointer<Int64>', () {
      final array = [dartDateTime1, dartDateTime2].toArray();
      expect(array.elementAt(0).value, equals(133376983320000000));
      expect(array.elementAt(1).value, equals(125911583990000000));
      free(array);
    });

    test('to IPropertyValue', () {
      final pv = [dartDateTime1, dartDateTime2].toPropertyValue();
      expect(pv.type, equals(PropertyType.dateTimeArray));
      final list = pv.getDateTimeArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([dartDateTime1, dartDateTime2]));
    });
  });

  group('Pointer<Int64>', () {
    test('toDartDateTime', () {
      final ptr = calloc<Int64>()..value = winrtDateTime1;
      expect(ptr.toDartDateTime(), equals(dartDateTime1));
      free(ptr);
    });

    test('to List<DateTime>', () {
      final array = calloc<Int64>(2)
        ..[0] = winrtDateTime1
        ..[1] = winrtDateTime2;
      final list = array.toDateTimeList(length: 2);
      expect(list, orderedEquals([dartDateTime1, dartDateTime2]));
      free(array);
    });
  });

  tearDownAll(forceGC);
}
