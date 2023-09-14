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

  group('CustomAttributesMixin', () {
    setUpAll(WinRTMetadataStore.loadMetadata);

    test('deprecatedAnnotation', () {
      final typeDef = 'Windows.Devices.Geolocation.IGeocoordinate'.typeDef;
      final method = typeDef.findMethod('get_Latitude')!;
      expect(typeDef.deprecatedAnnotation, isEmpty);
      expect(
        method.deprecatedAnnotation,
        equals('@Deprecated("Latitude may be altered or unavailable after '
            'Windows 8.1. Instead, use Point.Position.Latitude")'),
      );
    });

    test('isDeprecated', () {
      final typeDef = 'Windows.Devices.Geolocation.IGeocoordinate'.typeDef;
      final method = typeDef.findMethod('get_Latitude')!;
      expect(typeDef.isDeprecated, isFalse);
      expect(method.isDeprecated, isTrue);
    });
  });
}
