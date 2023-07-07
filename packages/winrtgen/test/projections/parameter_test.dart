// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

import 'utilities.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('WinRT parameter', () {
    test('projects bool', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics',
          'GetNationalDirectDialingPrefixForRegion');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('bool'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, isEmpty);
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('stripNonDigit[i]'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('stripNonDigit'));
      expect(projection.localIdentifier, equals('stripNonDigit'));
    });

    test('projects class', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'Compare');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<ObjectParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('Calendar?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('Calendar.fromPtr(other)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, equals('Calendar.fromPtr'));
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('other[i].ptr.ref.lpVtbl'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('other')));
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('other'));
      expect(projection.localIdentifier,
          equals('other == null ? nullptr : other.ptr.ref.lpVtbl'));
    });

    test('projects DateTime', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'SetDateTime');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<DateTimeParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('DateTime'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('value.toDartDateTime()'));
      expect(projection.into, equals('value.toWinRTDateTime()'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator,
          equals('.map((value) => value.toDartDateTime()).toList()'));
      expect(projection.toListInto, equals('value[i].toWinRTDateTime()'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('value.toWinRTDateTime()'));
    });

    test('projects double', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateDouble');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<DefaultParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('double'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, isEmpty);
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('value[i]'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('value'));
    });

    test('projects Duration', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateTimeSpan');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<DurationParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('Duration'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('value.toDartDuration()'));
      expect(projection.into, equals('value.toWinRTDuration()'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator,
          equals('.map((value) => value.toDartDuration()).toList()'));
      expect(projection.toListInto, equals('value[i].toWinRTDuration()'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('value.toWinRTDuration()'));
    });

    test('projects enum', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsync');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<EnumParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('StorageDeleteOption'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(
          projection.creator, equals('StorageDeleteOption.from(option.value)'));
      expect(projection.into, equals('option.value'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator,
          equals('.map(StorageDeleteOption.from).toList()'));
      expect(projection.toListInto, equals('option[i].value'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('option'));
      expect(projection.localIdentifier, equals('option.value'));
    });

    test('projects Flags enum', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Gaming.Input.IGamepad2', 'GetButtonLabel');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<EnumParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('GamepadButtons'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('GamepadButtons.from(button.value)'));
      expect(projection.into, equals('button.value'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator,
          equals('.map(GamepadButtons.from).toList()'));
      expect(projection.toListInto, equals('button[i].value'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('button'));
      expect(projection.localIdentifier, equals('button.value'));
    });

    test('projects generic enum', () {
      final genericInterfaceProjection = GenericInterfaceProjection.from(
          'Windows.Foundation.Collections.IVector`1', TypeArgKind.winrtEnum);
      final methodProjection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'Append');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<GenericEnumParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('T'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('enumCreator(value.value)'));
      expect(projection.into, equals('(value as WinRTEnum).value'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, equals('.map(enumCreator).toList()'));
      expect(projection.toListInto, equals('value.cast<WinRTEnum>()[i].value'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('(value as WinRTEnum).value'));
    });

    test('projects generic Flags enum', () {
      final genericInterfaceProjection = GenericInterfaceProjection.from(
          'Windows.Foundation.Collections.IVector`1',
          TypeArgKind.winrtFlagsEnum);
      final methodProjection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'Append');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<GenericEnumParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('T'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('enumCreator(value.value)'));
      expect(projection.into, equals('(value as WinRTEnum).value'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, equals('.map(enumCreator).toList()'));
      expect(projection.toListInto, equals('value.cast<WinRTEnum>()[i].value'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('(value as WinRTEnum).value'));
    });

    test('projects generic object', () {
      final genericInterfaceProjection = GenericInterfaceProjection.from(
          'Windows.Foundation.Collections.IVector`1',
          TypeArgKind.nullableInspectable);
      final methodProjection = genericInterfaceProjection.methodProjections
          .firstWhere((methodProjection) => methodProjection.name == 'Append');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<GenericObjectParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('T'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('creator(value)'));
      expect(projection.into, equals('(value as IInspectable).ptr.ref.lpVtbl'));
      expect(projection.toListArg, equals('creator'));
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto,
          equals('value.cast<IInspectable>()[i].ptr.ref.lpVtbl'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(
          projection.nullCheck, equals(nullCheck('value', castReturn: true)));
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier,
          equals('(value as IInspectable).ptr.ref.lpVtbl'));
    });

    test('projects Guid', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateGuid');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<StructParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('Guid'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('value.toDartGuid()'));
      expect(projection.into, equals('valueNativeStructPtr.ref'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('value[i].toNativeGUID()'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles,
          equals(['final valueNativeStructPtr = value.toNativeGUID();']));
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, equals(['free(valueNativeStructPtr);']));
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('valueNativeStructPtr.ref'));
    });

    test('projects int', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreateInt32');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<DefaultParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('int'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, isEmpty);
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('value[i]'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('value'));
    });

    test('projects interface', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageFile', 'CopyAndReplaceAsync');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<ObjectParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('IStorageFile?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('IStorageFile.fromPtr(fileToReplace)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, equals('IStorageFile.fromPtr'));
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('fileToReplace[i].ptr.ref.lpVtbl'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('fileToReplace')));
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('fileToReplace'));
      expect(
          projection.localIdentifier,
          equals(
              'fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl'));
    });

    test('projects IIterable<IKeyValuePair<String, Object?>?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.FileProperties.IStorageItemExtraProperties',
          'SavePropertiesAsync');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<ObjectParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type,
          equals('IIterable<IKeyValuePair<String, Object?>>?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(
          projection.creator,
          equals(
              'IIterable<IKeyValuePair<String, Object?>>.fromPtr(propertiesToSave)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg,
          equals('IIterable<IKeyValuePair<String, Object?>>.fromPtr'));
      expect(projection.toListCreator, isEmpty);
      expect(
          projection.toListInto, equals('propertiesToSave[i].ptr.ref.lpVtbl'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('propertiesToSave')));
      expect(projection.identifier, equals('propertiesToSave'));
      expect(
          projection.localIdentifier,
          equals(
              "propertiesToSave == null ? nullptr : IInspectable(propertiesToSave.toInterface('{fe2f3d47-5d47-5499-8374-430c7cda0204}')).ptr.ref.lpVtbl"));
    });

    test('projects IMap<String, Object?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.AI.MachineLearning.ILearningModelSession',
          'EvaluateFeatures');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<MapParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('IMap<String, Object?>?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(
          projection.creator,
          equals(
              "IMap.fromPtr(features, iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}')"));
      expect(projection.into, equals('features?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('features'));
      expect(projection.localIdentifier,
          equals('features?.ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects IMapView<String, Object?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.ApplicationModel.DataTransfer.DataPackagePropertySetView',
          'Split');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<MapViewParameterProjection>());
      expect(projection.isInParam, isFalse);
      expect(projection.isOutParam, isTrue);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('IMapView<String, Object?>'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equalsIgnoringWhitespace('''
        IMapView<String, Object?>.fromPtr(first,
            iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}').toMap()
'''));
      expect(projection.into, equals('first?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('first'));
      expect(projection.localIdentifier, equals('first'));
    });

    test('projects IReference<BluetoothLEAdvertisementFlags?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement',
          'put_Flags');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<ReferenceParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('BluetoothLEAdvertisementFlags?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equalsIgnoringWhitespace('''
        IReference<BluetoothLEAdvertisementFlags?>.fromPtr(value,
            referenceIid: '{91c0ba96-9e69-5b82-bf1d-83ab2a509c53}',
            enumCreator: BluetoothLEAdvertisementFlags?.from).value
'''));
      expect(projection.into,
          equals('value?.toReference().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier,
          equals('value?.toReference().ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects IReference<int?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy',
          'put_DesiredAccuracyInMeters');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<ReferenceParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('int?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equalsIgnoringWhitespace('''
        IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}').value
'''));
      expect(
          projection.into,
          equals(
              'value?.toReference(IntType.uint32).ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.identifier, equals('value'));
      expect(
          projection.localIdentifier,
          equals(
              'value?.toReference(IntType.uint32).ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects IVector<HostName?>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Vpn.IVpnNamespaceInfoFactory',
          'CreateVpnNamespaceInfo');
      final projection = methodProjection.parameters[1];
      expect(projection, isA<VectorParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('IVector<HostName?>?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equalsIgnoringWhitespace('''
        IVector.fromPtr(dnsServerList,
          iterableIid: '{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}',
          creator: HostName.fromPtr)
'''));
      expect(
          projection.into, equals('dnsServerList?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('dnsServerList'));
      expect(projection.localIdentifier,
          equals('dnsServerList?.ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects IVectorView<String>', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.IUser', 'GetPropertiesAsync');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<VectorViewParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('IVectorView<String>?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equalsIgnoringWhitespace('''
        IVectorView<String>.fromPtr(values,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}').toList()
'''));
      expect(projection.into, equals('values?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('values'));
      expect(projection.localIdentifier,
          equals('values?.ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects List<Point> (FillArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Media.Devices.Core.CameraIntrinsics', 'DistortPoints');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<StructListParameterProjection>());
      expect(projection.isInParam, isFalse);
      expect(projection.isOutParam, isTrue);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('List<Point>'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator,
          equals('pResultsArray.toList(length: resultsSize)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, equals('toList'));
      expect(projection.preambles,
          equals(['final pResultsArray = calloc<NativePoint>(resultsSize);']));
      expect(
          projection.postambles,
          equals([
            '''
    if (resultsSize > 0) {
      results.addAll(pResultsArray.toList(length: resultsSize));
    }''',
            'free(pResultsArray);'
          ]));
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('results'));
      expect(projection.localIdentifier, equals('pResultsArray'));
    });

    test('projects List<String> (FillArray - getMany)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'GetMany');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultListParameterProjection>());
      expect(projection.isInParam, isFalse);
      expect(projection.isOutParam, isTrue);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('List<String>'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator,
          equals('pItemsArray.toList(length: returnValue.value)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, equals('toList'));
      expect(projection.preambles,
          equals(['final pItemsArray = calloc<IntPtr>(itemsSize);']));
      expect(
          projection.postambles,
          equals([
            '''
    if (returnValue.value > 0) {
      items.addAll(pItemsArray.toList(length: returnValue.value));
    }''',
            'free(pItemsArray);'
          ]));
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('items'));
      expect(projection.localIdentifier, equals('pItemsArray'));
    });

    test('projects List<String> (FillArray - readBytes)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'ReadBytes');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultListParameterProjection>());
      expect(projection.isInParam, isFalse);
      expect(projection.isOutParam, isTrue);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('List<int>'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(
          projection.creator, equals('pValueArray.toList(length: valueSize)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, equals('toList'));
      expect(projection.preambles,
          equals(['final pValueArray = calloc<Uint8>(valueSize);']));
      expect(
          projection.postambles,
          equals([
            '''
    if (valueSize > 0) {
      value.addAll(pValueArray.toList(length: valueSize));
    }''',
            'free(pValueArray);'
          ]));
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('pValueArray'));
    });

    test('projects List<String> (PassArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'ReplaceAll');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultListParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('List<String>'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator,
          equals('pItemsArray.toList(length: pItemsSize.value)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, equals('toList'));
      expect(
          projection.preambles,
          equals([
            'final itemsHandles = <int>[];',
            'final pItemsArray = calloc<HSTRING>(items.length);',
            '''
    for (var i = 0; i < items.length; i++) {
      pItemsArray[i] = items[i].toHString();
      itemsHandles.add(pItemsArray[i]);
    }'''
          ]));
      expect(
          projection.postambles,
          equals([
            'itemsHandles.forEach(WindowsDeleteString);',
            'free(pItemsArray);'
          ]));
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('items'));
      expect(projection.localIdentifier, equals('pItemsArray'));
    });

    test('projects List<String> (ReceiveArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetStringArray');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultListParameterProjection>());
      expect(projection.isInParam, isFalse);
      expect(projection.isOutParam, isTrue);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('List<String>'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator,
          equals('pValueArray.value.toList(length: pValueSize.value)'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, equals('toList'));
      expect(
          projection.preambles,
          equals([
            'final pValueSize = calloc<Uint32>();',
            'final pValueArray = calloc<Pointer<IntPtr>>();'
          ]));
      expect(
          projection.postambles,
          equals([
            '''
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }''',
            'free(pValueSize);',
            'free(pValueArray);'
          ]));
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('pValueArray'));
    });

    test('projects List<VirtualKey> (PassArray)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Lights.ILampArray', 'SetColorsForKeys');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultListParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('List<VirtualKey>'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(
          projection.creator,
          equals(
              'pKeysArray.toList(length: pKeysSize.value).map(VirtualKey.from).toList()'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, equals('toList'));
      expect(
          projection.preambles,
          equals([
            'final pKeysArray = calloc<Int32>(keys.length);',
            '''
    for (var i = 0; i < keys.length; i++) {
      pKeysArray[i] = keys[i].value;
    }'''
          ]));
      expect(projection.postambles, equals(['free(pKeysArray);']));
      expect(projection.nullCheck, isEmpty);
      expect(projection.identifier, equals('keys'));
      expect(projection.localIdentifier, equals('pKeysArray'));
    });

    test('projects Object?', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.PropertySet', 'Insert');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<ObjectParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('Object?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('IPropertyValue.fromPtr(value).value'));
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto,
          equals('value[i]?.intoBox().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListIdentifier, equals('toObjectList'));
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('value')));
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier,
          equals('value?.intoBox().ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects pointer', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.FileExtensionVector', 'IndexOf');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<DefaultParameterProjection>());
      expect(projection.isInParam, isFalse);
      expect(projection.isOutParam, isTrue);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('Pointer<Uint32>'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, isEmpty);
      expect(projection.into, isEmpty);
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('index[i]'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('index'));
      expect(projection.localIdentifier, equals('index'));
    });

    test('projects String', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'ChangeCalendarSystem');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<StringParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('String'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('value.toDartString()'));
      expect(projection.into, 'valueHString');
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, isEmpty);
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles,
          equals(['final valueHString = value.toHString();']));
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles,
          equals(['WindowsDeleteString(valueHString);']));
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('valueHString'));
    });

    test('projects struct', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValueStatics', 'CreatePoint');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<StructParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isFalse);
      expect(projection.type, equals('Point'));
      expect(projection.needsAllocation, isTrue);
      expect(projection.needsDeallocation, isTrue);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('value.toDart()'));
      expect(projection.into, equals('valueNativeStructPtr.ref'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto, equals('value[i].toNative()'));
      expect(projection.toListIdentifier, isEmpty);
      expect(projection.preambles,
          equals(['final valueNativeStructPtr = value.toNative();']));
      expect(projection.nullCheck, isEmpty);
      expect(projection.postambles, equals(['free(valueNativeStructPtr);']));
      expect(projection.identifier, equals('value'));
      expect(projection.localIdentifier, equals('valueNativeStructPtr.ref'));
    });

    test('projects Uri', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Credentials.IWebAccountProviderFactory',
          'CreateWebAccountProvider');
      final projection = methodProjection.parameters.last;
      expect(projection, isA<UriParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('Uri?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('iconUri.toWinRTUri().toDartUri()'));
      expect(projection.into,
          equals('iconUri?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto,
          equals('iconUri[i]?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListIdentifier, equals('toDartUriList'));
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('iconUri')));
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('iconUri'));
      expect(projection.localIdentifier,
          equals('iconUri?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
    });

    test('projects Uri?', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherStatics', 'LaunchUriAsync');
      final projection = methodProjection.parameters.first;
      expect(projection, isA<UriParameterProjection>());
      expect(projection.isInParam, isTrue);
      expect(projection.isOutParam, isFalse);
      expect(projection.isNullable, isTrue);
      expect(projection.type, equals('Uri?'));
      expect(projection.needsAllocation, isFalse);
      expect(projection.needsDeallocation, isFalse);
      expect(projection.creatorPreamble, isEmpty);
      expect(projection.creator, equals('uri.toWinRTUri().toDartUri()'));
      expect(projection.into,
          equals('uri?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListArg, isEmpty);
      expect(projection.toListCreator, isEmpty);
      expect(projection.toListInto,
          equals('uri[i]?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.toListIdentifier, equals('toDartUriList'));
      expect(projection.preambles, isEmpty);
      expect(projection.nullCheck, equals(nullCheck('uri')));
      expect(projection.postambles, isEmpty);
      expect(projection.identifier, equals('uri'));
      expect(projection.localIdentifier,
          equals('uri?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
    });
  });
}
