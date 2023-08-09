// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('isVoid', () {
    final typeDef =
        WinRTMetadataStore.findTypeDef('Windows.Foundation.IClosable');
    final method = typeDef.findMethod('Close')!;
    expect(method.isVoid, isTrue);
  });

  group('uniqueName', () {
    test('returns the overload name', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.ICalendarFactory');
      final method = typeDef.methods.first;
      expect(
          method.uniqueName, equals('CreateCalendarDefaultCalendarAndClock'));
    });

    test('returns the original name', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IClosable');
      final method = typeDef.findMethod('Close')!;
      expect(method.uniqueName, equals('Close'));
    });
  });
}
