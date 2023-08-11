// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  group('BaseType', () {
    test('dartType', () {
      expect(BaseType.booleanType.dartType, equals('bool'));
      expect(BaseType.charType.dartType, equals('String'));
      expect(BaseType.doubleType.dartType, equals('double'));
      expect(BaseType.floatType.dartType, equals('double'));
      expect(BaseType.int8Type.dartType, equals('int'));
      expect(BaseType.int16Type.dartType, equals('int'));
      expect(BaseType.int32Type.dartType, equals('int'));
      expect(BaseType.int64Type.dartType, equals('int'));
      expect(BaseType.stringType.dartType, equals('String'));
      expect(BaseType.uint8Type.dartType, equals('int'));
      expect(BaseType.uint16Type.dartType, equals('int'));
      expect(BaseType.uint32Type.dartType, equals('int'));
      expect(BaseType.uint64Type.dartType, equals('int'));
      expect(BaseType.voidType.dartType, equals('void'));
      expect(
          () => BaseType.genericTypeModifier.dartType, throwsUnsupportedError);
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
      expect(
          () => BaseType.genericTypeModifier.signature, throwsUnsupportedError);
    });
  });
}
