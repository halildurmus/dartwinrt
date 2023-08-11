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

  group('Method', () {
    final iclosableTypeDef = 'Windows.Foundation.IClosable'.typeDef;
    final closeMethod = iclosableTypeDef.findMethod('Close')!;

    test('isVoid', () {
      expect(closeMethod.isVoid, isTrue);
    });

    group('uniqueName', () {
      test('returns the original name', () {
        expect(closeMethod.uniqueName, equals('Close'));
      });

      test('returns the overload name', () {
        final typeDef = 'Windows.Globalization.ICalendarFactory'.typeDef;
        final [method1, method2] = typeDef.methods;
        expect(method1.uniqueName,
            equals('CreateCalendarDefaultCalendarAndClock'));
        expect(method2.uniqueName, equals('CreateCalendar'));
      });
    });
  });
}
