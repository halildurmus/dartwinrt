// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('toDartString', () {
    final hString = convertToHString('Hello, world!');
    expect(hString.toDartString(), 'Hello, world!');

    WindowsDeleteString(hString);
  });

  test('toHString', () {
    final hString = 'Hello, world!'.toHString();
    expect(convertFromHString(hString), 'Hello, world!');

    WindowsDeleteString(hString);
  });
}
