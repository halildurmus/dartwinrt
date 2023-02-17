// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('toCamelCase', () {
    expect('TitleCase'.toCamelCase(), equals('titleCase'));
    expect('camelCase'.toCamelCase(), equals('camelCase'));
    expect('IPAddress'.toCamelCase(), equals('ipAddress'));
    expect('UInt32'.toCamelCase(), equals('uint32'));
    expect('X'.toCamelCase(), equals('x'));
    expect(''.toCamelCase(), isEmpty);
  });
}
