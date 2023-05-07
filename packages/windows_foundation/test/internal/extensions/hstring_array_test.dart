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

  test('HSTRING array to List<String>', () {
    final hString1 = 'Hello'.toHString();
    final hString2 = 'World'.toHString();
    final ptr = calloc<HSTRING>(2);
    ptr[0] = hString1;
    ptr[1] = hString2;

    expect(ptr.toList(length: 2), orderedEquals(['Hello', 'World']));

    free(ptr);
  });
}
