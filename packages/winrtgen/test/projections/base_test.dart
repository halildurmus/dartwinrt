// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('BaseProjection', () {
    late ClassProjection geolocatorProjection;

    setUpAll(() async {
      await WinRTMetadataStore.loadMetadata();
      geolocatorProjection = ClassProjection.fromType(
        'Windows.Devices.Geolocation.Geolocator',
        comment: 'Provides access to the current geographic location.',
      );
    });

    test('classPreamble', () {
      expect(geolocatorProjection.classPreamble,
          equals('/// Provides access to the current geographic location.'));
    });

    test('commonImports', () {
      expect(
          geolocatorProjection.commonImports,
          orderedEquals({
            'dart:ffi',
            'package:ffi/ffi.dart',
            'package:win32/win32.dart'
          }));
    });

    test('currentFolderPath', () {
      expect(geolocatorProjection.currentFolderPath,
          equals('windows_devices/lib/src/geolocation'));
    });

    group('importForTypeDef', () {
      test('returns null for ignored types', () {
        expect(
            geolocatorProjection.importForTypeDef(
                'Windows.Foundation.EventRegistrationToken'.typeDef),
            isNull);
        expect(
            geolocatorProjection.importForTypeDef(
                'Windows.Storage.Pickers.IFileOpenPicker2'.typeDef),
            isNull);
      });

      test('returns null for WinRT delegates', () {
        expect(
            geolocatorProjection.importForTypeDef(
                'Windows.Foundation.TypedEventHandler`2'.typeDef),
            isNull);
      });

      test('returns package import for WinRT enums', () {
        expect(
            geolocatorProjection
                .importForTypeDef('Windows.Foundation.AsyncStatus'.typeDef),
            equals('package:windows_foundation/windows_foundation.dart'));
      });

      test('returns relative import for WinRT enums', () {
        final methodProjection = geolocatorProjection.methodProjections
            .firstWhere((m) => m.name == 'get_DesiredAccuracy');
        expect(
            geolocatorProjection.importForTypeDef(
                methodProjection.typeProjection.typeIdentifier.type!),
            equals('positionaccuracy.dart'));
      });

      test('returns package import for WinRT classes', () {
        expect(
            geolocatorProjection
                .importForTypeDef('Windows.Globalization.Calendar'.typeDef),
            equals('package:windows_globalization/windows_globalization.dart'));
      });

      test('returns relative import for WinRT classes', () {
        expect(
            geolocatorProjection.importForTypeDef(
                'Windows.Devices.Geolocation.Geoposition'.typeDef),
            equals('geoposition.dart'));
      });

      test('returns package import for WinRT interfaces', () {
        expect(
            geolocatorProjection
                .importForTypeDef('Windows.Globalization.ICalendar'.typeDef),
            equals('package:windows_globalization/windows_globalization.dart'));
      });

      test('returns relative import for WinRT interfaces', () {
        expect(
            geolocatorProjection.importForTypeDef(
                geolocatorProjection.inheritedInterfaces.first),
            equals('igeolocator.dart'));
      });

      test('returns package import for WinRT structs', () {
        expect(
            geolocatorProjection
                .importForTypeDef('Windows.Foundation.Point'.typeDef),
            equals('package:windows_foundation/windows_foundation.dart'));
        expect(
            geolocatorProjection.importForTypeDef(
                'Windows.Devices.Geolocation.BasicGeoposition'.typeDef),
            equals('basicgeoposition.dart'));
      });
    });

    group('importForTypeIdentifier', () {
      test('returns null for non-WinRT types', () {
        final typeIdentifier = const TypeIdentifier(BaseType.classTypeModifier,
            name: 'System.Guid');
        expect(geolocatorProjection.importForTypeIdentifier(typeIdentifier),
            isNull);
      });

      test('returns relative import for WinRT enums', () {
        final typeIdentifier = TypeIdentifier(BaseType.valueTypeModifier,
            name: 'Windows.Devices.Geolocation.PositionAccuracy',
            type: 'Windows.Devices.Geolocation.PositionAccuracy'.typeDef);
        expect(geolocatorProjection.importForTypeIdentifier(typeIdentifier),
            equals('positionaccuracy.dart'));
      });
    });

    test('importHeader', () {
      expect(geolocatorProjection.importHeader, equalsIgnoringWhitespace("""
        import 'dart:async';
        import 'dart:ffi';

        import 'package:ffi/ffi.dart';
        import 'package:win32/win32.dart' hide DocumentProperties, WinRTStringConversion;
        import 'package:windows_foundation/internal.dart';
        import 'package:windows_foundation/windows_foundation.dart';

        import 'basicgeoposition.dart';
        import 'geolocationaccessstatus.dart';
        import 'geoposition.dart';
        import 'igeolocator.dart';
        import 'igeolocator2.dart';
        import 'igeolocatorstatics.dart';
        import 'igeolocatorstatics2.dart';
        import 'igeolocatorwithscalaraccuracy.dart';
        import 'positionaccuracy.dart';
        import 'positionstatus.dart';
"""));
    });

    test('isDeprecated', () {
      expect(geolocatorProjection.isDeprecated, isFalse);
    });

    test('name', () {
      expect(geolocatorProjection.name,
          equals('Windows.Devices.Geolocation.Geolocator'));
    });

    test('packageName', () {
      expect(geolocatorProjection.packageName, equals('windows_devices'));
    });

    test('shortName', () {
      expect(geolocatorProjection.shortName, equals('Geolocator'));
    });
  });
}
