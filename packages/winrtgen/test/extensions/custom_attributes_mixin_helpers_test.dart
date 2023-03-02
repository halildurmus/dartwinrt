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

  final geocoordinateTypeDef = MetadataStore.getMetadataForType(
      'Windows.Devices.Geolocation.IGeocoordinate')!;
  final getLatitudeGetter =
      geocoordinateTypeDef.methods.firstWhere((m) => m.name == 'get_Latitude');

  test('deprecatedAnnotation', () {
    expect(geocoordinateTypeDef.deprecatedAnnotation, isEmpty);
    expect(
        getLatitudeGetter.deprecatedAnnotation,
        "@Deprecated('Latitude may be altered or unavailable after Windows 8.1."
        " Instead, use Point.Position.Latitude')");
  });

  test('isDeprecated', () {
    expect(geocoordinateTypeDef.isDeprecated, isFalse);
    expect(getLatitudeGetter.isDeprecated, isTrue);
  });
}
