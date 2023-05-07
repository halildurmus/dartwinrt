// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('Windows Runtime golden', () {
    const type = 'Windows.Globalization.ICalendar';
    final dartClass = InterfaceProjection.from(type).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/icalendar.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/icalendar.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });
}
