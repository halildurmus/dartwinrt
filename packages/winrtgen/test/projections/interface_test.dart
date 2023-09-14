// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  late InterfaceProjection icalendarProjection;

  setUpAll(() async {
    await WinRTMetadataStore.loadMetadata();
    icalendarProjection =
        InterfaceProjection.fromType('Windows.Globalization.ICalendar');
  });

  group('InterfaceProjection', () {
    test('projects something', () {
      final output = icalendarProjection.toString();
      expect(output, isNotEmpty);
      expect(output, contains('ICalendar'));
    });

    test('from factory constructor throws a StateError if type is not found',
        () {
      expect(() => InterfaceProjection.fromType('Windows.Foo.IBar'),
          throwsStateError);
    });
  });

  group('WinRT interface', () {
    test('has copyright header', () {
      expect(icalendarProjection.header, contains(Header.copyright));
    });

    test('has correct dartdoc category comment', () {
      expect(icalendarProjection.category, isEmpty);
      expect(icalendarProjection.classPreamble, isEmpty);
    });

    test('has correct short name', () {
      expect(icalendarProjection.shortName, equals('ICalendar'));
    });

    test('annotated with @Deprecated', () {
      final projection = InterfaceProjection.fromType(
          'Windows.Networking.Connectivity.IDataUsage');
      expect(projection.isDeprecated, isTrue);
      expect(
          projection.classHeader,
          contains('@Deprecated("IDataUsage may be altered or unavailable for '
              'releases after Windows 8.1. Instead, use INetworkUsage.")'));
    });

    test('has correct inheritance chain (1)', () {
      expect(icalendarProjection.inheritsFrom, isEmpty);
      expect(icalendarProjection.classHeader,
          equals('class ICalendar extends IInspectable'));
      expect(icalendarProjection.interfaceImports, isEmpty);
    });

    test('has correct inheritance chain (2)', () {
      final projection =
          InterfaceProjection.fromType('Windows.Gaming.Input.IGamepad');
      expect(projection.inheritsFrom, equals('IGameController'));
      expect(
        projection.classHeader,
        equals('class IGamepad extends IInspectable '
            'implements IGameController'),
      );
      expect(projection.interfaceImports,
          unorderedEquals(['igamecontroller.dart']));
    });

    test('has correct inheritance chain (3) (ignores excluded interfaces)', () {
      final projection = ClassProjection.fromType(
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

    test('imports are meaningful (1)', () {
      final projection =
          InterfaceProjection.fromType('Windows.Foundation.IMemoryBuffer');
      expect(
        projection.imports,
        unorderedEquals([
          'dart:async',
          'dart:ffi',
          'package:ffi/ffi.dart',
          'package:win32/win32.dart',
          '../internal.dart',
          'helpers.dart',
          'collections/iiterator.dart',
          'extensions/extensions.dart',
          'iclosable.dart',
          'imemorybufferreference.dart'
        ]),
      );
    });

    test('imports are meaningful (2)', () {
      expect(
        icalendarProjection.imports,
        unorderedEquals([
          'dart:async',
          'dart:ffi',
          'package:ffi/ffi.dart',
          'package:win32/win32.dart',
          'package:windows_foundation/internal.dart',
          'package:windows_foundation/windows_foundation.dart',
          'calendar.dart',
          'dayofweek.dart',
        ]),
      );
    });

    test('has correct vtable start', () {
      expect(icalendarProjection.vtableStart, equals(6));
    });

    test('has correct IID', () {
      expect(
        icalendarProjection.iidConstant,
        contains("const IID_ICalendar = "
            "'{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}';"),
      );
    });

    test('does not have default constructor', () {
      expect(icalendarProjection.constructor, isEmpty);
    });

    test('has named constructor', () {
      expect(icalendarProjection.namedConstructor,
          equals('ICalendar.fromPtr(super.ptr);'));
    });

    test('has correct number of methods', () {
      expect(icalendarProjection.methodProjections.length, equals(98));
    });

    test('has correct first method', () {
      expect(icalendarProjection.methodProjections.first.name, equals('Clone'));
    });

    test('has correct last method', () {
      expect(icalendarProjection.methodProjections.last.name,
          equals('get_IsDaylightSavingTime'));
    });
  });
}
