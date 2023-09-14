// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('double', () {
    test('to IPropertyValue', () {
      final value = 3.14159;
      final pv = value.toPropertyValue(DoubleType.double);
      expect(pv.type, equals(PropertyType.double_));
      expect(pv.getDouble(), equals(value));
    });

    test('to IReference', () {
      final value = 3.14159;
      final reference = value.toReference(DoubleType.double);
      expect(reference.value, equals(value));
    });
  });

  group('List<double>', () {
    test('to Pointer<Double>', () {
      final list = [1.0, 2.5];
      final array = list.toArray<Double>();
      expect(array.elementAt(0).value, equals(1.0));
      expect(array.elementAt(1).value, equals(2.5));
      free(array);
    });

    test('to IPropertyValue (Double)', () {
      final pv = [1.0, 2.5].toPropertyValue(DoubleType.double);
      expect(pv.type, equals(PropertyType.doubleArray));
      final list = pv.getDoubleArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([1.0, 2.5]));
    });

    test('to IPropertyValue (Float)', () {
      final pv = [1.0, 2.5].toPropertyValue(DoubleType.float);
      expect(pv.type, equals(PropertyType.singleArray));
      final list = pv.getSingleArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([1.0, 2.5]));
    });
  });

  test('Pointer<Double> to Float64List', () {
    final array = calloc<Double>(2)
      ..[0] = 1.0
      ..[1] = 2.5;
    final list = array.toList(length: 2);
    expect(list.length, equals(2));
    expect(list, orderedEquals([1.0, 2.5]));
    free(array);
  });

  test('Pointer<Float> to Float32List', () {
    final array = calloc<Float>(2)
      ..[0] = 1.0
      ..[1] = 2.5;
    final list = array.toList(length: 2);
    expect(list.length, equals(2));
    expect(list, orderedEquals([1.0, 2.5]));
    free(array);
  });

  tearDownAll(forceGC);
}
