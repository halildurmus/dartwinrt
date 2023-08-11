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

  group('TypeIdentifier', () {
    group('creator', () {
      test('(Calendar)', () {
        final typeDef = 'Windows.Globalization.ICalendarFactory'.typeDef;
        final method = typeDef.findMethod('CreateCalendar')!;
        expect(method.returnType.typeIdentifier.creator,
            equals('Calendar.fromPtr'));
      });

      test('(DateTime)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateDateTime')!;
        final param = method.parameters.first;
        expect(param.typeIdentifier.creator, isNull);
      });
      test('(Duration)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateTimeSpan')!;
        final param = method.parameters.first;
        expect(param.typeIdentifier.creator, isNull);
      });

      test('(Guid)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateGuid')!;
        final param = method.parameters.first;
        expect(param.typeIdentifier.creator, isNull);
      });

      test('(IAsyncOperation<IVectorView<StorageFile?>>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('PickMultipleFilesAsync')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IAsyncOperation.fromPtr(ptr, creator: (ptr) => IVectorView.fromPtr(ptr, creator: StorageFile.fromPtr, iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'))"));
      });

      test('(IAsyncOperation<StorageFile?>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('PickSingleFileAsync')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                '(ptr) => IAsyncOperation.fromPtr(ptr, creator: StorageFile.fromPtr)'));
      });

      test('(IIterable<IKeyValuePair<String, IJsonValue?>>)', () {
        final typeDef = 'Windows.Data.Json.JsonObject'.typeDef;
        expect(
            typeDef.interfaces[3].typeSpec!.creator,
            equals(
                '(ptr) => IIterable.fromPtr(ptr, creator: (ptr) => IKeyValuePair.fromPtr(ptr, creator: IJsonValue.fromPtr))'));
      });

      test('(IIterable<IKeyValuePair<String, String>>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(
            typeDef.interfaces[1].typeSpec!.creator,
            equals(
                '(ptr) => IIterable.fromPtr(ptr, creator: IKeyValuePair.fromPtr)'));
      });

      test('(IMap<int, IBuffer?>)', () {
        final typeDef =
            'Windows.Devices.Bluetooth.Rfcomm.IRfcommServiceProvider'.typeDef;
        final method = typeDef.findMethod('get_SdpRawAttributes')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IMap.fromPtr(ptr, intType: IntType.uint32, creator: IBuffer.fromPtr, iterableIid: '{4fe7fe23-22b1-528c-881d-a4eceaef0f11}')"));
      });

      test('(IMap<String, IJsonValue?>)', () {
        final typeDef = 'Windows.Data.Json.JsonObject'.typeDef;
        expect(
            typeDef.interfaces[2].typeSpec!.creator,
            equals(
                "(ptr) => IMap.fromPtr(ptr, creator: IJsonValue.fromPtr, iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}')"));
      });

      test('(IMap<String, IVectorView<TextSegment>>)', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IMap.fromPtr(ptr, creator: (ptr) => IVectorView.fromPtr(ptr, iterableIid: '{5498f4f3-cee4-5b72-9729-815c4ad7b9dc}'), iterableIid: '{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}')"));
      });

      test('(IMap<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(
            typeDef.interfaces[0].typeSpec!.creator,
            equals(
                "(ptr) => IMap.fromPtr(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));
      });

      test('(IMapView<PedometerStepKind, PedometerReading>)', () {
        final typeDef = 'Windows.Devices.Sensors.IPedometer2'.typeDef;
        final method = typeDef.findMethod('GetCurrentReadings')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IMapView.fromPtr(ptr, enumKeyCreator: PedometerStepKind.from, creator: PedometerReading.fromPtr, iterableIid: '{098f29cb-bc91-5639-a541-d5a4811ec35b}')"));
      });

      test('(IMapView<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        final method = typeDef.findMethod('GetView')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IMapView.fromPtr(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));
      });

      test('(IObservableMap<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(typeDef.interfaces[2].typeSpec!.creator,
            equals('IObservableMap.fromPtr'));
      });

      test('(IVector<String>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('get_FileTypeFilter')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IVector.fromPtr(ptr, iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')"));
      });

      test('(IVectorView<int>)', () {
        final typeDef = 'Windows.AI.MachineLearning.ITensor'.typeDef;
        final method = typeDef.findMethod('get_Shape')!;
        expect(
            method.returnType.typeIdentifier.creator,
            equals(
                "(ptr) => IVectorView.fromPtr(ptr, iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}', intType: IntType.int64)"));
      });

      test('(Object?)', () {
        final typeDef = 'Windows.Foundation.Collections.PropertySet'.typeDef;
        final method = typeDef.findMethod('Insert')!;
        final param = method.parameters.last;
        expect(param.typeIdentifier.creator, isNull);
      });

      test('(PhoneNumberFormatter)', () {
        final typeDef =
            'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics'
                .typeDef;
        final method = typeDef.findMethod('TryCreate')!;
        final param = method.parameters.last;
        expect(param.typeIdentifier.creator,
            equals('PhoneNumberFormatter.fromPtr'));
      });

      test('(Point)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreatePoint')!;
        final param = method.parameters.first;
        expect(param.typeIdentifier.creator, isNull);
      });
    });

    group('dereference', () {
      test('de-references TypeIdentifiers', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(
            method.returnType
                .typeIdentifier // IMap<String, IVectorView<TextSegment>>
                .dereference() // String
                .baseType,
            equals(BaseType.stringType));
        expect(
            method.returnType
                .typeIdentifier // IMap<String, IVectorView<TextSegment>>
                .dereference() // String
                .dereference() // IVectorView<TextSegment>
                .name,
            endsWith('IVectorView`1'));
      });

      test('throws a StateError if TypeIdentifier is cannot be de-referenced',
          () {
        final typeDef = 'Windows.Globalization.ICalendarFactory'.typeDef;
        final method = typeDef.findMethod('CreateCalendar')!;
        expect(
          () => method.returnType.typeIdentifier.dereference(),
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              equals('Could not de-reference type Calendar.'),
            ),
          ),
        );
      });
    });

    group('genericParamSequence', () {
      test('returns correct values', () {
        final typeDef = 'Windows.Foundation.Collections.IMap`2'.typeDef;
        final method = typeDef.findMethod('Insert')!;
        final [param1, param2] = method.parameters;
        expect(param1.typeIdentifier.genericParamSequence, isZero);
        expect(param2.typeIdentifier.genericParamSequence, equals(1));
      });

      test(
          'throws a StateError if TypeIdentifier has no genericParameterSequence',
          () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(
          () => method.returnType.typeIdentifier.genericParamSequence,
          throwsA(
            isA<StateError>().having(
              (e) => e.message,
              'message',
              equals('Type IMap`2 has no genericParameterSequence.'),
            ),
          ),
        );
      });
    });

    group('iid', () {
      test('(IAsyncOperation<IVectorView<StorageFile>>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('PickMultipleFilesAsync')!;
        expect(method.returnType.typeIdentifier.iid.toString(),
            equals('{03362e33-e413-5f29-97d0-48a4780935f9}'));
      });

      test('(IMap<String, IVectorView<TextSegment>>)', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(method.returnType.typeIdentifier.iid.toString(),
            equals('{a31b6540-b2b1-536d-818f-8ade7051c3b3}'));
      });

      test('(IMapView<PedometerStepKind, PedometerReading>)', () {
        final typeDef = 'Windows.Devices.Sensors.IPedometer2'.typeDef;
        final method = typeDef.findMethod('GetCurrentReadings')!;
        expect(method.returnType.typeIdentifier.iid.toString(),
            equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));
      });

      test('(IAsyncOperation<IReference<TimeSpan>>)', () {
        final typeDef = 'Windows.UI.Xaml.Controls.ITimePickerFlyout'.typeDef;
        final method = typeDef.findMethod('ShowAtAsync')!;
        expect(method.returnType.typeIdentifier.iid.toString(),
            equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
      });
    });

    group('iterableIID', () {
      test('(IIterable<IKeyValuePair<PedometerStepKind, PedometerReading>>)',
          () {
        final typeDef = 'Windows.Devices.Sensors.IPedometer2'.typeDef;
        final method = typeDef.findMethod('GetCurrentReadings')!;
        expect(method.returnType.typeIdentifier.iterableIID,
            equals('{098f29cb-bc91-5639-a541-d5a4811ec35b}'));
      });

      test('(IIterable<IKeyValuePair<String, IVectorView<TextSegment>>>)', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(method.returnType.typeIdentifier.iterableIID,
            equals('{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}'));
      });

      test('(IIterable<HostName>)', () {
        final typeDef =
            'Windows.Networking.Connectivity.INetworkInformationStatics'
                .typeDef;
        final method = typeDef.findMethod('GetHostNames')!;
        expect(method.returnType.typeIdentifier.iterableIID,
            equals('{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}'));
      });

      test('(IIterable<String>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('get_FileTypeFilter')!;
        expect(method.returnType.typeIdentifier.iterableIID,
            equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
      });

      test('throws an UnsupportedError', () {
        final typeDef = 'Windows.Globalization.ICalendarFactory'.typeDef;
        final method = typeDef.findMethod('CreateCalendar')!;
        expect(
          () => method.returnType.typeIdentifier.iterableIID,
          throwsA(
            isA<UnsupportedError>().having(
              (e) => e.message,
              'message',
              equals(
                  'Calendar is not an IMap, IMapView, IVector or IVectorView.'),
            ),
          ),
        );
      });
    });

    group('shortName', () {
      test('(AsyncOperationProgressHandler<IVectorView<ISmsMessage?>, int>)',
          () {
        final typeDef = 'Windows.Devices.Sms.GetSmsMessagesOperation'.typeDef;
        final method = typeDef.findMethod('get_Progress')!;
        expect(
            method.returnType.typeIdentifier.shortName,
            equals(
                'AsyncOperationProgressHandler<IVectorView<ISmsMessage?>, int>'));
      });

      test('(Calendar)', () {
        final typeDef = 'Windows.Globalization.ICalendarFactory'.typeDef;
        final method = typeDef.findMethod('CreateCalendar')!;
        expect(method.returnType.typeIdentifier.shortName, equals('Calendar'));
      });

      test('(DateTime)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateDateTime')!;
        expect(method.parameters.first.typeIdentifier.shortName,
            equals('DateTime'));
      });

      test('(Duration)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateTimeSpan')!;
        expect(method.parameters.first.typeIdentifier.shortName,
            equals('Duration'));
      });

      test('(Guid)', () {
        final typeDef = 'Windows.Foundation.IPropertyValueStatics'.typeDef;
        final method = typeDef.findMethod('CreateGuid')!;
        expect(
            method.parameters.first.typeIdentifier.shortName, equals('Guid'));
      });

      test('(IAsyncOperation<IVectorView<StorageFile?>>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('PickMultipleFilesAsync')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IAsyncOperation<IVectorView<StorageFile?>>'));
      });

      test('(IAsyncOperation<StorageFile?>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('PickSingleFileAsync')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IAsyncOperation<StorageFile?>'));
      });

      test('(IAsyncOperationWithProgress<IBuffer?, int>)', () {
        final typeDef = 'Windows.Devices.Enumeration.DeviceThumbnail'.typeDef;
        final method = typeDef.findMethod('ReadAsync')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IAsyncOperationWithProgress<IBuffer?, int>'));
      });

      test('(IIterable<IKeyValuePair<String, IJsonValue?>>)', () {
        final typeDef = 'Windows.Data.Json.JsonObject'.typeDef;
        expect(typeDef.interfaces[3].typeSpec!.shortName,
            equals('IIterable<IKeyValuePair<String, IJsonValue?>>'));
      });

      test('(IIterable<IKeyValuePair<String, String>>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(typeDef.interfaces[1].typeSpec!.shortName,
            equals('IIterable<IKeyValuePair<String, String>>'));
      });

      test('(IIterator<IKeyValuePair<String, String>>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        final method = typeDef.findMethod('First')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IIterator<IKeyValuePair<String, String>>'));
      });

      test('(IMap<String, IJsonValue?>)', () {
        final typeDef = 'Windows.Data.Json.JsonObject'.typeDef;
        expect(typeDef.interfaces[2].typeSpec!.shortName,
            equals('IMap<String, IJsonValue?>'));
      });

      test('(IMap<String, IVectorView<TextSegment>>)', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IMap<String, IVectorView<TextSegment>>'));
      });

      test('(IMap<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(typeDef.interfaces[0].typeSpec!.shortName,
            equals('IMap<String, String>'));
      });

      test('(IMapView<PedometerStepKind, PedometerReading?>)', () {
        final typeDef = 'Windows.Devices.Sensors.IPedometer2'.typeDef;
        final method = typeDef.findMethod('GetCurrentReadings')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IMapView<PedometerStepKind, PedometerReading?>'));
      });

      test('(IMapView<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        final method = typeDef.findMethod('GetView')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IMapView<String, String>'));
      });

      test('(IObservableMap<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(typeDef.interfaces[2].typeSpec!.shortName,
            equals('IObservableMap<String, String>'));
      });

      test('(IReference<BasicGeoposition?>)', () {
        final typeDef =
            'Windows.Devices.Geolocation.IGeolocatorStatics2'.typeDef;
        final method = typeDef.findMethod('get_DefaultGeoposition')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IReference<BasicGeoposition?>'));
      });

      test('(IReference<int?>)', () {
        final typeDef = 'Windows.Devices.Power.IBatteryReport'.typeDef;
        final method = typeDef.findMethod('get_ChargeRateInMilliwatts')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IReference<int?>'));
      });

      test('(IVector<String>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('get_FileTypeFilter')!;
        expect(method.returnType.typeIdentifier.shortName,
            equals('IVector<String>'));
      });

      test('(Object?)', () {
        final typeDef = 'Windows.Foundation.Collections.PropertySet'.typeDef;
        final method = typeDef.findMethod('Insert')!;
        expect(
            method.parameters.last.typeIdentifier.shortName, equals('Object'));
      });

      test('(PhoneNumberFormatter)', () {
        final typeDef =
            'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics'
                .typeDef;
        final method = typeDef.findMethod('TryCreate')!;
        expect(method.parameters.last.typeIdentifier.shortName,
            equals('PhoneNumberFormatter'));
      });
    });

    group('signature', () {
      test('(AsyncActionCompletedHandler)', () {
        final typeDef = 'Windows.Foundation.IAsyncAction'.typeDef;
        final method = typeDef.findMethod('get_Completed')!;
        expect(method.returnType.typeIdentifier.signature,
            equals('delegate({a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7})'));
      });

      test('(AsyncOperationProgressHandler<IVectorView<ISmsMessage>, int>)',
          () {
        final typeDef = 'Windows.Devices.Sms.GetSmsMessagesOperation'.typeDef;
        final method = typeDef.findMethod('get_Progress')!;
        expect(
            method.returnType.typeIdentifier.signature,
            equals(
                'pinterface({c49b9bba-03ab-522e-884f-227352c8e7d1};pinterface({bbe1fa4c-b0e3-4583-baef-1f1b2e483e56};{ed3c5e28-6984-4b07-811d-8d5906ed3cea});i4)'));
      });

      test('(AsyncStatus)', () {
        final typeDef = 'Windows.Foundation.IAsyncInfo'.typeDef;
        final method = typeDef.findMethod('get_Status')!;
        expect(method.returnType.typeIdentifier.signature,
            equals('enum(Windows.Foundation.AsyncStatus;i4)'));
      });

      test('(DateTime)', () {
        final typeDef = 'Windows.Foundation.IPropertyValue'.typeDef;
        final method = typeDef.findMethod('GetDateTime')!;
        expect(method.returnType.typeIdentifier.signature,
            equals('struct(Windows.Foundation.DateTime;i8)'));
      });

      test('(Duration)', () {
        final typeDef = 'Windows.Foundation.IPropertyValue'.typeDef;
        final method = typeDef.findMethod('GetTimeSpan')!;
        expect(method.returnType.typeIdentifier.signature,
            equals('struct(Windows.Foundation.TimeSpan;i8)'));
      });

      test('(Guid)', () {
        final typeDef = 'Windows.Foundation.IPropertyValue'.typeDef;
        final method = typeDef.findMethod('GetGuid')!;
        expect(method.returnType.typeIdentifier.signature, equals('g16'));
      });

      test('(IAsyncOperation<IReference<Duration>>)', () {
        final typeDef = 'Windows.UI.Xaml.Controls.ITimePickerFlyout'.typeDef;
        final method = typeDef.findMethod('ShowAtAsync')!;
        expect(
            method.returnType.typeIdentifier.signature,
            equals(
                'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'));
      });

      test('(IIterable<IKeyValuePair<Guid, Object>>)', () {
        final typeDef =
            'Windows.Media.MediaProperties.MediaPropertySet'.typeDef;
        expect(
            typeDef.interfaces[1].typeSpec!.signature,
            equals(
                'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'));
      });

      test('(IMap<Guid, Object>)', () {
        final typeDef =
            'Windows.Media.MediaProperties.MediaPropertySet'.typeDef;
        expect(
            typeDef.interfaces.first.typeSpec!.signature,
            equals(
                'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'));
      });

      test('(IMap<String, IVectorView<TextSegment>>)', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        expect(
            method.returnType.typeIdentifier.signature,
            equals(
                'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;pinterface({bbe1fa4c-b0e3-4583-baef-1f1b2e483e56};struct(Windows.Data.Text.TextSegment;u4;u4)))'));
      });

      test('(IMap<String, String>)', () {
        final typeDef = 'Windows.Foundation.Collections.StringMap'.typeDef;
        expect(
            typeDef.interfaces.first.typeSpec!.signature,
            equals(
                'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'));
      });

      test('(IMapView<PedometerStepKind, PedometerReading>)', () {
        final typeDef = 'Windows.Devices.Sensors.IPedometer2'.typeDef;
        final method = typeDef.findMethod('GetCurrentReadings')!;
        expect(
            method.returnType.typeIdentifier.signature,
            equals(
                'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'));
      });

      test('(Point)', () {
        final typeDef = 'Windows.Foundation.IPropertyValue'.typeDef;
        final method = typeDef.findMethod('GetPoint')!;
        expect(method.returnType.typeIdentifier.signature,
            equals('struct(Windows.Foundation.Point;f4;f4)'));
      });

      test('(Uri)', () {
        final typeDef = 'Windows.Foundation.IUriRuntimeClassFactory'.typeDef;
        final method = typeDef.findMethod('CreateUri')!;
        expect(
            method.returnType.typeIdentifier.signature,
            equals(
                'rc(Windows.Foundation.Uri;{9e365e57-48b2-4160-956f-c7385120bbfc})'));
      });
    });

    group('typeArgs', () {
      test('(AsyncOperationProgressHandler<IVectorView<ISmsMessage>, int>)',
          () {
        final typeDef = 'Windows.Devices.Sms.GetSmsMessagesOperation'.typeDef;
        final method = typeDef.findMethod('get_Progress')!;
        final typeArgs = method.returnType.typeIdentifier.typeArgs;
        expect(typeArgs.length, equals(2));
        final [typeArg1, typeArg2] = typeArgs;
        expect(typeArg1.baseType, equals(BaseType.genericTypeModifier));
        expect(typeArg1.name, endsWith('IVectorView`1'));
        expect(typeArg1.typeArg?.baseType, equals(BaseType.classTypeModifier));
        expect(typeArg1.typeArg!.name, endsWith('ISmsMessage'));
        expect(typeArg1.typeArg!.typeArg, isNull);
        expect(typeArg2.baseType, equals(BaseType.int32Type));
        expect(typeArg2.typeArg, isNull);
      });

      test('(empty)', () {
        const typeIdentifier = TypeIdentifier(BaseType.genericTypeModifier);
        expect(typeIdentifier.typeArgs, isEmpty);
      });

      test('(IAsyncOperation<IVectorView<StorageFile?>>)', () {
        final typeDef = 'Windows.Storage.Pickers.IFileOpenPicker'.typeDef;
        final method = typeDef.findMethod('PickMultipleFilesAsync')!;
        final typeArgs = method.returnType.typeIdentifier.typeArgs;
        expect(typeArgs.length, equals(1));
        final typeArg = typeArgs.first;
        expect(typeArg.baseType, equals(BaseType.genericTypeModifier));
        expect(typeArg.name, endsWith('IVectorView`1'));
        expect(typeArg.typeArg?.baseType, equals(BaseType.classTypeModifier));
        expect(typeArg.typeArg!.name, endsWith('StorageFile'));
      });

      test('(IIterable<IKeyValuePair<String, IJsonValue?>>)', () {
        final typeDef = 'Windows.Data.Json.JsonObject'.typeDef;
        final typeArgs = typeDef.interfaces[3].typeSpec!.typeArgs;
        expect(typeArgs.length, equals(1));
        final typeArg = typeArgs.first;
        expect(typeArg.baseType, equals(BaseType.genericTypeModifier));
        expect(typeArg.name, endsWith('IKeyValuePair`2'));
      });

      test('(IKeyValuePair<String, IJsonValue?>)', () {
        final typeDef = 'Windows.Data.Json.JsonObject'.typeDef;
        final typeArgs =
            typeDef.interfaces[3].typeSpec!.typeArgs.first.typeArgs;
        expect(typeArgs.length, equals(2));
        final [typeArg1, typeArg2] = typeArgs;
        expect(typeArg1.baseType, equals(BaseType.stringType));
        expect(typeArg2.baseType, equals(BaseType.classTypeModifier));
        expect(typeArg2.name, endsWith('IJsonValue'));
      });

      test('(IMap<String, IVectorView<TextSegment>?>)', () {
        final typeDef =
            'Windows.Storage.Search.IStorageFileQueryResult2'.typeDef;
        final method = typeDef.findMethod('GetMatchingPropertiesWithRanges')!;
        final typeArgs = method.returnType.typeIdentifier.typeArgs;
        expect(typeArgs.length, equals(2));
        final [typeArg1, typeArg2] = typeArgs;
        expect(typeArg1.baseType, equals(BaseType.stringType));
        expect(typeArg1.typeArg, isNull);
        expect(typeArg2.baseType, equals(BaseType.genericTypeModifier));
        expect(typeArg2.name, endsWith('IVectorView`1'));
        expect(typeArg2.typeArg?.baseType, equals(BaseType.valueTypeModifier));
        expect(typeArg2.typeArg!.name, endsWith('TextSegment'));
        expect(typeArg2.typeArg!.typeArg, isNull);
      });

      test('(IReference<int?>)', () {
        final typeDef = 'Windows.Devices.Power.IBatteryReport'.typeDef;
        final method = typeDef.findMethod('get_ChargeRateInMilliwatts')!;
        final typeArgs = method.returnType.typeIdentifier.typeArgs;
        expect(typeArgs.length, equals(1));
        expect(typeArgs.first.baseType, equals(BaseType.int32Type));
      });
    });
  });
}
