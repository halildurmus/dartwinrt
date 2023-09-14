// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart' show isWindowsRuntimeAvailable;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('GuidHelper', () {
    test('createNewGuid', () {
      final guid = GuidHelper.createNewGuid();
      final guidAsString = guid.toString();
      expect(guidAsString.length, equals(38));
      expect(guidAsString, startsWith('{'));
      expect(guidAsString, endsWith('}'));
    });

    test('empty', () {
      final guid = GuidHelper.empty;
      expect(guid.toString(), equals('{00000000-0000-0000-0000-000000000000}'));
    });

    test('equals', () {
      final emptyGuid = GuidHelper.empty;
      expect(GuidHelper.equals(emptyGuid, emptyGuid), isTrue);
      expect(GuidHelper.equals(GuidHelper.createNewGuid(), emptyGuid), isFalse);
    });
  });

  tearDownAll(forceGC);
}
