// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final calendarProjection =
      InterfaceProjection.from('Windows.Globalization.ICalendar');

  group('InterfaceProjection', () {
    test('projects something', () {
      final output = calendarProjection.toString();
      expect(output, isNotEmpty);
      expect(output, contains('ICalendar'));
    });

    test('from factory constructor throws if type is not found', () {
      expect(() => InterfaceProjection.from('Windows.Foo.IBar'),
          throwsA(isA<Exception>()));
    });
  });

  group('WinRT interface', () {
    test('has copyright header', () {
      expect(calendarProjection.header, contains(copyrightHeader));
    });

    test('has correct dartdoc category comment', () {
      expect(calendarProjection.category, equals('interface'));
      expect(calendarProjection.classPreamble,
          equals('/// {@category interface}'));
    });

    test('has correct short name', () {
      expect(calendarProjection.shortName, equals('ICalendar'));
    });

    test('has correct inheritance chain 1', () {
      expect(calendarProjection.inheritsFrom, isEmpty);
      expect(calendarProjection.classHeader,
          equals('class ICalendar extends IInspectable'));
      expect(calendarProjection.interfaceImports, isEmpty);
    });

    test('has correct inheritance chain 2', () {
      final projection =
          InterfaceProjection.from('Windows.Gaming.Input.IGamepad');
      expect(projection.inheritsFrom, equals('IGameController'));
      expect(
        projection.classHeader,
        equals('class IGamepad extends IInspectable '
            'implements IGameController'),
      );
      expect(projection.interfaceImports,
          unorderedEquals(['igamecontroller.dart']));
    });

    test('has correct inheritance chain 3 (ignores excluded interfaces)', () {
      final projection = ClassProjection.from(
          'Windows.Globalization.NumberFormatting.ICurrencyFormatter');
      // INumberFormatter2 interface is excluded
      expect(
        projection.inheritsFrom,
        equals('INumberFormatterOptions, INumberFormatter, INumberParser'),
      );
      expect(
        projection.classHeader,
        equals('class ICurrencyFormatter extends IInspectable implements '
            'INumberFormatterOptions, INumberFormatter, INumberParser'),
      );
      expect(
        projection.interfaceImports,
        unorderedEquals([
          'inumberformatteroptions.dart',
          'inumberformatter.dart',
          'inumberparser.dart'
        ]),
      );
    });

    test('imports enums.g.dart', () {
      expect(calendarProjection.imports, contains('enums.g.dart'));
      expect(
          calendarProjection.importHeader, contains("import 'enums.g.dart';"));
    });

    test('imports structs.g.dart', () {
      final projection =
          InterfaceProjection.from('Windows.Gaming.Input.IGamepad');
      expect(projection.imports, contains('structs.g.dart'));
      expect(projection.importHeader, contains("import 'structs.g.dart';"));
    });

    test('imports are meaningful', () {
      expect(
        calendarProjection.imports,
        unorderedEquals([
          'dart:async',
          'dart:ffi',
          'package:ffi/ffi.dart',
          'package:win32/win32.dart',
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart',
          'calendar.dart',
          'enums.g.dart',
        ]),
      );
    });

    test('has correct vtable start', () {
      expect(calendarProjection.vtableStart, equals(6));
    });

    test('has correct IID', () {
      expect(
        calendarProjection.iidConstant,
        contains("const IID_ICalendar = "
            "'{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}';"),
      );
    });

    test('has correct number of methods', () {
      expect(calendarProjection.methodProjections.length, equals(98));
    });

    test('has correct first method', () {
      expect(calendarProjection.methodProjections.first.name, equals('Clone'));
    });

    test('has correct last method', () {
      expect(calendarProjection.methodProjections.last.name,
          equals('get_IsDaylightSavingTime'));
    });
  });
}
