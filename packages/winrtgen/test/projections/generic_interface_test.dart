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

  final asyncOperationBoolProjection = GenericInterfaceProjection.from(
      'Windows.Foundation.IAsyncOperation`1', TypeArgKind.bool_);

  group('GenericInterfacePartFileProjection', () {
    test('projects something', () {
      const genericType = GenericTypeWithOneTypeArg(
          'Windows.Foundation.IReference`1', {TypeArgKind.string});
      final output = GenericInterfacePartFileProjection(genericType).toString();
      expect(output, isNotEmpty);
      expect(output, contains('_IReferenceString'));
    });
  });

  group('GenericInterfaceProjection', () {
    test('projects something', () {
      final output = asyncOperationBoolProjection.toString();
      expect(output, isNotEmpty);
      expect(output, contains('_IAsyncOperationBool'));
    });

    test('from factory constructor throws if typeArg2 is not specified', () {
      expect(
          () => GenericInterfaceProjection.from(
              'Windows.Foundation.Collections.IMap`2', TypeArgKind.string),
          throwsA(isA<ArgumentError>()));
    });

    test('from factory constructor throws if type is not found', () {
      expect(
          () => GenericInterfaceProjection.from(
              'Windows.Foo.IBar', TypeArgKind.bool_),
          throwsA(isA<WinRTGenException>()));
    });
  });

  group('WinRT generic interface', () {
    group('type arguments are supported', () {
      void verifySupportedTypeArgKindsOf(GenericType genericType) {
        switch (genericType) {
          case final GenericTypeWithOneTypeArg type:
            final GenericTypeWithOneTypeArg(
              :typeArgKinds,
              :typeArgKindsInMetadata
            ) = type;

            final diff = typeArgKindsInMetadata.difference(typeArgKinds);
            if (diff.isNotEmpty) {
              fail("$genericType does not support these TypeArgKinds: $diff");
            }
          case final GenericTypeWithTwoTypeArgs type:
            final GenericTypeWithTwoTypeArgs(
              :typeArgKindPairs,
              :typeArgKindPairsInMetadata
            ) = type;

            final diff =
                typeArgKindPairsInMetadata.difference(typeArgKindPairs);
            if (diff.isNotEmpty) {
              fail(
                  "$genericType does not support these TypeArgKind pairs: $diff");
            }
        }
      }

      test('(IAsyncOperation)', () {
        verifySupportedTypeArgKindsOf(GenericType.iasyncOperation);
      });

      test('(IMap)', () {
        verifySupportedTypeArgKindsOf(GenericType.imap);
      });

      test('(IMapView)', () {
        verifySupportedTypeArgKindsOf(GenericType.imapView);
      });

      test('(IReference)', () {
        verifySupportedTypeArgKindsOf(GenericType.ireference);
      });

      test('(IVector)', () {
        verifySupportedTypeArgKindsOf(GenericType.ivector);
      });

      test('(IVectorView)', () {
        verifySupportedTypeArgKindsOf(GenericType.ivectorView);
      });
    });

    group('has correct formatted type args', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.formattedTypeArgs, equals('bool'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.nullableInt32);
        expect(projection.formattedTypeArgs, equals('int?'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArgKind.nullableInspectable);
        expect(projection.formattedTypeArgs, equals('TResult'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.winrtEnum);
        expect(projection.formattedTypeArgs, equals('TResult'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.winrtFlagsEnum);
        expect(projection.formattedTypeArgs, equals('TResult'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.formattedTypeArgs, equals('String, String'));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.guid,
            TypeArgKind.nullableObject);
        expect(projection.formattedTypeArgs, equals('Guid, Object?'));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.nullableInspectable);
        expect(projection.formattedTypeArgs, equals('String, V'));
      });

      test('(9)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.winrtEnum,
            TypeArgKind.nullableInspectable);
        expect(projection.formattedTypeArgs, equals('K, V'));
      });

      test('(10)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1',
            TypeArgKind.basicGeoposition);
        expect(projection.formattedTypeArgs, equals('BasicGeoposition'));
      });
    });

    group('has correct type params', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.typeParams, isEmpty);
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.nullableInt32);
        expect(projection.typeParams, isEmpty);
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArgKind.nullableInspectable);
        expect(projection.typeParams, equals('<TResult>'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.winrtEnum);
        expect(projection.typeParams, equals('<TResult>'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.winrtFlagsEnum);
        expect(projection.typeParams, equals('<TResult>'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.typeParams, isEmpty);
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.guid,
            TypeArgKind.nullableObject);
        expect(projection.typeParams, isEmpty);
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.nullableInspectable);
        expect(projection.typeParams, equals('<V>'));
      });

      test('(9)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.winrtEnum,
            TypeArgKind.nullableInspectable);
        expect(projection.typeParams, equals('<K, V>'));
      });
    });

    group('has correct class name', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.className,
            equals('_IAsyncOperationBool'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArgKind.nullableInspectable);
        expect(projection.className, equals('_IAsyncOperationInspectable'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.nullableInspectable);
        expect(projection.className, equals('_IMapStringInspectable'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArgKind.sizeUint32);
        expect(projection.className, equals('_IVectorSizeUInt32'));
      });
    });

    group('has correct class header', () {
      test('(1)', () {
        expect(
            asyncOperationBoolProjection.classHeader,
            equals(
                'final class _IAsyncOperationBool extends IAsyncOperation<bool>'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArgKind.nullableInspectable);
        expect(
            projection.classHeader,
            equals(
                'final class _IAsyncOperationInspectable<TResult> extends IAsyncOperation<TResult>'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.winrtEnum);
        expect(
            projection.classHeader,
            equals(
                'final class _IAsyncOperationWinRTEnum<TResult> extends IAsyncOperation<TResult>'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.nullableInspectable);
        expect(
            projection.classHeader,
            equals(
                'final class _IMapStringInspectable<V> extends IMap<String, V>'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.guid,
            TypeArgKind.nullableObject);
        expect(projection.classHeader,
            equals('final class _IMapGuidObject extends IMap<Guid, Object?>'));
      });
    });

    group('has correct named constructor', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.namedConstructor,
            equals('_IAsyncOperationBool.fromPtr(super.ptr);'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArgKind.nullableInspectable);
        expect(
            projection.namedConstructor,
            equals(
                '_IAsyncOperationInspectable.fromPtr(super.ptr, {required this.creator});'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArgKind.winrtEnum);
        expect(
            projection.namedConstructor,
            equals(
                '_IAsyncOperationWinRTEnum.fromPtr(super.ptr, {required this.enumCreator});'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArgKind.int32);
        expect(
            projection.namedConstructor,
            equals(
                '_IVectorInt32.fromPtr(super.ptr, {required super.iterableIid, super.intType});'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArgKind.float);
        expect(
            projection.namedConstructor,
            equals(
                '_IVectorViewFloat.fromPtr(super.ptr, {required super.iterableIid, super.doubleType});'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.object);
        expect(
            projection.namedConstructor,
            equals(
                '_IMapStringObject.fromPtr(super.ptr, {required super.iterableIid});'));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.nullableInspectable);
        expect(
            projection.namedConstructor,
            equals(
                '_IMapStringInspectable.fromPtr(super.ptr, {required super.iterableIid, required this.creator}) : super(creator: creator);'));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.winrtEnum,
            TypeArgKind.nullableInspectable);
        expect(
            projection.namedConstructor,
            equals(
                '_IMapWinRTEnumInspectable.fromPtr(super.ptr, {required super.iterableIid, required this.enumKeyCreator, required this.creator}) : super(enumKeyCreator: enumKeyCreator, creator: creator);'));
      });
    });

    group('has correct number of methods', () {
      test('(1)', () {
        expect(
            asyncOperationBoolProjection.methodProjections.length, equals(1));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IReference`1', TypeArgKind.nullableInt32);
        expect(projection.methodProjections.length, equals(1));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IIterator`1', TypeArgKind.string);
        expect(projection.methodProjections.length, equals(2));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IKeyValuePair`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.length, equals(2));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.length, equals(4));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMapView`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.length, equals(2));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArgKind.string);
        expect(projection.methodProjections.length, equals(7));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArgKind.string);
        expect(projection.methodProjections.length, equals(3));
      });
    });

    group('has correct first method', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.methodProjections.first.name,
            equals('GetResults'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IReference`1', TypeArgKind.nullableInt32);
        expect(projection.methodProjections.first.name, equals('get_Value'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IIterator`1', TypeArgKind.string);
        expect(projection.methodProjections.first.name, equals('get_Current'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IKeyValuePair`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.first.name, equals('get_Key'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.first.name, equals('Lookup'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMapView`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.first.name, equals('Lookup'));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArgKind.string);
        expect(projection.methodProjections.first.name, equals('GetAt'));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArgKind.string);
        expect(projection.methodProjections.first.name, equals('GetAt'));
      });
    });

    group('has correct last method', () {
      test('(1)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IIterator`1', TypeArgKind.string);
        expect(projection.methodProjections.last.name, equals('GetMany'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IKeyValuePair`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.last.name, equals('get_Value'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.last.name, equals('Remove'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMapView`2',
            TypeArgKind.string,
            TypeArgKind.string);
        expect(projection.methodProjections.last.name, equals('HasKey'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArgKind.string);
        expect(projection.methodProjections.last.name, equals('ReplaceAll'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArgKind.string);
        expect(projection.methodProjections.last.name, equals('GetMany'));
      });
    });
  });
}
