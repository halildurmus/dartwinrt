// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('WinRT struct projected correctly', () {
    final projection = StructProjection.from('Windows.Foundation.Rect');
    expect(projection.category, equals('struct'));
    expect(projection.classDeclaration, equals('class Rect extends Struct {'));

    final fieldProjection = projection.fields.first;
    expect(fieldProjection.attribute, equals('@Float()'));
    expect(fieldProjection.dartType, equals('double'));
    expect(fieldProjection.fieldName, equals('x'));
  });
}
