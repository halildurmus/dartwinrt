// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('WinRT structs projected correctly', () {
    final typeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.Rect')!;

    final structProjection = WinRTStructProjection(typeDef);
    expect(structProjection.category, equals('struct'));
    expect(structProjection.classDeclaration,
        equals('class Rect extends Struct {'));

    final structFieldProjection = structProjection.fields.first;
    expect(structFieldProjection.attribute, equals('@Float()'));
    expect(structFieldProjection.dartType, equals('double'));
    expect(structFieldProjection.fieldName, equals('x'));
  });
}
