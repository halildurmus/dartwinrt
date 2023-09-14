// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('Parameter', () {
    setUpAll(WinRTMetadataStore.loadMetadata);

    group('arrayPassingStyle', () {
      test('fill', () {
        final typeDef = 'Windows.Storage.Pickers.FileExtensionVector'.typeDef;
        final method = typeDef.findMethod('GetMany')!;
        final [_, arraySizeParam, arrayParam] = method.parameters;
        expect(
            arraySizeParam.arrayPassingStyle, equals(ArrayPassingStyle.fill));
        expect(arrayParam.arrayPassingStyle, equals(ArrayPassingStyle.fill));
      });

      test('pass', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateUInt8Array')!;
        final [arraySizeParam, arrayParam] = method.parameters;
        expect(
            arraySizeParam.arrayPassingStyle, equals(ArrayPassingStyle.pass));
        expect(arrayParam.arrayPassingStyle, equals(ArrayPassingStyle.pass));
      });

      test('receive', () {
        final typeDef = 'Windows.Foundation.IPropertyValue'.typeDef;
        final method = typeDef.findMethod('GetInspectableArray')!;
        final [arraySizeParam, arrayParam] = method.parameters;
        expect(arraySizeParam.arrayPassingStyle,
            equals(ArrayPassingStyle.receive));
        expect(arrayParam.arrayPassingStyle, equals(ArrayPassingStyle.receive));
      });

      test('throws a StateError on unknown array-passing style', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
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
                    'Failed to determine array-passing style for parameter __valueSize.')),
          ),
        );
      });
    });

    test('isPointerType', () {
      final typeDef = 'Windows.Foundation.IPropertyValue'.typeDef;
      final method = typeDef.findMethod('GetInspectableArray')!;
      final [param1, param2] = method.parameters;
      expect(param1.isPointerType, isTrue);
      expect(param2.isPointerType, isFalse);
    });

    test('isSimpleArraySizeParam', () {
      final scope = MetadataStore.getScopeForType('Windows.Foundation');
      final arraySizeParam = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      final arrayParam = Parameter.fromVoid(scope, 0)..name = 'value';
      expect(arraySizeParam.isSimpleArraySizeParam, isTrue);
      expect(arrayParam.isSimpleArraySizeParam, isFalse);
    });

    test('toArrayParamName', () {
      final scope = MetadataStore.getScopeForType('Windows.Foundation');
      final arraySizeParam = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      final arrayParam = Parameter.fromVoid(scope, 0)..name = 'value';
      expect(arraySizeParam.toArrayParamName(), equals('value'));
      expect(arrayParam.toArrayParamName, throwsA(isA<AssertionError>()));
    });

    test('toArraySizeParamName', () {
      final scope = MetadataStore.getScopeForType('Windows.Foundation');
      final arraySizeParam = Parameter.fromVoid(scope, 0)..name = '__valueSize';
      final arrayParam = Parameter.fromVoid(scope, 0)..name = 'value';
      expect(arrayParam.toArraySizeParamName(), equals('__valueSize'));
      expect(
          arraySizeParam.toArraySizeParamName, throwsA(isA<AssertionError>()));
    });
  });
}
