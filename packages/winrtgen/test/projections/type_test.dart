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

  group('TypeProjection', () {
    test('Bool type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetBoolean');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('bool'));
      expect(typeProjection.nativeType, equals('Bool'));
      expect(typeProjection.attribute, equals('@Bool()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Char16 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetChar16');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Uint16'));
      expect(typeProjection.attribute, equals('@Uint16()'));
      expect(typeProjection.isCharType, isTrue);
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Class type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.Calendar', 'Clone');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('COMObject'));
      expect(typeProjection.nativeType, equals('COMObject'));
      expect(typeProjection.isWinRTClass, isTrue);
      expect(typeProjection.isWinRTObject, isTrue);
    });

    test('Delegate type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification', 'add_Activated');
      final typeProjection = methodProjection.parameters.first.typeProjection;
      // TypedEventHandler<ToastNotification, Object>
      expect(typeProjection.dartType, equals('VTablePointer'));
      expect(typeProjection.nativeType, equals('VTablePointer'));
      expect(typeProjection.isWinRTDelegate, isTrue);
    });

    test('Double type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetDouble');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('double'));
      expect(typeProjection.nativeType, equals('Double'));
      expect(typeProjection.attribute, equals('@Double()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Enum type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncInfo', 'get_Status');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int32'));
      expect(typeProjection.attribute, equals('@Int32()'));
      expect(typeProjection.isDartPrimitive, isFalse);
      expect(typeProjection.isWinRTEnum, isTrue);
    });

    test('FlagsEnum type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'get_Attributes');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Uint32'));
      expect(typeProjection.attribute, equals('@Uint32()'));
      expect(typeProjection.isDartPrimitive, isFalse);
      expect(typeProjection.isWinRTEnum, isTrue);
    });

    test('Float type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetSingle');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('double'));
      expect(typeProjection.nativeType, equals('Float'));
      expect(typeProjection.attribute, equals('@Float()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('GUID type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetGuid');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('GUID'));
      expect(typeProjection.nativeType, equals('GUID'));
      expect(typeProjection.exposedAsStruct, isTrue);
      expect(typeProjection.isGuid, isTrue);
      expect(typeProjection.isSpecialType, isTrue);
    });

    test('Interface type is projected correctly (1)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'ReadBuffer');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('COMObject'));
      expect(typeProjection.nativeType, equals('COMObject'));
      expect(typeProjection.isGenericType, isFalse);
      expect(typeProjection.isWinRTInterface, isTrue);
      expect(typeProjection.isWinRTObject, isTrue);
    });

    test('Interface type is projected correctly (2)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.Calendar', 'get_Languages');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('COMObject'));
      expect(typeProjection.nativeType, equals('COMObject'));
      expect(typeProjection.isGenericType, isTrue);
      expect(typeProjection.isWinRTInterface, isTrue);
      expect(typeProjection.isWinRTObject, isTrue);
    });

    test('Int16 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt16');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int16'));
      expect(typeProjection.attribute, equals('@Int16()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Int32 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int32'));
      expect(typeProjection.attribute, equals('@Int32()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Int64 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt64');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int64'));
      expect(typeProjection.attribute, equals('@Int64()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Object type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.XmlDocument', 'get_NodeValue');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('COMObject'));
      expect(typeProjection.nativeType, equals('COMObject'));
      expect(typeProjection.isObjectType, isTrue);
      expect(typeProjection.isWinRTObject, isTrue);
    });

    test('String type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetString');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('IntPtr'));
      expect(typeProjection.attribute, equals('@IntPtr()'));
      expect(typeProjection.isDartPrimitive, isTrue);
      expect(typeProjection.isString, isTrue);
    });

    test('Struct type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetPoint');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('NativePoint'));
      expect(typeProjection.nativeType, equals('NativePoint'));
      expect(typeProjection.exposedAsStruct, isTrue);
    });

    test('UInt8 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetUInt8');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Uint8'));
      expect(typeProjection.attribute, equals('@Uint8()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('UInt16 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetUInt16');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Uint16'));
      expect(typeProjection.attribute, equals('@Uint16()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('UInt32 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetUInt32');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Uint32'));
      expect(typeProjection.attribute, equals('@Uint32()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('UInt64 type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetUInt64');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Uint64'));
      expect(typeProjection.attribute, equals('@Uint64()'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Void type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IClosable', 'Close');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('void'));
      expect(typeProjection.nativeType, equals('Void'));
      expect(typeProjection.isDartPrimitive, isTrue);
    });

    test('Windows.Foundation.DateTime type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetDateTime');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int64'));
      expect(typeProjection.attribute, equals('@Int64()'));
      expect(typeProjection.exposedAsStruct, isFalse);
      expect(typeProjection.isDartPrimitive, isFalse);
      expect(typeProjection.isDateTime, isTrue);
      expect(typeProjection.isSpecialType, isTrue);
    });

    test(
        'Windows.Foundation.EventRegistrationToken type is projected correctly',
        () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification', 'remove_Dismissed');
      final typeProjection = methodProjection.parameters.first.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('IntPtr'));
      expect(typeProjection.attribute, equals('@IntPtr()'));
      expect(typeProjection.exposedAsStruct, isFalse);
      expect(typeProjection.isDartPrimitive, isTrue);
      expect(typeProjection.isSpecialType, isTrue);
    });

    test('Windows.Foundation.HResult type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncInfo', 'get_ErrorCode');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int32'));
      expect(typeProjection.attribute, equals('@Int32()'));
      expect(typeProjection.exposedAsStruct, isFalse);
      expect(typeProjection.isDartPrimitive, isTrue);
      expect(typeProjection.isSpecialType, isTrue);
    });

    test('Windows.Foundation.TimeSpan type is projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetTimeSpan');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int64'));
      expect(typeProjection.attribute, equals('@Int64()'));
      expect(typeProjection.exposedAsStruct, isFalse);
      expect(typeProjection.isDartPrimitive, isFalse);
      expect(typeProjection.isSpecialType, isTrue);
      expect(typeProjection.isTimeSpan, isTrue);
    });

    test('FillArray style parameters are projected correctly', () {
      // virtual HRESULT STDMETHODCALLTYPE GetMany(
      //   UINT32 startIndex,
      //   UINT32 itemsLength,
      //   HSTRING* items
      // )
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'GetMany');
      expect(methodProjection.parameters.length, equals(3));

      final itemsSizeParam = methodProjection.parameters[1];
      expect(itemsSizeParam.name, equals('__itemsSize'));
      expect(itemsSizeParam.isInParam, isTrue);
      final itemsSizeParamProjection = itemsSizeParam.typeProjection;
      expect(itemsSizeParamProjection.dartType, equals('int'));
      expect(itemsSizeParamProjection.nativeType, equals('Uint32'));
      expect(itemsSizeParamProjection.isDartPrimitive, isTrue);

      final itemsParam = methodProjection.parameters.last;
      expect(itemsParam.name, equals('items'));
      expect(itemsParam.isOutParam, isTrue);
      final itemsParamProjection = itemsParam.typeProjection;
      expect(itemsParamProjection.dartType, equals('Pointer<IntPtr>'));
      expect(itemsParamProjection.nativeType, equals('Pointer<IntPtr>'));
    });

    test('PassArray style parameters are projected correctly', () {
      // virtual HRESULT STDMETHODCALLTYPE CreateUInt8Array(
      //   UINT32 valueLength,
      //   BYTE* value
      // )
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateUInt8Array');
      expect(methodProjection.parameters.length, equals(2));

      final valueSizeParam = methodProjection.parameters.first;
      expect(valueSizeParam.name, equals('__valueSize'));
      expect(valueSizeParam.isInParam, isTrue);
      final valueSizeParamProjection = valueSizeParam.typeProjection;
      expect(valueSizeParamProjection.dartType, equals('int'));
      expect(valueSizeParamProjection.nativeType, equals('Uint32'));
      expect(valueSizeParamProjection.isDartPrimitive, isTrue);

      final valueParam = methodProjection.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.isInParam, isTrue);
      final valueParamProjection = valueParam.typeProjection;
      expect(valueParamProjection.dartType, equals('Pointer<Uint8>'));
      expect(valueParamProjection.nativeType, equals('Pointer<Uint8>'));
    });

    test('ReceiveArray style parameters are projected correctly (1)', () {
      // virtual HRESULT STDMETHODCALLTYPE GetInspectableArray(
      //   UINT32* valueLength,
      //   IInspectable*** value
      // )
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInspectableArray');
      expect(methodProjection.parameters.length, equals(2));

      final valueSizeParam = methodProjection.parameters.first;
      expect(valueSizeParam.name, equals('__valueSize'));
      expect(valueSizeParam.isOutParam, isTrue);
      final valueSizeParamProjection = valueSizeParam.typeProjection;
      expect(valueSizeParamProjection.dartType, equals('Pointer<Uint32>'));
      expect(valueSizeParamProjection.nativeType, equals('Pointer<Uint32>'));
      expect(valueSizeParamProjection.isPointer, isTrue);

      final valueParam = methodProjection.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.isOutParam, isTrue);
      final valueParamProjection = valueParam.typeProjection;
      expect(
          valueParamProjection.dartType, equals('Pointer<Pointer<COMObject>>'));
      expect(valueParamProjection.nativeType,
          equals('Pointer<Pointer<COMObject>>'));
    });

    test('ReceiveArray style parameters are projected correctly (2)', () {
      // virtual HRESULT STDMETHODCALLTYPE GetUInt8Array(
      //   UINT32* valueLength,
      //   BYTE** value
      // )
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetUInt8Array');
      expect(methodProjection.parameters.length, equals(2));

      final valueSizeParam = methodProjection.parameters.first;
      expect(valueSizeParam.name, equals('__valueSize'));
      expect(valueSizeParam.isOutParam, isTrue);
      final valueSizeParamProjection = valueSizeParam.typeProjection;
      expect(valueSizeParamProjection.dartType, equals('Pointer<Uint32>'));
      expect(valueSizeParamProjection.nativeType, equals('Pointer<Uint32>'));
      expect(valueSizeParamProjection.isPointer, isTrue);

      final valueParam = methodProjection.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.isOutParam, isTrue);
      final valueParamProjection = valueParam.typeProjection;
      expect(valueParamProjection.dartType, equals('Pointer<Pointer<Uint8>>'));
      expect(
          valueParamProjection.nativeType, equals('Pointer<Pointer<Uint8>>'));
    });

    test('toString', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.Calendar', 'Clone');
      final typeProjection = methodProjection.typeProjection;
      expect(
          typeProjection.toString(),
          equals(
              "TypeProjection(Calendar, isInParam: false, nativeType: COMObject, dartType: COMObject, pointer: Instance of 'TypeTuple')"));
    });
  });
}
