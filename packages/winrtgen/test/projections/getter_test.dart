// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

import 'utilities.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  setUpAll(WinRTMetadataStore.loadMetadata);

  group('GetterProjection', () {
    test('projects something', () {
      final output = GetterProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'get_NumeralSystem')
          .toString();
      expect(output, isNotEmpty);
      expect(output, contains('numeralSystem'));
    });

    test(
        'fromTypeAndMethodName constructor throws a StateError if type is not found',
        () {
      expect(
          () => GetterProjection.fromTypeAndMethodName(
              'Windows.Foo.IBar', 'get_Foo'),
          throwsStateError);
    });

    test(
        'fromTypeAndMethodName constructor throws an ArgumentError if method name is invalid',
        () {
      expect(
          () => GetterProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'NumeralSystem'),
          throwsArgumentError);
    });
  });

  group('WinRT getter', () {
    test('name is correctly converted to camelCase', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Networking.IHostName', 'get_IPInformation');
      expect(projection.camelCasedName, equals('ipInformation'));
    });

    test('annotated with @Deprecated', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeocoordinate', 'get_Latitude');
      expect(projection.method.isDeprecated, isTrue);
      expect(
          projection.toString(),
          contains('@Deprecated("Latitude may be altered or unavailable after '
              'Windows 8.1. Instead, use Point.Position.Latitude")'));
    });

    test('has correct shortForm', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumeralSystem');
      expect(projection.shortForm, equals('numeralSystem'));
    });

    test('projects bool', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_IsDaylightSavingTime');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('bool'));
      expect(projection.header, equals('bool get isDaylightSavingTime'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Bool>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Bool> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.value;'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects class', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Foundation.IUriRuntimeClass', 'get_QueryParsed');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('WwwFormUrlDecoder?'));
      expect(projection.header, equals('WwwFormUrlDecoder? get queryParsed'));
      expect(projection.paramIdentifier, equals('ppWwwFormUrlDecoder'));
      expect(projection.preambles,
          equals(['final ppWwwFormUrlDecoder = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> ppWwwFormUrlDecoder)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> ppWwwFormUrlDecoder)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, ppWwwFormUrlDecoder'));
      expect(projection.parametersPostamble, isEmpty);
      expect(
          projection.failedCheck,
          equals(failedCheck(
              freeRetVal: true, identifier: 'ppWwwFormUrlDecoder')));
      expect(projection.nullCheck, equals(nullCheck('ppWwwFormUrlDecoder')));
      expect(projection.returnStatement,
          equals('return WwwFormUrlDecoder.fromPtr(ppWwwFormUrlDecoder);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects DateTime', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.FileProperties.IBasicProperties',
          'get_DateModified');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('DateTime'));
      expect(projection.header, equals('DateTime get dateModified'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Int64>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int64> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return value.toDartDateTime();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects delegate', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncAction', 'get_Completed');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Pointer<COMObject>'));
      expect(projection.header, equals('Pointer<COMObject> get completed'));
      expect(projection.paramIdentifier, equals('handler'));
      expect(projection.preambles,
          equals(['final handler = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> handler)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> handler)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, handler'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'handler')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return handler;'));
      expect(projection.postambles, isEmpty);
    });

    test('projects double', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeocoordinate', 'get_Latitude');
      expect(
          projection.annotations,
          equals([
            '@Deprecated("Latitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Latitude")'
          ]));
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('double'));
      expect(projection.header, equals('double get latitude'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Double>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Double> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.value;'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects Duration', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.System.Power.IPowerManagerStatics',
          'get_RemainingDischargeTime');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('Duration'));
      expect(projection.header, equals('Duration get remainingDischargeTime'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Int64>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int64> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return value.toDartDuration();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects enum', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'get_ViewMode');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('PickerViewMode'));
      expect(projection.header, equals('PickerViewMode get viewMode'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int32> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return PickerViewMode.from(value.value);'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects Flags enum', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'get_Attributes');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('FileAttributes'));
      expect(projection.header, equals('FileAttributes get attributes'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Uint32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Uint32> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return FileAttributes.from(value.value);'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects generic enum (1)', () {
      final genericInterfaceProjection =
          GenericInterfaceProjection.fromTypeAndTypeArgs(
              'Windows.Foundation.Collections.IIterator`1',
              TypeArgKind.winrtEnum);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere(
              (methodProjection) => methodProjection.name == 'get_Current');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('T'));
      expect(projection.header, equals('T get current'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return enumCreator(retValuePtr.value);'));
      expect(projection.postambles, equals(['free(retValuePtr);']));
    });

    test('projects generic enum (2)', () {
      final genericInterfaceProjection =
          GenericInterfaceProjection.fromTypeAndTypeArgs(
              'Windows.Foundation.Collections.IKeyValuePair`2',
              TypeArgKind.winrtEnum,
              TypeArgKind.nullableInspectable);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'get_Key');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('K'));
      expect(projection.header, equals('K get key'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return enumKeyCreator(retValuePtr.value);'));
      expect(projection.postambles, equals(['free(retValuePtr);']));
    });

    test('projects generic Flags enum', () {
      final genericInterfaceProjection =
          GenericInterfaceProjection.fromTypeAndTypeArgs(
              'Windows.Foundation.Collections.IIterator`1',
              TypeArgKind.winrtFlagsEnum);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere(
              (methodProjection) => methodProjection.name == 'get_Current');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('T'));
      expect(projection.header, equals('T get current'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<Uint32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return enumCreator(retValuePtr.value);'));
      expect(projection.postambles, equals(['free(retValuePtr);']));
    });

    test('projects generic object', () {
      final genericInterfaceProjection =
          GenericInterfaceProjection.fromTypeAndTypeArgs(
              'Windows.Foundation.Collections.IIterator`1',
              TypeArgKind.nullableInspectable);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere(
              (methodProjection) => methodProjection.name == 'get_Current');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('T'));
      expect(projection.header, equals('T get current'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck(freeRetVal: true)));
      expect(projection.nullCheck,
          equals(nullCheck('retValuePtr', castReturn: true)));
      expect(
          projection.returnStatement, equals('return creator(retValuePtr);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects Guid', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.INetworkAdapter',
          'get_NetworkAdapterId');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('Guid'));
      expect(projection.header, equals('Guid get networkAdapterId'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<GUID>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<GUID> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.toDartGuid();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects int', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumberOfDaysInThisMonth');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('int'));
      expect(projection.header, equals('int get numberOfDaysInThisMonth'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Int32>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Int32> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.value;'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects interface', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.IXmlNode', 'get_FirstChild');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IXmlNode?'));
      expect(projection.header, equals('IXmlNode? get firstChild'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement,
          equals('return IXmlNode.fromPtr(value);'));
      expect(projection.postambles, isEmpty);
    });

    test('projects IMap<int, IBuffer?>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider',
          'get_SdpRawAttributes');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IMap<int, IBuffer?>?'));
      expect(projection.header,
          equals('IMap<int, IBuffer?>? get sdpRawAttributes'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IMap.fromPtr(value,
            iterableIid: '{4fe7fe23-22b1-528c-881d-a4eceaef0f11}',
            creator: IBuffer.fromPtr,
            intType: IntType.uint32);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IMap<String, String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.INotificationData', 'get_Values');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IMap<String, String>?'));
      expect(projection.header, equals('IMap<String, String>? get values'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IMap.fromPtr(value,
            iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IMapView<String, Object?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Enumeration.IDeviceInformation', 'get_Properties');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Map<String, Object?>?'));
      expect(projection.header, equals('Map<String, Object?>? get properties'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
            return IMapView<String, Object?>.fromPtr(value,
                iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}').toMap();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IReference<DateTime?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification', 'get_ExpirationTime');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('DateTime?'));
      expect(projection.header, equals('DateTime? get expirationTime'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IReference<DateTime?>.fromPtr(value,
            referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}').value;
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<DeviceClass>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Enumeration.IDevicePickerFilter',
          'get_SupportedDeviceClasses');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IVector<DeviceClass>?'));
      expect(projection.header,
          equals('IVector<DeviceClass>? get supportedDeviceClasses'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}',
            enumCreator: DeviceClass.from);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<int>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterial',
          'get_MaterialIndices');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IVector<int>?'));
      expect(projection.header, equals('IVector<int>? get materialIndices'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{421d4b91-b13b-5f37-ae54-b5249bd80539}',
            intType: IntType.uint32);
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<SortOrder>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Search.IQueryOptions', 'get_SortOrder');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IVector<SortEntry>?'));
      expect(projection.header, equals('IVector<SortEntry>? get sortOrder'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{35aff6f9-ef75-5280-bb84-a2bf8317cf35}');
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'get_FileTypeFilter');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IVector<String>?'));
      expect(projection.header, equals('IVector<String>? get fileTypeFilter'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<Uri?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Networking.Vpn.VpnPlugInProfile', 'get_ServerUris');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('IVector<Uri?>?'));
      expect(projection.header, equals('IVector<Uri?>? get serverUris'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVector.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}');
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<BasicGeoposition>', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeopath', 'get_Positions');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<BasicGeoposition>?'));
      expect(
          projection.header, equals('List<BasicGeoposition>? get positions'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<BasicGeoposition>.fromPtr(value,
            iterableIid: '{922399a8-0093-5009-a8d2-f87b0eae75f5}').toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<int>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.AI.MachineLearning.ITensor', 'get_Shape');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<int>?'));
      expect(projection.header, equals('List<int>? get shape'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<int>.fromPtr(value,
            iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}',
            intType: IntType.int64).toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<Object?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Graphics.Printing.OptionDetails.IPrintItemListOptionDetails',
          'get_Items');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<Object?>?'));
      expect(projection.header, equals('List<Object?>? get items'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<Object?>.fromPtr(value,
            iterableIid: '{092b849b-60b1-52be-a44a-6fe8e933cbe4}').toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.Calendar', 'get_Languages');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<String>?'));
      expect(projection.header, equals('List<String>? get languages'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}').toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<Uri?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.ApplicationModel.AppInstallerInfo', 'get_UpdateUris');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('List<Uri?>?'));
      expect(projection.header, equals('List<Uri?>? get updateUris'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement, equalsIgnoringWhitespace('''
        return IVectorView<Uri?>.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}').toList();
'''));
      expect(projection.postambles, isEmpty);
    });

    test('projects List<DigitalWindowMode>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Media.Devices.DigitalWindowControl', 'get_SupportedModes');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<DigitalWindowMode>'));
      expect(projection.header,
          equals('List<DigitalWindowMode> get supportedModes'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles,
          equals([
            'final valueSize = calloc<Uint32>();',
            'final value = calloc<Pointer<Int32>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<Int32>> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<Int32>> value)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, valueSize, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return value.value.toEnumList(DigitalWindowMode.from, length: valueSize.value);'));
      expect(
          projection.postambles, equals(['free(valueSize);', 'free(value);']));
    });

    test('projects List<Guid>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Media.Protection.PlayReady.IPlayReadyContentHeader2',
          'get_KeyIds');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<Guid>'));
      expect(projection.header, equals('List<Guid> get keyIds'));
      expect(projection.paramIdentifier, equals('contentKeyIds'));
      expect(
          projection.preambles,
          equals([
            'final contentKeyIdsSize = calloc<Uint32>();',
            'final contentKeyIds = calloc<Pointer<GUID>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> contentKeyIdsSize, Pointer<Pointer<GUID>> contentKeyIds)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> contentKeyIdsSize, Pointer<Pointer<GUID>> contentKeyIds)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, contentKeyIdsSize, contentKeyIds'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return contentKeyIds.value.toList(length: contentKeyIdsSize.value);'));
      expect(projection.postambles,
          equals(['free(contentKeyIdsSize);', 'free(contentKeyIds);']));
    });

    test('projects List<int>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Networking.NetworkOperators.IHotspotAuthenticationContext',
          'get_WirelessNetworkId');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<int>'));
      expect(projection.header, equals('List<int> get wirelessNetworkId'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles,
          equals([
            'final valueSize = calloc<Uint32>();',
            'final value = calloc<Pointer<Uint8>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<Uint8>> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<Uint8>> value)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, valueSize, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return value.value.toList(length: valueSize.value);'));
      expect(
          projection.postambles, equals(['free(valueSize);', 'free(value);']));
    });

    test('projects List<String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.ApplicationModel.AppInfo', 'get_SupportedFileExtensions');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<String>'));
      expect(projection.header,
          equals('List<String> get supportedFileExtensions'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles,
          equals([
            'final valueSize = calloc<Uint32>();',
            'final value = calloc<Pointer<IntPtr>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<IntPtr>> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<IntPtr>> value)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, valueSize, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return value.value.toList(length: valueSize.value);'));
      expect(
          projection.postambles, equals(['free(valueSize);', 'free(value);']));
    });

    test('projects List<Vector2>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Graphics.Holographic.IHolographicCameraViewportParameters',
          'get_HiddenAreaMesh');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('List<Vector2>'));
      expect(projection.header, equals('List<Vector2> get hiddenAreaMesh'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles,
          equals([
            'final valueSize = calloc<Uint32>();',
            'final value = calloc<Pointer<NativeVector2>>();'
          ]));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<NativeVector2>> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize, Pointer<Pointer<NativeVector2>> value)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, valueSize, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return value.value.toList(length: valueSize.value);'));
      expect(
          projection.postambles, equals(['free(valueSize);', 'free(value);']));
    });

    test('projects Object', () {
      final genericInterfaceProjection =
          GenericInterfaceProjection.fromTypeAndTypeArgs(
              'Windows.Foundation.Collections.IKeyValuePair`2',
              TypeArgKind.object,
              TypeArgKind.nullableObject);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'get_Key');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Object'));
      expect(projection.header, equals('Object get key'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'retValuePtr')));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement,
          equals(
              'return IPropertyValue.fromPtr(retValuePtr).value as Object;'));
      expect(projection.postambles, isEmpty);
    });

    test('projects Object?', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.IXmlNode', 'get_LocalName');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Object?'));
      expect(projection.header, equals('Object? get localName'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement,
          equals('return IPropertyValue.fromPtr(value).value;'));
      expect(projection.postambles, isEmpty);
    });

    test('projects String', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumeralSystem');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('String'));
      expect(projection.header, equals('String get numeralSystem'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<IntPtr>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(
          projection.returnStatement, equals('return value.toDartString();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects String (Char16)', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.UI.Text.RichEditTextRange', 'get_Character');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('String'));
      expect(projection.header, equals('String get character'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles, equals(['final value = calloc<Uint16>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Uint16> value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, Pointer<Uint16> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return String.fromCharCode(value.value);'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects struct', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeopoint', 'get_Position');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isTrue);
      expect(projection.returnType, equals('BasicGeoposition'));
      expect(projection.header, equals('BasicGeoposition get position'));
      expect(projection.paramIdentifier, equals('value'));
      expect(projection.preambles,
          equals(['final value = calloc<NativeBasicGeoposition>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<NativeBasicGeoposition> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<NativeBasicGeoposition> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, equals('return value.toDart();'));
      expect(projection.postambles, equals(['free(value);']));
    });

    test('projects Uri', () {
      final genericInterfaceProjection =
          GenericInterfaceProjection.fromTypeAndTypeArgs(
              'Windows.Foundation.Collections.IKeyValuePair`2',
              TypeArgKind.uri,
              TypeArgKind.string);
      final projection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'get_Key');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Uri'));
      expect(projection.header, equals('Uri get key'));
      expect(projection.paramIdentifier, equals('retValuePtr'));
      expect(projection.preambles,
          equals(['final retValuePtr = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, retValuePtr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'retValuePtr')));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement,
          equals('return retValuePtr.toWinRTUri().toDartUri();'));
      expect(projection.postambles, isEmpty);
    });

    test('projects Uri?', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherOptions', 'get_FallbackUri');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, equals('Uri?'));
      expect(projection.header, equals('Uri? get fallbackUri'));
      expect(projection.paramIdentifier, equals('value'));
      expect(
          projection.preambles, equals(['final value = calloc<COMObject>();']));
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck,
          equals(failedCheck(freeRetVal: true, identifier: 'value')));
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.returnStatement,
          equals('return value.toWinRTUri().toDartUri();'));
      expect(projection.postambles, isEmpty);
    });
  });
}
