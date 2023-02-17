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

  group('TypeArg.from constructor', () {
    test('throws an ArgumentError if invalid name is given', () {
      expect(() => TypeArg.from('foo'), throwsArgumentError);
    });

    test('returns the appropriate TypeArg (1)', () {
      expect(TypeArg.from('bool'), equals(TypeArg.bool_));
    });

    test('returns the appropriate TypeArg (2)', () {
      expect(TypeArg.from('bool?'), equals(TypeArg.nullableBool));
    });

    test('returns the appropriate TypeArg (3)', () {
      expect(TypeArg.from('IInspectable'), equals(TypeArg.inspectable));
    });

    test('returns the appropriate TypeArg (4)', () {
      expect(
          TypeArg.from('IInspectable?'), equals(TypeArg.nullableInspectable));
    });

    test('returns the appropriate TypeArg (5)', () {
      expect(TypeArg.from('WinRTEnum'), equals(TypeArg.winrtEnum));
    });

    test('returns the appropriate TypeArg (6)', () {
      expect(TypeArg.from('WinRTFlagsEnum'), equals(TypeArg.winrtFlagsEnum));
    });
  });

  group('isEnum', () {
    test('returns true for TypeArg.winrtEnum', () {
      expect(TypeArg.winrtEnum.isEnum, isTrue);
    });

    test('returns true for TypeArg.winrtFlagsEnum', () {
      expect(TypeArg.winrtEnum.isEnum, isTrue);
    });
  });

  group('isInt', () {
    test('returns true for TypeArg.int16', () {
      expect(TypeArg.int16.isInt, isTrue);
    });

    test('returns true for TypeArg.int32', () {
      expect(TypeArg.int32.isInt, isTrue);
    });

    test('returns false for TypeArg.int64', () {
      expect(TypeArg.int64.isInt, isTrue);
    });

    test('returns true for TypeArg.uint8', () {
      expect(TypeArg.uint16.isInt, isTrue);
    });

    test('returns true for TypeArg.uint16', () {
      expect(TypeArg.uint16.isInt, isTrue);
    });

    test('returns true for TypeArg.uint32', () {
      expect(TypeArg.uint32.isInt, isTrue);
    });

    test('returns false for TypeArg.uint64', () {
      expect(TypeArg.uint64.isInt, isTrue);
    });
  });

  group('isInspectable', () {
    test('returns true for TypeArg.inspectable', () {
      expect(TypeArg.inspectable.isInspectable, isTrue);
    });

    test('returns true for TypeArg.nullableInspectable', () {
      expect(TypeArg.nullableInspectable.isInspectable, isTrue);
    });
  });

  group('typeIdentifier', () {
    test('throws UnsupportedError for TypeArg.inspectable', () {
      expect(() => TypeArg.inspectable.typeIdentifier,
          throwsA(isA<UnsupportedError>()));
    });

    test('throws UnsupportedError for TypeArg.nullableInspectable', () {
      expect(() => TypeArg.nullableInspectable.typeIdentifier,
          throwsA(isA<UnsupportedError>()));
    });

    test('throws UnsupportedError for TypeArg.winrtEnum', () {
      expect(() => TypeArg.winrtEnum.typeIdentifier,
          throwsA(isA<UnsupportedError>()));
    });

    test('throws UnsupportedError for TypeArg.winrtFlagsEnum', () {
      expect(() => TypeArg.winrtFlagsEnum.typeIdentifier,
          throwsA(isA<UnsupportedError>()));
    });

    test('returns correct TypeIdentifier for TypeArg.bool', () {
      expect(
          TypeArg.bool_.typeIdentifier.baseType, equals(BaseType.booleanType));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableBool', () {
      expect(TypeArg.nullableBool.typeIdentifier.baseType,
          equals(BaseType.booleanType));
    });

    test('returns correct TypeIdentifier for TypeArg.dateTime', () {
      expect(TypeArg.dateTime.typeIdentifier.name,
          equals('Windows.Foundation.DateTime'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableDateTime', () {
      expect(TypeArg.nullableDateTime.typeIdentifier.name,
          equals('Windows.Foundation.DateTime'));
    });

    test('returns correct TypeIdentifier for TypeArg.double', () {
      expect(
          TypeArg.double.typeIdentifier.baseType, equals(BaseType.doubleType));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableDouble', () {
      expect(TypeArg.nullableDouble.typeIdentifier.baseType,
          equals(BaseType.doubleType));
    });

    test('returns correct TypeIdentifier for TypeArg.duration', () {
      expect(TypeArg.duration.typeIdentifier.name,
          equals('Windows.Foundation.TimeSpan'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableDuration', () {
      expect(TypeArg.nullableDuration.typeIdentifier.name,
          equals('Windows.Foundation.TimeSpan'));
    });

    test('returns correct TypeIdentifier for TypeArg.float', () {
      expect(TypeArg.float.typeIdentifier.baseType, equals(BaseType.floatType));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableFloat', () {
      expect(TypeArg.nullableFloat.typeIdentifier.baseType,
          equals(BaseType.floatType));
    });

    test('returns correct TypeIdentifier for TypeArg.guid', () {
      expect(TypeArg.guid.typeIdentifier.name, equals('System.Guid'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableGuid', () {
      expect(TypeArg.nullableGuid.typeIdentifier.name, equals('System.Guid'));
    });

    test('returns correct TypeIdentifier for TypeArg.int16', () {
      expect(TypeArg.int16.typeIdentifier.baseType, equals(BaseType.int16Type));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableInt16', () {
      expect(TypeArg.nullableInt16.typeIdentifier.baseType,
          equals(BaseType.int16Type));
    });

    test('returns correct TypeIdentifier for TypeArg.int32', () {
      expect(TypeArg.int32.typeIdentifier.baseType, equals(BaseType.int32Type));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableInt32', () {
      expect(TypeArg.nullableInt32.typeIdentifier.baseType,
          equals(BaseType.int32Type));
    });

    test('returns correct TypeIdentifier for TypeArg.int64', () {
      expect(TypeArg.int64.typeIdentifier.baseType, equals(BaseType.int64Type));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableInt64', () {
      expect(TypeArg.nullableInt64.typeIdentifier.baseType,
          equals(BaseType.int64Type));
    });

    test('returns correct TypeIdentifier for TypeArg.object', () {
      expect(
          TypeArg.object.typeIdentifier.baseType, equals(BaseType.objectType));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableObject', () {
      expect(TypeArg.nullableObject.typeIdentifier.baseType,
          equals(BaseType.objectType));
    });

    test('returns correct TypeIdentifier for TypeArg.point', () {
      expect(TypeArg.point.typeIdentifier.name,
          equals('Windows.Foundation.Point'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullablePoint', () {
      expect(TypeArg.nullablePoint.typeIdentifier.name,
          equals('Windows.Foundation.Point'));
    });

    test('returns correct TypeIdentifier for TypeArg.rect', () {
      expect(
          TypeArg.rect.typeIdentifier.name, equals('Windows.Foundation.Rect'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableRect', () {
      expect(TypeArg.nullableRect.typeIdentifier.name,
          equals('Windows.Foundation.Rect'));
    });

    test('returns correct TypeIdentifier for TypeArg.size', () {
      expect(
          TypeArg.size.typeIdentifier.name, equals('Windows.Foundation.Size'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableSize', () {
      expect(TypeArg.nullableSize.typeIdentifier.name,
          equals('Windows.Foundation.Size'));
    });

    test('returns correct TypeIdentifier for TypeArg.string', () {
      expect(
          TypeArg.string.typeIdentifier.baseType, equals(BaseType.stringType));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableString', () {
      expect(TypeArg.nullableString.typeIdentifier.baseType,
          equals(BaseType.stringType));
    });

    test('returns correct TypeIdentifier for TypeArg.uint16', () {
      expect(
          TypeArg.uint16.typeIdentifier.baseType, equals(BaseType.uint16Type));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableUint16', () {
      expect(TypeArg.nullableUint16.typeIdentifier.baseType,
          equals(BaseType.uint16Type));
    });

    test('returns correct TypeIdentifier for TypeArg.uint32', () {
      expect(
          TypeArg.uint32.typeIdentifier.baseType, equals(BaseType.uint32Type));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableUint32', () {
      expect(TypeArg.nullableUint32.typeIdentifier.baseType,
          equals(BaseType.uint32Type));
    });

    test('returns correct TypeIdentifier for TypeArg.uint64', () {
      expect(
          TypeArg.uint64.typeIdentifier.baseType, equals(BaseType.uint64Type));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableUint64', () {
      expect(TypeArg.nullableUint64.typeIdentifier.baseType,
          equals(BaseType.uint64Type));
    });

    test('returns correct TypeIdentifier for TypeArg.uri', () {
      expect(TypeArg.uri.typeIdentifier.name, equals('Windows.Foundation.Uri'));
    });

    test('returns correct TypeIdentifier for TypeArg.nullableUri', () {
      expect(TypeArg.nullableUri.typeIdentifier.name,
          equals('Windows.Foundation.Uri'));
    });
  });
}
