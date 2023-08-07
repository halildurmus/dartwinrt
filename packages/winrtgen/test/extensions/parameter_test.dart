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

  group('arrayPassingStyle', () {
    test('fill', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.FileExtensionVector')!;
      final method = typeDef.findMethod('GetMany')!;
      final arraySizeParam = method.parameters[1];
      final arrayParam = method.parameters.last;
      expect(arraySizeParam.arrayPassingStyle, equals(ArrayPassingStyle.fill));
      expect(arrayParam.arrayPassingStyle, equals(ArrayPassingStyle.fill));
    });

    test('pass', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValueStatics')!;
      final method = typeDef.findMethod('CreateUInt8Array')!;
      final arraySizeParam = method.parameters.first;
      final arrayParam = method.parameters.last;
      expect(arraySizeParam.arrayPassingStyle, equals(ArrayPassingStyle.pass));
      expect(arrayParam.arrayPassingStyle, equals(ArrayPassingStyle.pass));
    });

    test('receive', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValue')!;
      final method = typeDef.findMethod('GetInspectableArray')!;
      final arraySizeParam = method.parameters.first;
      final arrayParam = method.parameters.last;
      expect(
          arraySizeParam.arrayPassingStyle, equals(ArrayPassingStyle.receive));
      expect(arrayParam.arrayPassingStyle, equals(ArrayPassingStyle.receive));
    });

    test('throws a StateError on unknown array-passing style', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.IPropertyValueStatics')!;
      final method = typeDef.findMethod('CreateUInt8Array')!;
      final arraySizeParam = method.parameters.first.clone()
        ..attributes = CorParamAttr.pdOut;
      expect(
        () => arraySizeParam.arrayPassingStyle,
        throwsA(
          isA<StateError>().having(
              (e) => e.message,
              'message',
              equals(
                  'Failed to determine array-passing style for parameter __valueSize')),
        ),
      );
    });
  });

  test('isPointerType', () {
    final typeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;
    final method = typeDef.findMethod('GetInspectableArray')!;
    expect(method.parameters.first.isPointerType, isTrue);
    expect(method.parameters.last.isPointerType, isFalse);
  });

  group('isSimpleArraySizeParam', () {
    final scope = MetadataStore.getScopeForNamespace('Windows.Foundation');

    test('(1)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      expect(parameter.isSimpleArraySizeParam, isTrue);
    });

    test('(2)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = 'x__dataSize';
      expect(parameter.isSimpleArraySizeParam, isFalse);
    });

    test('(3)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = '__dataSizeX';
      expect(parameter.isSimpleArraySizeParam, isFalse);
    });

    test('(4)', () {
      final parameter = Parameter.fromVoid(scope, 0)
        ..name = 'not a simple array size identifier';
      expect(parameter.isSimpleArraySizeParam, isFalse);
    });
  });

  group('toArrayParamName', () {
    final scope = MetadataStore.getScopeForNamespace('Windows.Foundation');

    test('(1)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      expect(parameter.toArrayParamName(), equals('value'));
    });

    test('(2)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = 'value';
      expect(parameter.toArrayParamName, throwsA(isA<AssertionError>()));
    });
  });

  group('toArraySizeParamName', () {
    final scope = MetadataStore.getScopeForNamespace('Windows.Foundation');

    test('(1)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = 'value';
      expect(parameter.toArraySizeParamName(), equals('__valueSize'));
    });

    test('(2)', () {
      final parameter = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      expect(parameter.toArraySizeParamName, throwsA(isA<AssertionError>()));
    });
  });
}
