// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('InitializeWithWindow', () {
    test('initialize (1)', () {
      final picker = FileOpenPicker();
      expect(() => InitializeWithWindow.initialize(picker), returnsNormally);
    });

    test('initialize (2)', () {
      final picker = FileOpenPicker();
      expect(() => InitializeWithWindow.initialize(picker, getWindowHandle()),
          returnsNormally);
    });
  });
}
