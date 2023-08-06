// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('MemoryBuffer', () {
    test('create', () {
      final buffer = MemoryBuffer.create(10);
      expect(buffer.addRef(), equals(2));
      buffer.close();
    });

    test('createReference', () {
      final buffer = MemoryBuffer.create(10);
      final reference = buffer.createReference();
      expect(reference, isNotNull);
      expect(reference!.capacity, equals(10));
      reference.close();
      buffer.close();
    });
  });
}
