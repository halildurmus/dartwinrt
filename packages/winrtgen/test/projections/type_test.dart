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

  group('Windows.Foundation.', () {
    test('DateTime types are projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetDateTime');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int64'));
      expect(typeProjection.isDartPrimitive, isFalse);
      expect(typeProjection.exposedAsStruct, isFalse);
    });

    test('EventRegistrationToken types are projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification', 'remove_Dismissed');
      final typeProjection = methodProjection.parameters.first.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('IntPtr'));
      expect(typeProjection.isDartPrimitive, isTrue);
      expect(typeProjection.exposedAsStruct, isFalse);
    });

    test('HResult types are projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncInfo', 'get_ErrorCode');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int32'));
      expect(typeProjection.isDartPrimitive, isTrue);
      expect(typeProjection.exposedAsStruct, isFalse);
    });

    test('TimeSpan types are projected correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetTimeSpan');
      final typeProjection = methodProjection.typeProjection;
      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('Int64'));
      expect(typeProjection.isDartPrimitive, isFalse);
      expect(typeProjection.exposedAsStruct, isFalse);
    });
  });

  test('Delegate types are projected correctly', () {
    final methodProjection = MethodProjection.fromTypeAndMethodName(
        'Windows.UI.Notifications.IToastNotification', 'add_Activated');
    final typeProjection = methodProjection.parameters.first.typeProjection;
    // TypedEventHandler<ToastNotification, object>
    expect(typeProjection.dartType, equals('VTablePointer'));
    expect(typeProjection.nativeType, equals('VTablePointer'));
  });

  group('Simple array types are projected correctly', () {
    test('(FillArray style)', () {
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

      final itemsParam = methodProjection.parameters.last;
      expect(itemsParam.name, equals('items'));
      expect(itemsParam.isOutParam, isTrue);
      final itemsParamProjection = itemsParam.typeProjection;
      expect(itemsParamProjection.dartType, equals('Pointer<IntPtr>'));
      expect(itemsParamProjection.nativeType, equals('Pointer<IntPtr>'));
    });

    test('(PassArray style)', () {
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

      final valueParam = methodProjection.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.isInParam, isTrue);
      final valueParamProjection = valueParam.typeProjection;
      expect(valueParamProjection.dartType, equals('Pointer<Uint8>'));
      expect(valueParamProjection.nativeType, equals('Pointer<Uint8>'));
    });

    test('(ReceiveArray style (1))', () {
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

      final valueParam = methodProjection.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.isOutParam, isTrue);
      final valueParamProjection = valueParam.typeProjection;
      expect(
          valueParamProjection.dartType, equals('Pointer<Pointer<COMObject>>'));
      expect(valueParamProjection.nativeType,
          equals('Pointer<Pointer<COMObject>>'));
    });

    test('(ReceiveArray style (2))', () {
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

      final valueParam = methodProjection.parameters.last;
      expect(valueParam.name, equals('value'));
      expect(valueParam.isOutParam, isTrue);
      final valueParamProjection = valueParam.typeProjection;
      expect(valueParamProjection.dartType, equals('Pointer<Pointer<Uint8>>'));
      expect(
          valueParamProjection.nativeType, equals('Pointer<Pointer<Uint8>>'));
    });
  });
}
