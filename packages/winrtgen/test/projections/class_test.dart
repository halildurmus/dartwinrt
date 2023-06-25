// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

import '../helpers.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final windowsBuildNumber = getWindowsBuildNumber();
  final calendarProjection =
      ClassProjection.from('Windows.Globalization.Calendar');
  final geolocatorProjection =
      ClassProjection.from('Windows.Devices.Geolocation.Geolocator');

  group('ClassProjection', () {
    test('projects something', () {
      final output = calendarProjection.toString();
      expect(output, isNotEmpty);
      expect(output, contains('Calendar'));
    });

    test('from factory constructor throws if type is not found', () {
      expect(() => ClassProjection.from('Windows.Foo.Bar'),
          throwsA(isA<WinRTGenException>()));
    });
  });

  group('WinRT class', () {
    test('has copyright header', () {
      expect(calendarProjection.header, contains(copyrightHeader));
    });

    test('includes correct dartdoc category comment', () {
      expect(calendarProjection.category, isEmpty);
      expect(calendarProjection.classPreamble, isEmpty);
    });

    test('has correct short name', () {
      expect(calendarProjection.shortName, equals('Calendar'));
    });

    test('annotated with @Deprecated', () {
      final projection =
          ClassProjection.from('Windows.Networking.Connectivity.DataUsage');
      expect(projection.isDeprecated, isTrue);
      expect(
          projection.classHeader,
          contains('@Deprecated("DataUsage may be altered or unavailable for '
              'releases after Windows 8.1. Instead, use NetworkUsage.")'));
    });

    test('has correct inheritance chain (1)', () {
      expect(calendarProjection.inheritsFrom,
          equals('ICalendar, ITimeZoneOnCalendar'));
      expect(
          calendarProjection.classHeader,
          equals('class Calendar extends IInspectable '
              'implements ICalendar, ITimeZoneOnCalendar'));
      expect(
        calendarProjection.interfaceImports,
        unorderedEquals([
          'icalendar.dart',
          'itimezoneoncalendar.dart',
          'icalendarfactory.dart',
          'icalendarfactory2.dart'
        ]),
      );
    });

    test('has correct inheritance chain (2)', () {
      final projection =
          ClassProjection.from('Windows.Foundation.PropertyValue');
      expect(projection.inheritsFrom, isEmpty);
      expect(projection.classHeader,
          equals('class PropertyValue extends IInspectable'));
      expect(projection.interfaceImports,
          unorderedEquals(['ipropertyvaluestatics.dart']));
    });

    if (windowsBuildNumber >= 18362) {
      test('has correct inheritance chain (3) (ignores excluded interfaces)',
          () {
        final projection =
            ClassProjection.from('Windows.Storage.Pickers.FileOpenPicker');
        // IFileOpenPicker2 and IFileOpenPickerStatics and
        // IFileOpenPickerWithOperationId interfaces are excluded
        expect(projection.inheritsFrom,
            equals('IFileOpenPicker, IFileOpenPicker3'));
        expect(
            projection.classHeader,
            equals('class FileOpenPicker extends IInspectable '
                'implements IFileOpenPicker, IFileOpenPicker3'));
        expect(
          projection.interfaceImports,
          unorderedEquals([
            'ifileopenpicker.dart',
            'ifileopenpicker3.dart',
            'ifileopenpickerstatics2.dart',
          ]),
        );
      });
    }

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
          'dayofweek.dart',
          'icalendar.dart',
          'icalendarfactory.dart',
          'icalendarfactory2.dart',
          'itimezoneoncalendar.dart',
        ]),
      );
    });

    test('with default constructor', () {
      expect(calendarProjection.isActivatable, isTrue);
      expect(calendarProjection.defaultConstructor,
          equals('Calendar() : super(activateClass(_className));'));
    });

    test('without default constructor', () {
      final projection = ClassProjection.from('Windows.Networking.HostName');
      expect(projection.isActivatable, isFalse);
      expect(projection.defaultConstructor, isEmpty);
    });

    test('with fromPtr named constructor', () {
      expect(calendarProjection.namedConstructor,
          equals('Calendar.fromPtr(super.ptr);'));
    });

    test('with _className variable', () {
      expect(calendarProjection.isActivatable, isTrue);
      expect(calendarProjection.factoryInterfaces, isNotEmpty);
      expect(calendarProjection.staticInterfaces, isEmpty);
      expect(
          calendarProjection.classNameVariable,
          equals(
              "static const _className = 'Windows.Globalization.Calendar';"));
    });

    test('without _className variable', () {
      final projection = ClassProjection.from(
          'Windows.Storage.FileProperties.BasicProperties');
      expect(projection.isActivatable, isFalse);
      expect(projection.factoryInterfaces, isEmpty);
      expect(projection.staticInterfaces, isEmpty);
      expect(projection.classNameVariable, isEmpty);
    });

    test('has correct number of factory constructors', () {
      expect(calendarProjection.factoryConstructors.length, equals(3));
    });

    test('has correct first factory constructor', () {
      expect(calendarProjection.factoryConstructors.first.method.name,
          equals('CreateCalendarDefaultCalendarAndClock'));
    });

    test('has correct last factory constructor', () {
      expect(calendarProjection.factoryConstructors.last.method.name,
          equals('CreateCalendarWithTimeZone'));
    });

    test('has correct number of static methods', () {
      expect(geolocatorProjection.staticMethods.length, equals(6));
    });

    test('has correct first static method', () {
      expect(geolocatorProjection.staticMethods.first.method.name,
          equals('RequestAccessAsync'));
    });

    test('has correct last static method', () {
      expect(geolocatorProjection.staticMethods.last.method.name,
          equals('get_DefaultGeoposition'));
    });

    test('has a static method annotated with @Deprecated', () {
      final classProjection = ClassProjection.from(
          'Windows.ApplicationModel.DataTransfer.StandardDataFormats');
      final methodProjection = classProjection.staticMethods
          .firstWhere((m) => m.method.name == 'get_Uri');
      expect(methodProjection.method.method.isDeprecated, isTrue);
      expect(
          methodProjection.toString(),
          startsWith(
              '@Deprecated("Uri may be altered or unavailable for releases '
              "after Windows Phone 'OSVersion' (TBD). Instead, use WebLink "
              'or ApplicationLink.")'));
    });

    test('has correct number of MethodForwardersProjection', () {
      expect(calendarProjection.methodForwarders.length, equals(2));
    });

    test('has correct number of method forwarders', () {
      expect(
          calendarProjection.methodForwarders
              .fold<int>(0, (prev, element) => prev + element.methods.length),
          equals(102));
    });

    test('has correct first method forwarder', () {
      expect(
          calendarProjection
              .methodForwarders.first.methodProjections.first.name,
          equals('Clone'));
    });

    test('has correct last method forwarder', () {
      expect(
          calendarProjection.methodForwarders.last.methodProjections.last.name,
          equals('TimeZoneAsString'));
    });
  });
}
