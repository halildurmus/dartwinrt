// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('dartTypeName', () {
    expect(BaseType.booleanType.dartTypeName, equals('bool'));
    expect(BaseType.doubleType.dartTypeName, equals('double'));
    expect(BaseType.floatType.dartTypeName, equals('double'));
    expect(BaseType.int8Type.dartTypeName, equals('int'));
    expect(BaseType.int16Type.dartTypeName, equals('int'));
    expect(BaseType.int32Type.dartTypeName, equals('int'));
    expect(BaseType.int64Type.dartTypeName, equals('int'));
    expect(BaseType.uint8Type.dartTypeName, equals('int'));
    expect(BaseType.uint16Type.dartTypeName, equals('int'));
    expect(BaseType.uint32Type.dartTypeName, equals('int'));
    expect(BaseType.uint64Type.dartTypeName, equals('int'));
    expect(BaseType.stringType.dartTypeName, equals('String'));
    expect(BaseType.genericTypeModifier.dartTypeName, equals('undefined'));
  });

  test('signature', () {
    expect(BaseType.booleanType.signature, equals('b1'));
    expect(BaseType.charType.signature, equals('c2'));
    expect(BaseType.doubleType.signature, equals('f8'));
    expect(BaseType.floatType.signature, equals('f4'));
    expect(BaseType.int8Type.signature, equals('i1'));
    expect(BaseType.int16Type.signature, equals('i2'));
    expect(BaseType.int32Type.signature, equals('i4'));
    expect(BaseType.int64Type.signature, equals('i8'));
    expect(BaseType.objectType.signature, equals('cinterface(IInspectable)'));
    expect(BaseType.stringType.signature, equals('string'));
    expect(BaseType.uint8Type.signature, equals('u1'));
    expect(BaseType.uint16Type.signature, equals('u2'));
    expect(BaseType.uint32Type.signature, equals('u4'));
    expect(BaseType.uint64Type.signature, equals('u8'));
  });

  test('toCamelCase', () {
    expect('TitleCase'.toCamelCase(), equals('titleCase'));
    expect('camelCase'.toCamelCase(), equals('camelCase'));
    expect('IPAddress'.toCamelCase(), equals('ipAddress'));
    expect('UInt32'.toCamelCase(), equals('uint32'));
    expect(''.toCamelCase(), equals(''));
  });
}
