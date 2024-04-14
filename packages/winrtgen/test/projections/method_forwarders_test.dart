// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

  group('MethodForwardersProjection', () {
    late TypeDef typeDef1;
    late ClassProjection classProjection1;
    late MethodForwardersProjection methodForwardersProjection;
    late TypeDef typeDef2;
    late ClassProjection classProjection2;
    late MethodForwardersProjection methodForwardersProjection2;

    setUpAll(() async {
      await WinRTMetadataStore.loadMetadata();
      typeDef1 = 'Windows.Data.Json.JsonArray'.typeDef.interfaces[2];
      classProjection1 =
          ClassProjection.fromType('Windows.Data.Json.JsonArray');
      methodForwardersProjection =
          MethodForwardersProjection(typeDef1, classProjection1);
      typeDef2 = 'Windows.Data.Json.JsonObject'.typeDef.interfaces[2];
      classProjection2 =
          ClassProjection.fromType('Windows.Data.Json.JsonObject');
      methodForwardersProjection2 =
          MethodForwardersProjection(typeDef2, classProjection2);
    });

    test('isGenericInterface', () {
      expect(methodForwardersProjection.isGenericInterface, isTrue);
    });

    test('shortInterfaceName', () {
      expect(methodForwardersProjection.shortInterfaceName, 'IVector');
    });

    test('typeArgs', () {
      expect(methodForwardersProjection.typeArgs, equals('IJsonValue?'));
    });

    test('fieldIdentifier', () {
      expect(methodForwardersProjection.fieldIdentifier, '_iVector');
    });

    test('constructorArgs', () {
      expect(
          methodForwardersProjection.constructorArgs,
          equals(
              ", iterableIid: '{cb0492b6-4113-55cf-b2c5-99eb428ba493}', tObjectCreator: IJsonValue.fromPtr"));
    });

    test('interfaceInsantiation', () {
      expect(
          methodForwardersProjection.interfaceInstantiation,
          equals(
              "IVector<IJsonValue?>.fromPtr(toInterface('{d44662bc-dce3-59a8-9272-4b210f33908b}'), iterableIid: '{cb0492b6-4113-55cf-b2c5-99eb428ba493}', tObjectCreator: IJsonValue.fromPtr);"));
    });

    test('methods', () {
      expect(methodForwardersProjection.methods.length, equals(17));
    });

    test('methodProjections', () {
      final projections = methodForwardersProjection.methodProjections;
      expect(projections.length, equals(12));
      expect(projections.first.name, equals('GetAt'));
      expect(projections.first.returnType, equals('IJsonValue?'));
      expect(projections.last.name, equals('ReplaceAll'));
      expect(projections.last.returnType, equals('void'));
    });

    test('jsonObjectInsertForwarder', () {
      expect(methodForwardersProjection2.jsonObjectInsertForwarder(),
          equalsIgnoringWhitespace('''
   @override
   bool insert(String key, IJsonValue? value) =>
       _iMap.insert(key, value ?? JsonValue.createNullValue());
'''));
    });

    test('mapFirstForwarder', () {
      expect(methodForwardersProjection2.mapFirstForwarder(),
          equalsIgnoringWhitespace('''
    @override
    IIterator<IKeyValuePair<String, IJsonValue?>> first() => _iMap.first();
'''));
    });

    test('mapToMapForwarder', () {
      expect(methodForwardersProjection2.mapToMapForwarder(),
          equalsIgnoringWhitespace('''
    @override
    Map<String, IJsonValue?> toMap() => _iMap.toMap();
'''));
    });

    test('mapSubscriptAccessOperatorForwarder', () {
      expect(methodForwardersProjection2.mapSubscriptAccessOperatorForwarder(),
          equalsIgnoringWhitespace('''
    @override
    IJsonValue? operator [](String key) => _iMap[key];
'''));
    });

    test('mapSubscriptAssignmentOperatorForwarder', () {
      expect(
          methodForwardersProjection2.mapSubscriptAssignmentOperatorForwarder(),
          equalsIgnoringWhitespace('''
    @override
    void operator []=(String key, IJsonValue? value) => _iMap[key] = value;
'''));
    });

    test('vectorFirstForwarder', () {
      expect(methodForwardersProjection.vectorFirstForwarder(),
          equalsIgnoringWhitespace('''
   @override
   IIterator<IJsonValue?> first() => _iVector.first();
'''));
    });

    test('vectorToListForwarder', () {
      expect(methodForwardersProjection.vectorToListForwarder(),
          equalsIgnoringWhitespace('''
    @override
    List<IJsonValue?> toList() => _iVector.toList();
'''));
    });

    test('vectorSubscriptAccessOperatorForwarder', () {
      expect(
          methodForwardersProjection.vectorSubscriptAccessOperatorForwarder(),
          equalsIgnoringWhitespace('''
    @override
    IJsonValue? operator [](int index) => _iVector[index];
'''));
    });

    test('vectorSubscriptAssignmentOperatorForwarder', () {
      expect(
          methodForwardersProjection
              .vectorSubscriptAssignmentOperatorForwarder(),
          equalsIgnoringWhitespace('''
    @override
    void operator []=(int index, IJsonValue? value) => _iVector[index] = value;
'''));
    });

    test('vectorAddOperatorForwarder', () {
      expect(methodForwardersProjection.vectorAddOperatorForwarder(),
          equalsIgnoringWhitespace('''
    @override
    List<IJsonValue?> operator +(List<IJsonValue?> other) => toList() + other;
'''));
    });
  });
}
