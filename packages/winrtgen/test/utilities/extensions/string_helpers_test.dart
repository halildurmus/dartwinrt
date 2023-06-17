// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('capitalize', () {
    expect('value'.capitalize(), equals('Value'));
    expect('camelCase'.capitalize(), equals('CamelCase'));
    expect('X'.capitalize(), equals('X'));
    expect(''.capitalize(), isEmpty);
  });

  test('toCamelCase', () {
    expect('TitleCase'.toCamelCase(), equals('titleCase'));
    expect('camelCase'.toCamelCase(), equals('camelCase'));
    expect('TRY'.toCamelCase(), equals('try'));
    expect('USD'.toCamelCase(), equals('usd'));
    expect('IPAddress'.toCamelCase(), equals('ipAddress'));
    expect('UInt32'.toCamelCase(), equals('uint32'));
    expect('X'.toCamelCase(), equals('x'));
    expect(''.toCamelCase(), isEmpty);
  });
}
