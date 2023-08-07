// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart' hide WinRTStringConversion;
import 'package:windows_foundation/internal.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('HSTRING handle to Dart String', () {
    final hString1 = HString.fromString('dartwinrt').clone();
    final dartString = hString1.handle.toDartString();
    expect(dartString, equals('dartwinrt'));
  });

  group('String', () {
    test('to HSTRING handle', () {
      final hStringHandle = 'dartwinrt'.toHString();
      expect(hStringHandle, isNonZero);
    });

    test('to IPropertyValue', () {
      final pv = 'Hello world!'.toPropertyValue();
      expect(pv.type, equals(PropertyType.string));
      expect(pv.getString(), equals('Hello world!'));
    });

    test('to IReference', () {
      final ireference = 'dartwinrt'.toReference();
      expect(ireference.value, equals('dartwinrt'));
    });
  });

  group('List<String>', () {
    test('to Pointer<HSTRING>', () {
      final list = ['dartwinrt', '', 'Hello world!'];
      final array = list.toArray();
      expect(array[0], isNonZero);
      expect(array[1], isZero);
      expect(array[2], isNonZero);
      free(array);
    });

    test('to IPropertyValue', () {
      final pv = ['dartwinrt', '', 'Hello world!'].toPropertyValue();
      expect(pv.type, equals(PropertyType.stringArray));
      final list = pv.getStringArray();
      expect(list.length, equals(3));
      expect(list, orderedEquals(['dartwinrt', '', 'Hello world!']));
    });

    test('to Pointer<Uint16>', () {
      final list = ['d', 'a', 'r', 't', '\x00', ' ', r'$'];
      final array = list.toUint16Array();
      expect(array[0], equals(100));
      expect(array[1], equals(97));
      expect(array[2], equals(114));
      expect(array[3], equals(116));
      expect(array[4], equals(0));
      expect(array[5], equals(32));
      expect(array[6], equals(36));
      free(array);
    });
  });

  group('Pointer<HSTRING>', () {
    test('to Dart String', () {
      final hString1 = HString.fromString('dartwinrt').clone();
      final ptr = calloc<HSTRING>()..value = hString1.handle;
      final dartString = ptr.toDartString();
      expect(dartString, equals('dartwinrt'));
      free(ptr);
    });

    test('to List<String>', () {
      final hString1 = HString.fromString('dartwinrt').clone();
      final hString2 = HString.fromString('Hello world!').clone();
      final array = calloc<HSTRING>(3)
        ..[0] = hString1.handle
        ..[1] = 0
        ..[2] = hString2.handle;
      final list = array.toList(length: 3);
      expect(list.length, equals(3));
      expect(list, orderedEquals(['dartwinrt', '', 'Hello world!']));
      free(array);
    });
  });

  test('Pointer<Uint16> to List<String>', () {
    final array = calloc<Uint16>(4)
      ..[0] = 'd'.codeUnitAt(0)
      ..[1] = '\x00'.codeUnitAt(0)
      ..[2] = ' '.codeUnitAt(0)
      ..[3] = r'$'.codeUnitAt(0);
    final list = array.toStringList(length: 4);
    expect(list.length, equals(4));
    expect(list, orderedEquals(['d', '\x00', ' ', r'$']));
    free(array);
  });
}
