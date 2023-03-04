// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

  final geolocatorProjection =
      ClassProjection.from('Windows.Devices.Geolocation.Geolocator');

  group('importForTypeDef', () {
    test('returns null for ignored types', () {
      final tokenTypeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.EventRegistrationToken')!;
      expect(geolocatorProjection.importForTypeDef(tokenTypeDef), isNull);

      final picker2TypeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.IFileOpenPicker2')!;
      expect(geolocatorProjection.importForTypeDef(picker2TypeDef), isNull);
    });

    test('returns null for WinRT delegate', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.TypedEventHandler`2')!;
      expect(geolocatorProjection.importForTypeDef(typeDef), isNull);
    });

    test('returns package import for WinRT enum', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Foundation.AsyncStatus')!;
      expect(geolocatorProjection.importForTypeDef(typeDef),
          equals('package:windows_foundation/windows_foundation.dart'));
    });

    test('returns relative import for WinRT enum', () {
      final methodProjection = geolocatorProjection.methodProjections
          .firstWhere((m) => m.name == 'get_DesiredAccuracy');
      expect(
          geolocatorProjection.importForTypeDef(
              methodProjection.returnTypeProjection.typeIdentifier.type!),
          equals('positionaccuracy.dart'));
    });

    test('returns package import for WinRT class', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
      expect(geolocatorProjection.importForTypeDef(typeDef),
          equals('package:windows_globalization/windows_globalization.dart'));
    });

    test('returns relative import for WinRT class', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Devices.Geolocation.Geoposition')!;
      expect(geolocatorProjection.importForTypeDef(typeDef),
          equals('geoposition.dart'));
    });

    test('returns package import for WinRT interface', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;
      expect(geolocatorProjection.importForTypeDef(typeDef),
          equals('package:windows_globalization/windows_globalization.dart'));
    });

    test('returns relative import for WinRT interface', () {
      expect(
          geolocatorProjection
              .importForTypeDef(geolocatorProjection.inheritedInterfaces.first),
          equals('igeolocator.dart'));
    });

    test('returns package import for WinRT struct', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Foundation.Point')!;
      expect(geolocatorProjection.importForTypeDef(typeDef),
          equals('package:windows_foundation/windows_foundation.dart'));
    });

    test('returns relative import for WinRT struct', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Devices.Geolocation.BasicGeoposition')!;
      expect(geolocatorProjection.importForTypeDef(typeDef),
          equals('basicgeoposition.dart'));
    });
  });

  test('importForTypeIdentifier', () {
    final methodProjection = geolocatorProjection.methodProjections
        .firstWhere((m) => m.name == 'get_DesiredAccuracy');
    expect(
        geolocatorProjection.importForTypeIdentifier(
            methodProjection.returnTypeProjection.typeIdentifier),
        equals('positionaccuracy.dart'));
  });

  test('importsForInheritedInterfaces', () {
    expect(
      geolocatorProjection.importsForInheritedInterfaces,
      unorderedEquals([
        'igeolocator.dart',
        'igeolocatorwithscalaraccuracy.dart',
        'igeolocator2.dart'
      ]),
    );
  });

  test('importsForTypes', () {
    expect(
      geolocatorProjection.importsForTypes,
      unorderedEquals([
        'geolocationaccessstatus.dart',
        'positionaccuracy.dart',
        'positionstatus.dart',
        'package:windows_foundation/windows_foundation.dart',
        'geoposition.dart',
        'positionchangedeventargs.dart',
        'statuschangedeventargs.dart',
        'basicgeoposition.dart'
      ]),
    );
  });
}
