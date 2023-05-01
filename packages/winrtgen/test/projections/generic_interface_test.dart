// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
      'Windows.Foundation.IAsyncOperation`1', TypeArg.bool_);

  group('GenericInterfaceProjection', () {
    test('projects something', () {
      final output = asyncOperationBoolProjection.toString();
      expect(output, isNotEmpty);
      expect(output, contains('_IAsyncOperationBool'));
    });

    test('from factory constructor throws if typeArg2 is not specified', () {
      expect(
          () => GenericInterfaceProjection.from(
              'Windows.Foundation.Collections.IMap`2', TypeArg.string),
          throwsA(isA<ArgumentError>()));
    });

    test('from factory constructor throws if type is not found', () {
      expect(
          () => GenericInterfaceProjection.from(
              'Windows.Foo.IBar', TypeArg.bool_),
          throwsA(isA<Exception>()));
    });
  });

  group('WinRT generic interface', () {
    group('has correct formatted type args', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.formattedTypeArgs, equals('bool'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.nullableInt32);
        expect(projection.formattedTypeArgs, equals('int?'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArg.nullableInspectable);
        expect(projection.formattedTypeArgs, equals('TResult'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.winrtEnum);
        expect(projection.formattedTypeArgs, equals('TResult'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.winrtFlagsEnum);
        expect(projection.formattedTypeArgs, equals('TResult'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.formattedTypeArgs, equals('String, String'));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.guid,
            TypeArg.nullableObject);
        expect(projection.formattedTypeArgs, equals('Guid, Object?'));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.nullableInspectable);
        expect(projection.formattedTypeArgs, equals('String, V'));
      });

      test('(9)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.winrtEnum,
            TypeArg.nullableInspectable);
        expect(projection.formattedTypeArgs, equals('K, V'));
      });
    });

    group('has correct type params', () {
      test('(1)', () {
        expect(asyncOperationBoolProjection.typeParams, isEmpty);
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.nullableInt32);
        expect(projection.typeParams, isEmpty);
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1',
            TypeArg.nullableInspectable);
        expect(projection.typeParams, equals('<TResult>'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.winrtEnum);
        expect(projection.typeParams, equals('<TResult>'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.winrtFlagsEnum);
        expect(projection.typeParams, equals('<TResult>'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.typeParams, isEmpty);
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.guid,
            TypeArg.nullableObject);
        expect(projection.typeParams, isEmpty);
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.nullableInspectable);
        expect(projection.typeParams, equals('<V>'));
      });

      test('(9)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.winrtEnum,
            TypeArg.nullableInspectable);
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
            TypeArg.nullableInspectable);
        expect(projection.className, equals('_IAsyncOperationInspectable'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.nullableInspectable);
        expect(projection.className, equals('_IMapStringInspectable'));
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
            TypeArg.nullableInspectable);
        expect(
            projection.classHeader,
            equals(
                'final class _IAsyncOperationInspectable<TResult> extends IAsyncOperation<TResult>'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.winrtEnum);
        expect(
            projection.classHeader,
            equals(
                'final class _IAsyncOperationWinRTEnum<TResult> extends IAsyncOperation<TResult>'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.nullableInspectable);
        expect(
            projection.classHeader,
            equals(
                'final class _IMapStringInspectable<V> extends IMap<String, V>'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.guid,
            TypeArg.nullableObject);
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
            TypeArg.nullableInspectable);
        expect(
            projection.namedConstructor,
            equals(
                '_IAsyncOperationInspectable.fromPtr(super.ptr, {required this.creator});'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.IAsyncOperation`1', TypeArg.winrtEnum);
        expect(
            projection.namedConstructor,
            equals(
                '_IAsyncOperationWinRTEnum.fromPtr(super.ptr, {required this.enumCreator});'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.object);
        expect(
            projection.namedConstructor,
            equals(
                '_IMapStringObject.fromPtr(super.ptr, {required super.iterableIid});'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.nullableInspectable);
        expect(
            projection.namedConstructor,
            equals(
                '_IMapStringInspectable.fromPtr(super.ptr, {required super.iterableIid, required this.creator}) : super(creator: creator);'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.winrtEnum,
            TypeArg.nullableInspectable);
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
            'Windows.Foundation.IReference`1', TypeArg.nullableInt32);
        expect(projection.methodProjections.length, equals(1));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IIterator`1', TypeArg.string);
        expect(projection.methodProjections.length, equals(2));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IKeyValuePair`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.length, equals(2));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.length, equals(4));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMapView`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.length, equals(2));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArg.string);
        expect(projection.methodProjections.length, equals(7));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArg.string);
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
            'Windows.Foundation.IReference`1', TypeArg.nullableInt32);
        expect(projection.methodProjections.first.name, equals('get_Value'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IIterator`1', TypeArg.string);
        expect(projection.methodProjections.first.name, equals('get_Current'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IKeyValuePair`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.first.name, equals('get_Key'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.first.name, equals('Lookup'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMapView`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.first.name, equals('Lookup'));
      });

      test('(7)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArg.string);
        expect(projection.methodProjections.first.name, equals('GetAt'));
      });

      test('(8)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArg.string);
        expect(projection.methodProjections.first.name, equals('GetAt'));
      });
    });

    group('has correct last method', () {
      test('(1)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IIterator`1', TypeArg.string);
        expect(projection.methodProjections.last.name, equals('GetMany'));
      });

      test('(2)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IKeyValuePair`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.last.name, equals('get_Value'));
      });

      test('(3)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMap`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.last.name, equals('Remove'));
      });

      test('(4)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IMapView`2',
            TypeArg.string,
            TypeArg.string);
        expect(projection.methodProjections.last.name, equals('HasKey'));
      });

      test('(5)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVector`1', TypeArg.string);
        expect(projection.methodProjections.last.name, equals('ReplaceAll'));
      });

      test('(6)', () {
        final projection = GenericInterfaceProjection.from(
            'Windows.Foundation.Collections.IVectorView`1', TypeArg.string);
        expect(projection.methodProjections.last.name, equals('GetMany'));
      });
    });
  });
}
