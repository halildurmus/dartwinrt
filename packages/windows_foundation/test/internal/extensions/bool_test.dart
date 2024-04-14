// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

  group('bool', () {
    test('to IPropertyValue', () {
      final pv = true.toPropertyValue();
      expect(pv.type, equals(PropertyType.boolean));
      expect(pv.getBoolean(), isTrue);
    });

    test('to IReference', () {
      final ireference = true.toReference();
      expect(ireference.value, isTrue);
    });
  });

  group('List<bool>', () {
    test('to Pointer<Bool>', () {
      final list = [true, false];
      final array = list.toArray();
      expect(array.elementAt(0).value, isTrue);
      expect(array.elementAt(1).value, isFalse);
      free(array);
    });

    test('to IPropertyValue', () {
      final pv = [true, false].toPropertyValue();
      expect(pv.type, equals(PropertyType.booleanArray));
      final list = pv.getBooleanArray();
      expect(list.length, equals(2));
      expect(list, orderedEquals([true, false]));
    });
  });

  test('Pointer<Bool> to List<bool>', () {
    final array = calloc<Bool>(2)
      ..[0] = true
      ..[1] = false;
    final list = array.toList(length: 2);
    expect(list, orderedEquals([true, false]));
    free(array);
  });

  tearDownAll(forceGC);
}
