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

  group('creator', () {
    test('(1)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.ICalendarFactory');
      expect(
          typeDef
              .findMethod('CreateCalendar')!
              .returnType
              .typeIdentifier
              .creator,
          equals('Calendar.fromPtr'));
    });

    test('(2)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.IPropertyValueStatics');
      expect(
          typeDef
              .findMethod('CreateGuid')!
              .parameters
              .first
              .typeIdentifier
              .creator,
          isNull);
      expect(
          typeDef
              .findMethod('CreatePoint')!
              .parameters
              .first
              .typeIdentifier
              .creator,
          isNull);
      expect(
          typeDef
              .findMethod('CreateTimeSpan')!
              .parameters
              .first
              .typeIdentifier
              .creator,
          isNull);
    });

    test('(3)', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Data.Json.JsonObject');
      expect(
          typeDef.interfaces[2].typeSpec!.creator,
          equals(
              "(ptr) => IMap.fromPtr(ptr, creator: IJsonValue.fromPtr, iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}')"));
      expect(
          typeDef.interfaces[3].typeSpec!.creator,
          equals(
              '(ptr) => IIterable.fromPtr(ptr, creator: (ptr) => IKeyValuePair.fromPtr(ptr, creator: IJsonValue.fromPtr))'));
    });

    test('(4)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.Collections.PropertySet');
      expect(
          typeDef.findMethod('Insert')!.parameters.last.typeIdentifier.creator,
          isNull);
    });

    test('(5)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics');
      expect(
          typeDef
              .findMethod('TryCreate')!
              .parameters
              .last
              .typeIdentifier
              .creator,
          equals('PhoneNumberFormatter.fromPtr'));
    });

    test('(6)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.Collections.StringMap');
      expect(
          typeDef.interfaces[0].typeSpec!.creator,
          equals(
              "(ptr) => IMap.fromPtr(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));
      expect(
          typeDef.interfaces[1].typeSpec!.creator,
          equals(
              '(ptr) => IIterable.fromPtr(ptr, creator: IKeyValuePair.fromPtr)'));
      expect(typeDef.interfaces[2].typeSpec!.creator,
          equals('IObservableMap.fromPtr'));
      expect(
          typeDef.findMethod('First')!.returnType.typeIdentifier.creator,
          equals(
              '(ptr) => IIterator.fromPtr(ptr, creator: IKeyValuePair.fromPtr)'));
      expect(
          typeDef.findMethod('GetView')!.returnType.typeIdentifier.creator,
          equals(
              "(ptr) => IMapView.fromPtr(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));
    });

    test('(7)', () {
      final fileOpenPicker = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Pickers.IFileOpenPicker');
      expect(
          fileOpenPicker
              .findMethod('get_FileTypeFilter')!
              .returnType
              .typeIdentifier
              .creator,
          equals(
              "(ptr) => IVector.fromPtr(ptr, iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')"));
      expect(
          fileOpenPicker
              .findMethod('PickSingleFileAsync')!
              .returnType
              .typeIdentifier
              .creator,
          equals(
              '(ptr) => IAsyncOperation.fromPtr(ptr, creator: StorageFile.fromPtr)'));
      expect(
          fileOpenPicker
              .findMethod('PickMultipleFilesAsync')!
              .returnType
              .typeIdentifier
              .creator,
          equals(
              "(ptr) => IAsyncOperation.fromPtr(ptr, creator: (ptr) => IVectorView.fromPtr(ptr, creator: StorageFile.fromPtr, iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'))"));
    });

    test('(8)', () {
      final storageFileQueryResult2 = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      expect(
          storageFileQueryResult2
              .findMethod('GetMatchingPropertiesWithRanges')!
              .returnType
              .typeIdentifier
              .creator,
          equals(
              "(ptr) => IMap.fromPtr(ptr, creator: (ptr) => IVectorView.fromPtr(ptr, iterableIid: '{5498f4f3-cee4-5b72-9729-815c4ad7b9dc}'), iterableIid: '{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}')"));
    });

    test('(9)', () {
      final pedometer2 =
          WinRTMetadataStore.findTypeDef('Windows.Devices.Sensors.IPedometer2');
      expect(
          pedometer2
              .findMethod('GetCurrentReadings')!
              .returnType
              .typeIdentifier
              .creator,
          equals(
              "(ptr) => IMapView.fromPtr(ptr, enumKeyCreator: PedometerStepKind.from, creator: PedometerReading.fromPtr, iterableIid: '{098f29cb-bc91-5639-a541-d5a4811ec35b}')"));
    });

    test('(10)', () {
      final pedometer2 =
          WinRTMetadataStore.findTypeDef('Windows.AI.MachineLearning.ITensor');
      expect(
          pedometer2.findMethod('get_Shape')!.returnType.typeIdentifier.creator,
          equals(
              "(ptr) => IVectorView.fromPtr(ptr, iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}', intType: IntType.int64)"));
    });

    test('(11)', () {
      final pedometer2 = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider');
      expect(
          pedometer2
              .findMethod('get_SdpRawAttributes')!
              .returnType
              .typeIdentifier
              .creator,
          equals(
              "(ptr) => IMap.fromPtr(ptr, intType: IntType.uint32, creator: IBuffer.fromPtr, iterableIid: '{4fe7fe23-22b1-528c-881d-a4eceaef0f11}')"));
    });
  });

  group('dereference', () {
    test('(1)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
      expect(
          method
              .returnType // IMap<String, IVectorView<TextSegment>>
              .typeIdentifier
              .dereference()
              .baseType,
          equals(BaseType.stringType));
      expect(
          method
              .returnType // IMap<String, IVectorView<TextSegment>>
              .typeIdentifier
              .dereference()
              .dereference()
              .name,
          endsWith('IVectorView`1'));
    });

    test('throws a StateError if TypeIdentifier is cannot be de-referenced',
        () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.ICalendarFactory');
      expect(
          () => typeDef
              .findMethod('CreateCalendar')!
              .returnType
              .typeIdentifier
              .dereference(),
          throwsA(isA<StateError>().having((e) => e.message, 'message',
              equals('Could not de-reference type Calendar.'))));
    });
  });

  group('genericParamSequence', () {
    test('(1)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.Collections.IMap`2');
      final method = typeDef.findMethod('Insert')!;
      expect(
          method.parameters.first.typeIdentifier.genericParamSequence, isZero);
      expect(method.parameters.last.typeIdentifier.genericParamSequence,
          equals(1));
    });

    test('throws a StateError if TypeIdentifier is cannot be de-referenced',
        () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
      expect(
          () => method.returnType.typeIdentifier.genericParamSequence,
          throwsA(isA<StateError>().having((e) => e.message, 'message',
              equals('Type IMap`2 has no genericParameterSequence.'))));
    });
  });

  group('iid', () {
    test('returns the IID of IAsyncOperation<IVectorView<StorageFile>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Pickers.IFileOpenPicker');
      expect(
          typeDef
              .findMethod('PickMultipleFilesAsync')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{03362e33-e413-5f29-97d0-48a4780935f9}'));
    });

    test('returns the IID of IMap<String, IVectorView<TextSegment>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      expect(
          typeDef
              .findMethod('GetMatchingPropertiesWithRanges')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{a31b6540-b2b1-536d-818f-8ade7051c3b3}'));
    });

    test('returns the IID of IMapView<PedometerStepKind, PedometerReading>',
        () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Devices.Sensors.IPedometer2');
      expect(
          typeDef
              .findMethod('GetCurrentReadings')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));
    });

    test('returns the IID of IAsyncOperation<IReference<TimeSpan>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.UI.Xaml.Controls.ITimePickerFlyout');
      expect(
          typeDef
              .findMethod('ShowAtAsync')!
              .returnType
              .typeIdentifier
              .iid
              .toString(),
          equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
    });
  });

  group('iterableIID', () {
    test('of IIterable<IKeyValuePair<String, IVectorView<TextSegment>>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      expect(
          typeDef
              .findMethod('GetMatchingPropertiesWithRanges')!
              .returnType // IMap<String, IVectorView<TextSegment>>
              .typeIdentifier
              .iterableIID,
          equals('{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}'));
    });

    test('of IIterable<IKeyValuePair<PedometerStepKind, PedometerReading>>',
        () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Devices.Sensors.IPedometer2');
      expect(
          typeDef
              .findMethod('GetCurrentReadings')!
              .returnType // IMapView<PedometerStepKind, PedometerReading>
              .typeIdentifier
              .iterableIID,
          equals('{098f29cb-bc91-5639-a541-d5a4811ec35b}'));
    });

    test('of IIterable<String>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Pickers.IFileOpenPicker');
      expect(
          typeDef
              .findMethod('get_FileTypeFilter')!
              .returnType // IVector<String>
              .typeIdentifier
              .iterableIID,
          equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    });

    test('of IIterable<HostName>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Networking.Connectivity.INetworkInformationStatics');
      expect(
          typeDef
              .findMethod('GetHostNames')!
              .returnType // IVectorView<HostName>
              .typeIdentifier
              .iterableIID,
          equals('{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}'));
    });

    test('throws an UnsupportedError', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.ICalendarFactory');
      expect(
        () => typeDef
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier
            .iterableIID,
        throwsA(
          isA<UnsupportedError>().having(
              (e) => e.message,
              'message',
              equals(
                  'Calendar is not an IMap, IMapView, IVector or IVectorView.')),
        ),
      );
    });
  });

  group('shortName', () {
    test('(1)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.ICalendarFactory');
      expect(
          typeDef
              .findMethod('CreateCalendar')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('Calendar'));
    });

    test('(2)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.IPropertyValueStatics');
      expect(
          typeDef
              .findMethod('CreateGuid')!
              .parameters
              .first
              .typeIdentifier
              .shortName,
          equals('Guid'));
      expect(
          typeDef
              .findMethod('CreatePoint')!
              .parameters
              .first
              .typeIdentifier
              .shortName,
          equals('Point'));
      expect(
          typeDef
              .findMethod('CreateTimeSpan')!
              .parameters
              .first
              .typeIdentifier
              .shortName,
          equals('Duration'));
    });

    test('(3)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Power.IBatteryReport');
      expect(
          typeDef
              .findMethod('get_ChargeRateInMilliwatts')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IReference<int?>'));
    });

    test('(4)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Geolocation.IGeolocatorStatics2');
      expect(
          typeDef
              .findMethod('get_DefaultGeoposition')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IReference<BasicGeoposition?>'));
    });

    test('(5)', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Data.Json.JsonObject');
      expect(typeDef.interfaces[2].typeSpec!.shortName,
          equals('IMap<String, IJsonValue?>'));
      expect(typeDef.interfaces[3].typeSpec!.shortName,
          equals('IIterable<IKeyValuePair<String, IJsonValue?>>'));
    });

    test('(6)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.Collections.PropertySet');
      expect(
          typeDef
              .findMethod('Insert')!
              .parameters
              .last
              .typeIdentifier
              .shortName,
          equals('Object'));
    });

    test('(7)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics');
      expect(
          typeDef
              .findMethod('TryCreate')!
              .parameters
              .last
              .typeIdentifier
              .shortName,
          equals('PhoneNumberFormatter'));
    });

    test('(8)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.Collections.StringMap');
      expect(typeDef.interfaces[0].typeSpec!.shortName,
          equals('IMap<String, String>'));
      expect(typeDef.interfaces[1].typeSpec!.shortName,
          equals('IIterable<IKeyValuePair<String, String>>'));
      expect(typeDef.interfaces[2].typeSpec!.shortName,
          equals('IObservableMap<String, String>'));
      expect(typeDef.findMethod('First')!.returnType.typeIdentifier.shortName,
          equals('IIterator<IKeyValuePair<String, String>>'));
      expect(typeDef.findMethod('GetView')!.returnType.typeIdentifier.shortName,
          equals('IMapView<String, String>'));
    });

    test('(9)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Pickers.IFileOpenPicker');
      expect(
          typeDef
              .findMethod('get_FileTypeFilter')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IVector<String>'));
      expect(
          typeDef
              .findMethod('PickSingleFileAsync')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IAsyncOperation<StorageFile?>'));
      expect(
          typeDef
              .findMethod('PickMultipleFilesAsync')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IAsyncOperation<IVectorView<StorageFile?>>'));
    });

    test('(10)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      expect(
          typeDef
              .findMethod('GetMatchingPropertiesWithRanges')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IMap<String, IVectorView<TextSegment>>'));
    });

    test('(11)', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Devices.Sensors.IPedometer2');
      expect(
          typeDef
              .findMethod('GetCurrentReadings')!
              .returnType
              .typeIdentifier
              .shortName,
          equals('IMapView<PedometerStepKind, PedometerReading?>'));
    });

    test('(12)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Enumeration.DeviceThumbnail');
      expect(
          typeDef.findMethod('ReadAsync')!.returnType.typeIdentifier.shortName,
          equals('IAsyncOperationWithProgress<IBuffer?, int>'));
    });

    test('(13)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Sms.GetSmsMessagesOperation');
      expect(
          typeDef
              .findMethod('get_Progress')!
              .returnType
              .typeIdentifier
              .shortName,
          equals(
              'AsyncOperationProgressHandler<IVectorView<ISmsMessage?>, int>'));
    });
  });

  group('signature', () {
    test('of DateTime', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IPropertyValue');
      final typeIdentifier =
          typeDef.findMethod('GetDateTime')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('struct(Windows.Foundation.DateTime;i8)'));
    });

    test('of Guid', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IPropertyValue');
      final typeIdentifier =
          typeDef.findMethod('GetGuid')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature, equals('g16'));
    });

    test('of Point', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IPropertyValue');
      final typeIdentifier =
          typeDef.findMethod('GetPoint')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('struct(Windows.Foundation.Point;f4;f4)'));
    });

    test('of TimeSpan', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IPropertyValue');
      final typeIdentifier =
          typeDef.findMethod('GetTimeSpan')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('struct(Windows.Foundation.TimeSpan;i8)'));
    });

    test('AsyncActionCompletedHandler', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IAsyncAction');
      final typeIdentifier =
          typeDef.findMethod('get_Completed')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('delegate({a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7})'));
    });

    test('AsyncStatus', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Foundation.IAsyncInfo');
      final typeIdentifier =
          typeDef.findMethod('get_Status')!.returnType.typeIdentifier;
      expect(typeIdentifier.signature,
          equals('enum(Windows.Foundation.AsyncStatus;i4)'));
    });

    test('of Uri', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.IUriRuntimeClassFactory');
      final typeIdentifier =
          typeDef.findMethod('CreateUri')!.returnType.typeIdentifier;
      expect(
          typeIdentifier.signature,
          equals(
              'rc(Windows.Foundation.Uri;{9e365e57-48b2-4160-956f-c7385120bbfc})'));
    });

    test('of IMap<String, String>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Foundation.Collections.StringMap');
      expect(
          typeDef.interfaces.first.typeSpec!.signature,
          equals(
              'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'));
    });

    test('of IMap<Guid, Object>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Media.MediaProperties.MediaPropertySet');
      expect(
          typeDef.interfaces.first.typeSpec!.signature,
          equals(
              'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'));
    });

    test('of IIterable<IKeyValuePair<Guid, Object>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Media.MediaProperties.MediaPropertySet');
      expect(
          typeDef.interfaces[1].typeSpec!.signature,
          equals(
              'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'));
    });

    test('of IAsyncOperation<IReference<Duration>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.UI.Xaml.Controls.ITimePickerFlyout');
      final typeIdentifier =
          typeDef.findMethod('ShowAtAsync')!.returnType.typeIdentifier;
      expect(
          typeIdentifier.signature,
          equals(
              'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'));
    });

    test('of IMap<String, IVectorView<TextSegment>>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      expect(
          typeDef
              .findMethod('GetMatchingPropertiesWithRanges')!
              .returnType
              .typeIdentifier
              .signature,
          equals(
              'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;pinterface({bbe1fa4c-b0e3-4583-baef-1f1b2e483e56};struct(Windows.Data.Text.TextSegment;u4;u4)))'));
    });

    test('of IMapView<PedometerStepKind, PedometerReading>', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Devices.Sensors.IPedometer2');
      final typeIdentifier =
          typeDef.findMethod('GetCurrentReadings')!.returnType.typeIdentifier;
      expect(
          typeIdentifier.signature,
          equals(
              'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'));
    });

    test('of AsyncOperationProgressHandler<IVectorView<ISmsMessage>, int>', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Sms.GetSmsMessagesOperation');
      expect(
          typeDef
              .findMethod('get_Progress')!
              .returnType
              .typeIdentifier
              .signature,
          equals(
              'pinterface({c49b9bba-03ab-522e-884f-227352c8e7d1};pinterface({bbe1fa4c-b0e3-4583-baef-1f1b2e483e56};{ed3c5e28-6984-4b07-811d-8d5906ed3cea});i4)'));
    });
  });

  group('typeArgs', () {
    test('(1)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Power.IBatteryReport');
      // IReference<int?>
      final typeArgs = typeDef
          .findMethod('get_ChargeRateInMilliwatts')!
          .returnType
          .typeIdentifier
          .typeArgs;
      expect(typeArgs.length, equals(1));
      expect(typeArgs.first.baseType, equals(BaseType.int32Type));
    });

    test('(2)', () {
      final typeDef =
          WinRTMetadataStore.findTypeDef('Windows.Data.Json.JsonObject');
      // IIterable<IKeyValuePair<String, IJsonValue?>>
      final typeArgs1 = typeDef.interfaces[3].typeSpec!.typeArgs;
      expect(typeArgs1.length, equals(1));
      expect(typeArgs1.first.baseType, equals(BaseType.genericTypeModifier));
      expect(typeArgs1.first.name, endsWith('IKeyValuePair`2'));

      // IKeyValuePair<String, IJsonValue?>
      final typeArgs2 = typeArgs1.first.typeArgs;
      expect(typeArgs2.length, equals(2));
      expect(typeArgs2.first.baseType, equals(BaseType.stringType));
      expect(typeArgs2.last.baseType, equals(BaseType.classTypeModifier));
      expect(typeArgs2.last.name, endsWith('IJsonValue'));
    });

    test('(3)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Pickers.IFileOpenPicker');
      // IAsyncOperation<IVectorView<StorageFile>>
      final typeArgs = typeDef
          .findMethod('PickMultipleFilesAsync')!
          .returnType
          .typeIdentifier
          .typeArgs;
      expect(typeArgs.length, equals(1));
      expect(typeArgs.first.baseType, equals(BaseType.genericTypeModifier));
      expect(typeArgs.first.name, endsWith('IVectorView`1'));
      expect(
          typeArgs.first.typeArg?.baseType, equals(BaseType.classTypeModifier));
      expect(typeArgs.first.typeArg!.name, endsWith('StorageFile'));
    });

    test('(4)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Storage.Search.IStorageFileQueryResult2');
      // IMap<String, IVectorView<TextSegment>>
      final typeArgs = typeDef
          .findMethod('GetMatchingPropertiesWithRanges')!
          .returnType
          .typeIdentifier
          .typeArgs;
      expect(typeArgs.length, equals(2));
      expect(typeArgs.first.baseType, equals(BaseType.stringType));
      expect(typeArgs.first.typeArg, isNull);
      expect(typeArgs.last.baseType, equals(BaseType.genericTypeModifier));
      expect(typeArgs.last.name, endsWith('IVectorView`1'));
      expect(
          typeArgs.last.typeArg?.baseType, equals(BaseType.valueTypeModifier));
      expect(typeArgs.last.typeArg!.name, endsWith('TextSegment'));
      expect(typeArgs.last.typeArg!.typeArg, isNull);
    });

    test('(5)', () {
      final typeDef = WinRTMetadataStore.findTypeDef(
          'Windows.Devices.Sms.GetSmsMessagesOperation');
      // AsyncOperationProgressHandler<IVectorView<ISmsMessage>, int>
      final typeArgs = typeDef
          .findMethod('get_Progress')!
          .returnType
          .typeIdentifier
          .typeArgs;
      expect(typeArgs.length, equals(2));
      expect(typeArgs.first.baseType, equals(BaseType.genericTypeModifier));
      expect(typeArgs.first.name, endsWith('IVectorView`1'));
      expect(
          typeArgs.first.typeArg?.baseType, equals(BaseType.classTypeModifier));
      expect(typeArgs.first.typeArg!.name, endsWith('ISmsMessage'));
      expect(typeArgs.first.typeArg!.typeArg, isNull);
      expect(typeArgs.last.baseType, equals(BaseType.int32Type));
      expect(typeArgs.last.typeArg, isNull);
    });

    test('6', () {
      const typeIdentifier = TypeIdentifier(BaseType.genericTypeModifier);
      expect(typeIdentifier.typeArgs, isEmpty);
    });
  });
}
