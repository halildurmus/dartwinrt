// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

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

  const testRuns = 100;

  test('HSTRING -> String', () {
    const testString = 'Hello world!';
    for (var i = 0; i < testRuns; i++) {
      final hString = HString.fromString(testString)..detach();
      final dartString = hString.handle.toDartString();
      expect(dartString, equals(testString));
    }
  });

  test('String -> HSTRING', () {
    const testString = 'Hello world!';
    for (var i = 0; i < testRuns; i++) {
      final hStringHandle = testString.toHString();
      final hString = HString.fromHandle(hStringHandle)..detach();
      expect(hString.toString(), equals(testString));
    }
  });

  test('Pointer<HSTRING> -> List<String>', () {
    const testString1 = 'Hello world!';
    const testString2 = 'Goodbye world!';
    for (var i = 0; i < testRuns; i++) {
      final hString1 = HString.fromString(testString1)..detach();
      final hString2 = HString.fromString(testString2)..detach();
      final pHStringArray = calloc<HSTRING>(2)
        ..[0] = hString1.handle
        ..[1] = hString2.handle;
      final dartList = pHStringArray.toList(length: 2);
      expect(dartList.length, equals(2));
      expect(dartList, orderedEquals([testString1, testString2]));
      free(pHStringArray);
    }
  });
}
