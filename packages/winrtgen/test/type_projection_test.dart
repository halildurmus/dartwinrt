// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('DateTime value types are projected correctly', () {
    final scope =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;
    final typeDef = scope.findMethod('GetDateTime')!;
    final dateTime = typeDef.returnType.typeIdentifier;
    final typeProjection = WinRTTypeProjection(dateTime);

    // TODO: Test assumption that this is passed on the wire as a Uint64.
    expect(typeProjection.dartType, equals('int'));
    expect(typeProjection.nativeType, equals('Uint64'));
    expect(typeProjection.isDartPrimitive, isTrue);
  });

  test('EventRegistrationToken types are projected correctly', () {
    final scope = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.IToastNotification')!;
    final method = scope.findMethod('remove_Dismissed')!;
    final token = method.parameters.first;
    final typeProjection = WinRTTypeProjection(token.typeIdentifier);

    expect(typeProjection.dartType, equals('int'));
    expect(typeProjection.nativeType, equals('IntPtr'));
    expect(typeProjection.isDartPrimitive, isTrue);
  });

  test('Event handler types are projected correctly', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.ToastNotification')!;
    final method = winTypeDef.findMethod('add_Activated')!;
    final param = method.parameters.first;
    final projection = WinRTTypeProjection(param.typeIdentifier);

    // TypedEventHandler<ToastNotification, object>
    expect(projection.projection.dartType,
        equals('Pointer<NativeFunction<TypedEventHandler>>'));
  });

  test('Simple array types are projected correctly', () {
    final scope = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    final method = scope.findMethod('CreateUInt8Array')!;
    expect(method.parameters.length, equals(2));

    final valueSizeParam = method.parameters.first;
    expect(valueSizeParam.name, equals('__valueSize'));

    final valueSizeParamProjection =
        WinRTTypeProjection(valueSizeParam.typeIdentifier);
    expect(valueSizeParamProjection.dartType, equals('int'));
    expect(valueSizeParamProjection.nativeType, equals('Uint32'));
    expect(valueSizeParamProjection.isDartPrimitive, isTrue);

    final valueParam = method.parameters.last;
    expect(valueParam.name, equals('value'));
    final valueParamProjection = WinRTTypeProjection(valueParam.typeIdentifier);
    expect(valueParamProjection.dartType, equals('Pointer<Uint8>'));
    expect(valueParamProjection.nativeType, equals('Pointer<Uint8>'));
    expect(valueParamProjection.isDartPrimitive, isTrue);
  });

  test('Reference simple array COM types are projected correctly', () {
    // virtual HRESULT STDMETHODCALLTYPE GetInspectableArray(
    //   UINT32* valueLength,
    //   IInspectable*** value
    // )
    final scope =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;
    final method = scope.findMethod('GetInspectableArray')!;
    expect(method.parameters.length, equals(2));

    final valueSizeParam = method.parameters.first;
    expect(valueSizeParam.name, equals('__valueSize'));
    final valueSizeParamProjection =
        WinRTTypeProjection(valueSizeParam.typeIdentifier);
    expect(valueSizeParamProjection.dartType, equals('Pointer<Uint32>'));
    expect(valueSizeParamProjection.nativeType, equals('Pointer<Uint32>'));
    expect(valueSizeParamProjection.isDartPrimitive, isTrue);

    final valueParam = method.parameters.last;
    expect(valueParam.name, equals('value'));
    final valueParamProjection = WinRTTypeProjection(valueParam.typeIdentifier);
    expect(
        valueParamProjection.dartType, equals('Pointer<Pointer<COMObject>>'));
    expect(
        valueParamProjection.nativeType, equals('Pointer<Pointer<COMObject>>'));
    expect(valueParamProjection.isDartPrimitive, isTrue);
  });

  test('Reference simple array value types are projected correctly', () {
    // virtual HRESULT STDMETHODCALLTYPE GetUInt8Array(
    //   UINT32* valueLength,
    //   BYTE** value
    // )
    final scope =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;
    final method = scope.findMethod('GetUInt8Array')!;
    expect(method.parameters.length, equals(2));

    final valueSizeParam = method.parameters.first;
    expect(valueSizeParam.name, equals('__valueSize'));
    final valueSizeParamProjection =
        WinRTTypeProjection(valueSizeParam.typeIdentifier);
    expect(valueSizeParamProjection.dartType, equals('Pointer<Uint32>'));
    expect(valueSizeParamProjection.nativeType, equals('Pointer<Uint32>'));
    expect(valueSizeParamProjection.isDartPrimitive, isTrue);

    final valueParam = method.parameters.last;
    expect(valueParam.name, equals('value'));
    final valueParamProjection = WinRTTypeProjection(valueParam.typeIdentifier);
    expect(valueParamProjection.dartType, equals('Pointer<Pointer<Uint8>>'));
    expect(valueParamProjection.nativeType, equals('Pointer<Pointer<Uint8>>'));
    expect(valueParamProjection.isDartPrimitive, isTrue);
  });
}
