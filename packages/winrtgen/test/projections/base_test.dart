// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  final geolocatorProjection = ClassProjection.from(
      'Windows.Devices.Geolocation.Geolocator',
      comment: 'Provides access to the current geographic location.');

  group('BaseProjection', () {
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
        final tokenTypeDef = WinRTMetadataStore.findTypeDef(
            'Windows.Foundation.EventRegistrationToken');
        expect(geolocatorProjection.importForTypeDef(tokenTypeDef), isNull);

        final picker2TypeDef = WinRTMetadataStore.findTypeDef(
            'Windows.Storage.Pickers.IFileOpenPicker2');
        expect(geolocatorProjection.importForTypeDef(picker2TypeDef), isNull);
      });

      test('returns null for WinRT delegate', () {
        final typeDef = WinRTMetadataStore.findTypeDef(
            'Windows.Foundation.TypedEventHandler`2');
        expect(geolocatorProjection.importForTypeDef(typeDef), isNull);
      });

      test('returns package import for WinRT enum', () {
        final typeDef =
            WinRTMetadataStore.findTypeDef('Windows.Foundation.AsyncStatus');
        expect(geolocatorProjection.importForTypeDef(typeDef),
            equals('package:windows_foundation/windows_foundation.dart'));
      });

      test('returns relative import for WinRT enum', () {
        final methodProjection = geolocatorProjection.methodProjections
            .firstWhere((m) => m.name == 'get_DesiredAccuracy');
        expect(
            geolocatorProjection.importForTypeDef(
                methodProjection.typeProjection.typeIdentifier.type!),
            equals('positionaccuracy.dart'));
      });

      test('returns package import for WinRT class', () {
        final typeDef =
            WinRTMetadataStore.findTypeDef('Windows.Globalization.Calendar');
        expect(geolocatorProjection.importForTypeDef(typeDef),
            equals('package:windows_globalization/windows_globalization.dart'));
      });

      test('returns relative import for WinRT class', () {
        final typeDef = WinRTMetadataStore.findTypeDef(
            'Windows.Devices.Geolocation.Geoposition');
        expect(geolocatorProjection.importForTypeDef(typeDef),
            equals('geoposition.dart'));
      });

      test('returns package import for WinRT interface', () {
        final typeDef =
            WinRTMetadataStore.findTypeDef('Windows.Globalization.ICalendar');
        expect(geolocatorProjection.importForTypeDef(typeDef),
            equals('package:windows_globalization/windows_globalization.dart'));
      });

      test('returns relative import for WinRT interface', () {
        expect(
            geolocatorProjection.importForTypeDef(
                geolocatorProjection.inheritedInterfaces.first),
            equals('igeolocator.dart'));
      });

      test('returns package import for WinRT struct', () {
        final typeDef =
            WinRTMetadataStore.findTypeDef('Windows.Foundation.Point');
        expect(geolocatorProjection.importForTypeDef(typeDef),
            equals('package:windows_foundation/windows_foundation.dart'));
      });

      test('returns relative import for WinRT struct', () {
        final typeDef = WinRTMetadataStore.findTypeDef(
            'Windows.Devices.Geolocation.BasicGeoposition');
        expect(geolocatorProjection.importForTypeDef(typeDef),
            equals('basicgeoposition.dart'));
      });
    });

    group('importForTypeIdentifier', () {
      test('returns null for non-WinRT type', () {
        final typeIdentifier = const TypeIdentifier(BaseType.classTypeModifier,
            name: 'System.Guid');
        expect(geolocatorProjection.importForTypeIdentifier(typeIdentifier),
            isNull);
      });

      test('returns relative import for WinRT enum', () {
        final methodProjection = geolocatorProjection.methodProjections
            .firstWhere((m) => m.name == 'get_DesiredAccuracy');
        expect(
            geolocatorProjection.importForTypeIdentifier(
                methodProjection.typeProjection.typeIdentifier),
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
