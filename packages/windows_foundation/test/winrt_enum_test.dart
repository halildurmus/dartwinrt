// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

void main() {
  test('WinRTEnum', () {
    expect(AsyncStatus.from(1), equals(AsyncStatus.completed));
    expect(AsyncStatus.completed.toString(), equals('AsyncStatus.completed'));
  });

  group('List<WinRTEnum> byValue', () {
    test('finds enum values', () {
      expect(AsyncStatus.values.byValue(0), equals(AsyncStatus.started));
      expect(AsyncStatus.values.byValue(3), equals(AsyncStatus.error));
    });

    test('throws an ArgumentError for invalid values', () {
      expect(() => AsyncStatus.values.byValue(4), throwsArgumentError);
    });
  });

  group('WinRTFlagsEnum', () {
    test('hasFlag', () {
      final fileAttributes = FileAttributes.readOnly | FileAttributes.archive;
      expect(fileAttributes.hasFlag(FileAttributes.readOnly), isTrue);
      expect(fileAttributes.hasFlag(FileAttributes.temporary), isFalse);
      expect(
          fileAttributes
              .hasFlag(FileAttributes.readOnly | FileAttributes.archive),
          isTrue);
      expect(fileAttributes.hasFlag(FileAttributes.normal), isFalse);
    });

    test('toString', () {
      expect(FileAttributes.directory.toString(),
          equals('FileAttributes.directory'));
      expect((FileAttributes.directory | FileAttributes.readOnly).toString(),
          equals('FileAttributes(value: 17)'));
    });
  });
}
