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

  group('CustomAttributesMixin', () {
    final igeocoordinateTypeDef =
        'Windows.Devices.Geolocation.IGeocoordinate'.typeDef;
    final getLatitudeMethod = igeocoordinateTypeDef.findMethod('get_Latitude')!;

    test('deprecatedAnnotation', () {
      expect(igeocoordinateTypeDef.deprecatedAnnotation, isEmpty);
      expect(
        getLatitudeMethod.deprecatedAnnotation,
        equals('@Deprecated("Latitude may be altered or unavailable after '
            'Windows 8.1. Instead, use Point.Position.Latitude")'),
      );
    });

    test('isDeprecated', () {
      expect(igeocoordinateTypeDef.isDeprecated, isFalse);
      expect(getLatitudeMethod.isDeprecated, isTrue);
    });
  });
}
