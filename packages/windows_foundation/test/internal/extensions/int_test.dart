// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('List<int>', () {
    test('to IPropertyValue (Int16)', () {
      final pv = [-32768, 32767].toPropertyValue(IntType.int16);
      expect(pv.type, equals(PropertyType.int16Array));
      final list = pv.getInt16Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([-32768, 32767]));
    });

    test('to IPropertyValue (Int32)', () {
      final pv = [-2147483648, 2147483647].toPropertyValue(IntType.int32);
      expect(pv.type, equals(PropertyType.int32Array));
      final list = pv.getInt32Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([-2147483648, 2147483647]));
    });

    test('to IPropertyValue (Int64)', () {
      final pv = [-9223372036854775808, 9223372036854775807]
          .toPropertyValue(IntType.int64);
      expect(pv.type, equals(PropertyType.int64Array));
      final list = pv.getInt64Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([-9223372036854775808, 9223372036854775807]));
    });

    test('to IPropertyValue (Uint8)', () {
      final pv = [0, 255].toPropertyValue(IntType.uint8);
      expect(pv.type, equals(PropertyType.uint8Array));
      final list = pv.getUInt8Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([0, 255]));
    });

    test('to IPropertyValue (UInt16)', () {
      final pv = [0, 65535].toPropertyValue(IntType.uint16);
      expect(pv.type, equals(PropertyType.uint16Array));
      final list = pv.getUInt16Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([0, 65535]));
    });

    test('to IPropertyValue (UInt32)', () {
      final pv = [0, 4294967295].toPropertyValue(IntType.uint32);
      expect(pv.type, equals(PropertyType.uint32Array));
      final list = pv.getUInt32Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([0, 4294967295]));
    });

    test('to IPropertyValue (UInt64)', () {
      final pv = [0, 9223372036854775807].toPropertyValue(IntType.uint64);
      expect(pv.type, equals(PropertyType.uint64Array));
      final list = pv.getUInt64Array();
      expect(list.length, equals(2));
      expect(list, orderedEquals([0, 9223372036854775807]));
    });
  });

  tearDownAll(forceGC);
}
