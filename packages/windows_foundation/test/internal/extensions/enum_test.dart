// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_storage/windows_storage.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('List<WinRTEnum> to Pointer<Int32>', () {
    final array = [PropertyType.boolean, PropertyType.string].toArray();
    expect(array.elementAt(0).value, equals(11));
    expect(array.elementAt(1).value, equals(12));
    free(array);
  });

  test('List<WinRTFlagsEnum> to Pointer<Uint32>', () {
    final array = [FileAttributes.normal, FileAttributes.directory].toArray();
    expect(array.elementAt(0).value, equals(0));
    expect(array.elementAt(1).value, equals(16));
    free(array);
  });

  test('Pointer<Int32> to List<WinRTEnum>', () {
    final array = calloc<Int32>(2)
      ..[0] = 11
      ..[1] = 12;
    final list = array.toEnumList(PropertyType.from, length: 2);
    expect(list.length, equals(2));
    expect(list, orderedEquals([PropertyType.boolean, PropertyType.string]));
    free(array);
  });

  test('Pointer<Uint32> to List<WinRTFlagsEnum>', () {
    final array = calloc<Uint32>(2)
      ..[0] = 0
      ..[1] = 16;
    final list = array.toEnumList(FileAttributes.from, length: 2);
    expect(list.length, equals(2));
    expect(
        list, orderedEquals([FileAttributes.normal, FileAttributes.directory]));
    free(array);
  });
}
