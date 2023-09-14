// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  final dartDuration1 =
      const Duration(days: 28, hours: 12, minutes: 12, seconds: 12);
  final dartDuration2 =
      const Duration(days: 31, hours: 23, minutes: 59, seconds: 59);
  const winrtDuration1 =
      24631320000000; // 28 days, 12 hours, 12 minutes, 12 seconds
  const winrtDuration2 =
      27647990000000; // 31 days, 23 hours, 59 minutes, 59 seconds

  test('WinRT Duration to Dart Duration', () {
    final duration = winrtDuration1.toDartDuration();
    expect(duration,
        equals(const Duration(days: 28, hours: 12, minutes: 12, seconds: 12)));
  });

  group('Duration', () {
    test('to IPropertyValue', () {
      final pv = dartDuration1.toPropertyValue();
      expect(pv.type, equals(PropertyType.timeSpan));
      expect(pv.getTimeSpan(), equals(dartDuration1));
    });

    test('toReference', () {
      final ireference = dartDuration1.toReference();
      expect(ireference.value, equals(dartDuration1));
    });

    test('toWinRTDuration', () {
      expect(dartDuration1.toWinRTDuration(), equals(24631320000000));
    });
  });

  group('List<Duration>', () {
    test('to Pointer<Int64>', () {
      final array = [dartDuration1, dartDuration2].toArray();
      expect(array.elementAt(0).value, equals(24631320000000));
      expect(array.elementAt(1).value, equals(27647990000000));
      free(array);
    });

    test('to IPropertyValue', () {
      final pv = [dartDuration1, dartDuration2].toPropertyValue();
      expect(pv.type, equals(PropertyType.timeSpanArray));
      final list = pv.getTimeSpanArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([dartDuration1, dartDuration2]));
    });
  });

  group('Pointer<Int64>', () {
    test('toDartDuration', () {
      final ptr = calloc<Int64>()..value = winrtDuration1;
      expect(ptr.toDartDuration(), equals(dartDuration1));
      free(ptr);
    });

    test('to List<Duration>', () {
      final array = calloc<Int64>(2)
        ..[0] = winrtDuration1
        ..[1] = winrtDuration2;
      final list = array.toDurationList(length: 2);
      expect(list, orderedEquals([dartDuration1, dartDuration2]));
      free(array);
    });
  });

  tearDownAll(forceGC);
}
