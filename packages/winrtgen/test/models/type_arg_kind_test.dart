// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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

  group('TypeArgKind', () {
    group('from constructor', () {
      test('(bool)', () {
        expect(TypeArgKind.fromName('bool'), equals(TypeArgKind.bool_));
      });

      test('(bool?)', () {
        expect(TypeArgKind.fromName('bool?'), equals(TypeArgKind.nullableBool));
      });

      test('(Inspectable)', () {
        expect(TypeArgKind.fromName('Inspectable'),
            equals(TypeArgKind.inspectable));
      });

      test('(Inspectable?)', () {
        expect(TypeArgKind.fromName('Inspectable?'),
            equals(TypeArgKind.nullableInspectable));
      });

      test('(WinRTEnum)', () {
        expect(
            TypeArgKind.fromName('WinRTEnum'), equals(TypeArgKind.winrtEnum));
      });

      test('(WinRTFlagsEnum)', () {
        expect(TypeArgKind.fromName('WinRTFlagsEnum'),
            equals(TypeArgKind.winrtFlagsEnum));
      });

      test('throws an ArgumentError if invalid name is given', () {
        expect(() => TypeArgKind.fromName('foo'), throwsArgumentError);
      });
    });

    group('fromTypeIdentifier constructor', () {
      test('(bool_)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.booleanType)),
            equals(TypeArgKind.bool_));
      });

      test('(nullableBool)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.booleanType),
                isNullable: true),
            equals(TypeArgKind.nullableBool));
      });

      test('(dateTime)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(const TypeIdentifier(
                BaseType.valueTypeModifier,
                name: 'Windows.Foundation.DateTime')),
            equals(TypeArgKind.dateTime));
      });

      test('(duration)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(const TypeIdentifier(
                BaseType.valueTypeModifier,
                name: 'Windows.Foundation.TimeSpan')),
            equals(TypeArgKind.duration));
      });

      test('(guid)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(const TypeIdentifier(
                BaseType.valueTypeModifier,
                name: 'System.Guid')),
            equals(TypeArgKind.guid));
      });

      test('(inspectable) (1)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(const TypeIdentifier(
                BaseType.classTypeModifier,
                name: 'Windows.Foundation.IAsyncInfo')),
            equals(TypeArgKind.inspectable));
      });

      test('(nullableInspectable) (1)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.classTypeModifier,
                    name: 'Windows.Foundation.IAsyncInfo'),
                isNullable: true),
            equals(TypeArgKind.nullableInspectable));
      });

      test('(inspectable) (2)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.genericTypeModifier)),
            equals(TypeArgKind.inspectable));
      });

      test('(nullableInspectable) (2)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.genericTypeModifier),
                isNullable: true),
            equals(TypeArgKind.nullableInspectable));
      });

      test('(object)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.objectType)),
            equals(TypeArgKind.object));
      });

      test('(nullableObject)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.objectType),
                isNullable: true),
            equals(TypeArgKind.nullableObject));
      });

      test('(point)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(const TypeIdentifier(
                BaseType.valueTypeModifier,
                name: 'Windows.Foundation.Point')),
            equals(TypeArgKind.point));
      });

      test('(nullableSize)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.valueTypeModifier,
                    name: 'Windows.Foundation.Size'),
                isNullable: true),
            equals(TypeArgKind.nullableSize));
      });

      test('(uri)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(const TypeIdentifier(
                BaseType.classTypeModifier,
                name: 'Windows.Foundation.Uri')),
            equals(TypeArgKind.uri));
      });

      test('(winrtEnum)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
              TypeIdentifier(BaseType.valueTypeModifier,
                  name: 'Windows.Foundation.AsyncStatus',
                  type: 'Windows.Foundation.AsyncStatus'.typeDef),
            ),
            equals(TypeArgKind.winrtEnum));
      });

      test('(winrtFlagsEnum)', () {
        expect(
            TypeArgKind.fromTypeIdentifier(
              TypeIdentifier(BaseType.valueTypeModifier,
                  name: 'Windows.Storage.FileAttributes',
                  type: 'Windows.Storage.FileAttributes'.typeDef),
            ),
            equals(TypeArgKind.winrtFlagsEnum));
      });

      test('throws an UnsupportedError if invalid TypeIdentifier is given', () {
        expect(
            () => TypeArgKind.fromTypeIdentifier(
                const TypeIdentifier(BaseType.classVariableTypeModifier)),
            throwsUnsupportedError);
      });
    });

    test('isEnum', () {
      expect(TypeArgKind.winrtEnum.isEnum, isTrue);
      expect(TypeArgKind.winrtFlagsEnum.isEnum, isTrue);
    });

    test('isInt', () {
      expect(TypeArgKind.int16.isInt, isTrue);
      expect(TypeArgKind.int32.isInt, isTrue);
      expect(TypeArgKind.int64.isInt, isTrue);
      expect(TypeArgKind.uint16.isInt, isTrue);
      expect(TypeArgKind.uint16.isInt, isTrue);
      expect(TypeArgKind.uint32.isInt, isTrue);
      expect(TypeArgKind.uint64.isInt, isTrue);
    });

    test('isInspectable', () {
      expect(TypeArgKind.inspectable.isInspectable, isTrue);
      expect(TypeArgKind.nullableInspectable.isInspectable, isTrue);
    });

    group('typeIdentifier', () {
      test('(bool)', () {
        expect(TypeArgKind.bool_.typeIdentifier.baseType,
            equals(BaseType.booleanType));
      });

      test('(nullableBool)', () {
        expect(TypeArgKind.nullableBool.typeIdentifier.baseType,
            equals(BaseType.booleanType));
      });

      test('(dateTime)', () {
        expect(TypeArgKind.dateTime.typeIdentifier.name,
            equals('Windows.Foundation.DateTime'));
      });

      test('(nullableDateTime)', () {
        expect(TypeArgKind.nullableDateTime.typeIdentifier.name,
            equals('Windows.Foundation.DateTime'));
      });

      test('(double)', () {
        expect(TypeArgKind.double.typeIdentifier.baseType,
            equals(BaseType.doubleType));
      });

      test('(nullableDouble)', () {
        expect(TypeArgKind.nullableDouble.typeIdentifier.baseType,
            equals(BaseType.doubleType));
      });

      test('(duration)', () {
        expect(TypeArgKind.duration.typeIdentifier.name,
            equals('Windows.Foundation.TimeSpan'));
      });

      test('(nullableDuration)', () {
        expect(TypeArgKind.nullableDuration.typeIdentifier.name,
            equals('Windows.Foundation.TimeSpan'));
      });

      test('(float)', () {
        expect(TypeArgKind.float.typeIdentifier.baseType,
            equals(BaseType.floatType));
      });

      test('(nullableFloat)', () {
        expect(TypeArgKind.nullableFloat.typeIdentifier.baseType,
            equals(BaseType.floatType));
      });

      test('(guid)', () {
        expect(TypeArgKind.guid.typeIdentifier.name, equals('System.Guid'));
      });

      test('(nullableGuid)', () {
        expect(TypeArgKind.nullableGuid.typeIdentifier.name,
            equals('System.Guid'));
      });

      test('(int16)', () {
        expect(TypeArgKind.int16.typeIdentifier.baseType,
            equals(BaseType.int16Type));
      });

      test('(nullableInt16)', () {
        expect(TypeArgKind.nullableInt16.typeIdentifier.baseType,
            equals(BaseType.int16Type));
      });

      test('(int32)', () {
        expect(TypeArgKind.int32.typeIdentifier.baseType,
            equals(BaseType.int32Type));
      });

      test('(nullableInt32)', () {
        expect(TypeArgKind.nullableInt32.typeIdentifier.baseType,
            equals(BaseType.int32Type));
      });

      test('(int64)', () {
        expect(TypeArgKind.int64.typeIdentifier.baseType,
            equals(BaseType.int64Type));
      });

      test('(nullableInt64)', () {
        expect(TypeArgKind.nullableInt64.typeIdentifier.baseType,
            equals(BaseType.int64Type));
      });

      test('(loadMoreItemsResult)', () {
        expect(TypeArgKind.loadMoreItemsResult.typeIdentifier.name,
            equals('Windows.UI.Xaml.Data.LoadMoreItemsResult'));
      });

      test('(object)', () {
        expect(TypeArgKind.object.typeIdentifier.baseType,
            equals(BaseType.objectType));
      });

      test('(nullableObject)', () {
        expect(TypeArgKind.nullableObject.typeIdentifier.baseType,
            equals(BaseType.objectType));
      });

      test('(point)', () {
        expect(TypeArgKind.point.typeIdentifier.name,
            equals('Windows.Foundation.Point'));
      });

      test('(nullablePoint)', () {
        expect(TypeArgKind.nullablePoint.typeIdentifier.name,
            equals('Windows.Foundation.Point'));
      });

      test('(rect)', () {
        expect(TypeArgKind.rect.typeIdentifier.name,
            equals('Windows.Foundation.Rect'));
      });

      test('(nullableRect)', () {
        expect(TypeArgKind.nullableRect.typeIdentifier.name,
            equals('Windows.Foundation.Rect'));
      });

      test('(size)', () {
        expect(TypeArgKind.size.typeIdentifier.name,
            equals('Windows.Foundation.Size'));
      });

      test('(nullableSize)', () {
        expect(TypeArgKind.nullableSize.typeIdentifier.name,
            equals('Windows.Foundation.Size'));
      });

      test('(string)', () {
        expect(TypeArgKind.string.typeIdentifier.baseType,
            equals(BaseType.stringType));
      });

      test('(nullableString)', () {
        expect(TypeArgKind.nullableString.typeIdentifier.baseType,
            equals(BaseType.stringType));
      });

      test('(uint16)', () {
        expect(TypeArgKind.uint16.typeIdentifier.baseType,
            equals(BaseType.uint16Type));
      });

      test('(nullableUint16)', () {
        expect(TypeArgKind.nullableUint16.typeIdentifier.baseType,
            equals(BaseType.uint16Type));
      });

      test('(uint32)', () {
        expect(TypeArgKind.uint32.typeIdentifier.baseType,
            equals(BaseType.uint32Type));
      });

      test('(nullableUint32)', () {
        expect(TypeArgKind.nullableUint32.typeIdentifier.baseType,
            equals(BaseType.uint32Type));
      });

      test('(uint64)', () {
        expect(TypeArgKind.uint64.typeIdentifier.baseType,
            equals(BaseType.uint64Type));
      });

      test('(nullableUint64)', () {
        expect(TypeArgKind.nullableUint64.typeIdentifier.baseType,
            equals(BaseType.uint64Type));
      });

      test('(uri)', () {
        expect(TypeArgKind.uri.typeIdentifier.name,
            equals('Windows.Foundation.Uri'));
      });

      test('(nullableUri)', () {
        expect(TypeArgKind.nullableUri.typeIdentifier.name,
            equals('Windows.Foundation.Uri'));
      });

      test('throws an UnsupportedError', () {
        expect(() => TypeArgKind.inspectable.typeIdentifier,
            throwsUnsupportedError);
        expect(() => TypeArgKind.nullableInspectable.typeIdentifier,
            throwsUnsupportedError);
        expect(
            () => TypeArgKind.winrtEnum.typeIdentifier, throwsUnsupportedError);
        expect(() => TypeArgKind.winrtFlagsEnum.typeIdentifier,
            throwsUnsupportedError);
      });
    });
  });
}
