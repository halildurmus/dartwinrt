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

  test('ICalendar golden', () {
    const type = 'Windows.Globalization.ICalendar';
    final dartClass = InterfaceProjection.from(type).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/icalendar.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/icalendar.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });

  test('_IMapXX golden', () {
    const type = 'Windows.Foundation.Collections.IMap`2';
    final genericType =
        genericTypes.firstWhere((e) => e.fullyQualifiedType == type);
    final dartClass =
        GenericInterfacePartFileProjection(genericType).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/imap_part.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/imap_part.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });

  test('_IReferenceXX golden', () {
    const type = 'Windows.Foundation.IReference`1';
    final genericType =
        genericTypes.firstWhere((e) => e.fullyQualifiedType == type);
    final dartClass =
        GenericInterfacePartFileProjection(genericType).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/ireference_part.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden =
        File('test/goldens/ireference_part.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });

  test('_IVectorXX golden', () {
    const type = 'Windows.Foundation.Collections.IVector`1';
    final genericType =
        genericTypes.firstWhere((e) => e.fullyQualifiedType == type);
    final dartClass =
        GenericInterfacePartFileProjection(genericType).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/ivector_part.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/ivector_part.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });
}
