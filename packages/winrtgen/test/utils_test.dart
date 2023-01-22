// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('nullable', () {
    expect(nullable('StorageFile'), equals('StorageFile?'));
    expect(nullable('Calendar?'), equals('Calendar?'));
    expect(nullable('IIterable<IKeyValuePair<String, String>>'),
        equals('IIterable<IKeyValuePair<String, String>>?'));
  });

  test('outerType', () {
    expect(
        outerType('IAsyncOperation<StorageFile?>'), equals('IAsyncOperation'));
    expect(outerType('IMap<String, Object?>'), equals('IMap'));
    expect(outerType('IMapView<String, IVectorView<TextSegment>?>'),
        equals('IMapView'));
  });

  test('parentNamespace', () {
    expect(parentNamespace('Windows.Foundation.IAsyncInfo'),
        equals('Windows.Foundation'));
    expect(parentNamespace('Windows.Gaming.Input.Gamepad'),
        equals('Windows.Gaming.Input'));
    expect(parentNamespace('Windows.Devices.Display.Core.DisplayManager'),
        equals('Windows.Devices.Display.Core'));
  });

  test('relativePath', () {
    expect(relativePath('helpers.dart', start: 'winrt/foundation'),
        equals('../../helpers.dart'));
    expect(
        relativePath('winrt/globalization/calendar.dart',
            start: 'winrt/globalization'),
        equals('calendar.dart'));
    expect(relativePath('com/iinspectable.dart', start: 'winrt/storage'),
        equals('../../com/iinspectable.dart'));
    expect(
        relativePath('winrt/foundation/collections/ivector.dart',
            start: 'winrt/globalization'),
        equals('../foundation/collections/ivector.dart'));
    expect(
        relativePath(
            'winrt/globalization/phonenumberformatting/phonenumberformatter.dart',
            start: 'winrt/globalization'),
        equals('phonenumberformatting/phonenumberformatter.dart'));
  });

  test('stripQuestionMarkSuffix', () {
    expect(stripQuestionMarkSuffix('IJsonValue?'), equals('IJsonValue'));
    expect(stripQuestionMarkSuffix('IJsonValue'), equals('IJsonValue'));
  });

  test('typeArguments', () {
    expect(
        typeArguments('IAsyncOperation<StorageFile?>'), equals('StorageFile?'));
    expect(typeArguments('IMap<String, Object?>'), equals('String, Object?'));
    expect(typeArguments('IMapView<String, IVectorView<TextSegment>?>'),
        equals('String, IVectorView<TextSegment>?'));
  });

  test('packageNameFromWinRTType', () {
    expect(packageNameFromWinRTType('Windows.Globalization.Calendar'),
        equals('windows_globalization'));
    expect(packageNameFromWinRTType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('windows_storage'));
    expect(
        packageNameFromWinRTType(
            'Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('windows_devices'));
  });

  test('relativeFolderPathFromWinRTType', () {
    expect(relativeFolderPathFromWinRTType('Windows.Globalization.Calendar'),
        equals('../../packages/windows_globalization/lib/src'));
    expect(
        relativeFolderPathFromWinRTType(
            'Windows.Storage.Pickers.FileOpenPicker'),
        equals('../../packages/windows_storage/lib/src/pickers'));
    expect(
        relativeFolderPathFromWinRTType(
            'Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals(
            '../../packages/windows_devices/lib/src/geolocation/geofencing'));
  });

  test('fileNameFromWinRTType', () {
    expect(fileNameFromWinRTType('Windows.Globalization.Calendar'),
        equals('calendar.dart'));
    expect(fileNameFromWinRTType('Windows.Foundation.Collections.IMapView`2'),
        equals('imapview.dart'));
  });

  test('folderFromWinRTType', () {
    expect(folderFromWinRTType('Windows.Globalization.Calendar'),
        equals('windows_globalization'));
    expect(folderFromWinRTType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('windows_storage/pickers'));
    expect(
        folderFromWinRTType('Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('windows_devices/geolocation/geofencing'));
  });

  test('fullyQualifiedTypeNameFromTypeDef', () {
    final calendarTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    expect(fullyQualifiedTypeNameFromTypeDef(calendarTypeDef),
        equals('Windows.Globalization.Calendar'));

    final mapViewTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IMapView`2')!;
    expect(fullyQualifiedTypeNameFromTypeDef(mapViewTypeDef),
        equals('Windows.Foundation.Collections.IMapView`2'));
  });

  test('packageImportFromTypeDef', () {
    final calendarTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    expect(packageImportFromTypeDef(calendarTypeDef),
        equals('package:windows_globalization/windows_globalization.dart'));

    final mapViewTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IMapView`2')!;
    expect(packageImportFromTypeDef(mapViewTypeDef),
        equals('package:windows_foundation/windows_foundation.dart'));
  });

  test('packageNameFromTypeDef', () {
    final calendarTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    expect(packageNameFromTypeDef(calendarTypeDef),
        equals('windows_globalization'));

    final mapViewTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IMapView`2')!;
    expect(
        packageNameFromTypeDef(mapViewTypeDef), equals('windows_foundation'));
  });

  test('primitiveTypeNameFromBaseType', () {
    expect(primitiveTypeNameFromBaseType(BaseType.booleanType), equals('bool'));
    expect(
        primitiveTypeNameFromBaseType(BaseType.doubleType), equals('double'));
    expect(primitiveTypeNameFromBaseType(BaseType.floatType), equals('double'));
    expect(primitiveTypeNameFromBaseType(BaseType.int8Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.int16Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.int32Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.int64Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint8Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint16Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint32Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint64Type), equals('int'));
    expect(
        primitiveTypeNameFromBaseType(BaseType.stringType), equals('String'));
  });

  test('parseTypeIdentifierName', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        parseTypeIdentifierName(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        equals('Calendar'));

    final propertyValueStatics = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    expect(
        parseTypeIdentifierName(propertyValueStatics
            .findMethod('CreateGuid')!
            .parameters
            .first
            .typeIdentifier),
        equals('Guid'));
    expect(
        parseTypeIdentifierName(propertyValueStatics
            .findMethod('CreatePoint')!
            .parameters
            .first
            .typeIdentifier),
        equals('Point'));
    expect(
        parseTypeIdentifierName(propertyValueStatics
            .findMethod('CreateTimeSpan')!
            .parameters
            .first
            .typeIdentifier),
        equals('Duration'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    expect(parseTypeIdentifierName(jsonObject.interfaces[2].typeSpec!),
        equals('IMap<String, IJsonValue?>'));
    expect(parseTypeIdentifierName(jsonObject.interfaces[3].typeSpec!),
        equals('IIterable<IKeyValuePair<String, IJsonValue?>>'));

    final propertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    expect(
        parseTypeIdentifierName(
            propertySet.findMethod('Insert')!.parameters.last.typeIdentifier),
        equals('Object'));

    final phoneNumberFormatterStatics = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics')!;
    expect(
        parseTypeIdentifierName(phoneNumberFormatterStatics
            .findMethod('TryCreate')!
            .parameters
            .last
            .typeIdentifier),
        equals('PhoneNumberFormatter'));
  });

  test('parseGenericTypeIdentifierName', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        () => parseGenericTypeIdentifierName(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        throwsArgumentError);

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    expect(parseGenericTypeIdentifierName(stringMap.interfaces[0].typeSpec!),
        equals('IMap<String, String>'));
    expect(parseGenericTypeIdentifierName(stringMap.interfaces[1].typeSpec!),
        equals('IIterable<IKeyValuePair<String, String>>'));
    expect(parseGenericTypeIdentifierName(stringMap.interfaces[2].typeSpec!),
        equals('IObservableMap<String, String>'));
    expect(
        parseGenericTypeIdentifierName(
            stringMap.findMethod('First')!.returnType.typeIdentifier),
        equals('IIterator<IKeyValuePair<String, String>>'));
    expect(
        parseGenericTypeIdentifierName(
            stringMap.findMethod('GetView')!.returnType.typeIdentifier),
        equals('IMapView<String, String>'));

    final fileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        parseGenericTypeIdentifierName(fileOpenPicker
            .findMethod('get_FileTypeFilter')!
            .returnType
            .typeIdentifier),
        equals('IVector<String>'));
    expect(
        parseGenericTypeIdentifierName(fileOpenPicker
            .findMethod('PickSingleFileAsync')!
            .returnType
            .typeIdentifier),
        equals('IAsyncOperation<StorageFile?>'));
    expect(
        parseGenericTypeIdentifierName(fileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier),
        equals('IAsyncOperation<IVectorView<StorageFile>>'));

    final storageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        parseGenericTypeIdentifierName(storageFileQueryResult2
            .findMethod('GetMatchingPropertiesWithRanges')!
            .returnType
            .typeIdentifier),
        equals('IMap<String, IVectorView<TextSegment>?>'));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        parseGenericTypeIdentifierName(pedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier),
        equals('IMapView<PedometerStepKind, PedometerReading?>'));
  });

  test('parseArgumentForCreatorParameter', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        parseArgumentForCreatorParameter(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        equals('Calendar.fromRawPointer'));

    final propertyValueStatics = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    expect(
        parseArgumentForCreatorParameter(propertyValueStatics
            .findMethod('CreateGuid')!
            .parameters
            .first
            .typeIdentifier),
        isNull);
    expect(
        parseArgumentForCreatorParameter(propertyValueStatics
            .findMethod('CreatePoint')!
            .parameters
            .first
            .typeIdentifier),
        isNull);
    expect(
        parseArgumentForCreatorParameter(propertyValueStatics
            .findMethod('CreateTimeSpan')!
            .parameters
            .first
            .typeIdentifier),
        isNull);

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    expect(
        parseArgumentForCreatorParameter(jsonObject.interfaces[2].typeSpec!),
        equals(
            "(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, creator: IJsonValue.fromRawPointer, iterableIid: '{dfabb6e1-0411-5a8f-aa87-354e7110f099}')"));
    expect(
        parseArgumentForCreatorParameter(jsonObject.interfaces[3].typeSpec!),
        equals(
            '(Pointer<COMObject> ptr) => IIterable.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IKeyValuePair.fromRawPointer(ptr, creator: IJsonValue.fromRawPointer))'));

    final propertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    expect(
        parseArgumentForCreatorParameter(
            propertySet.findMethod('Insert')!.parameters.last.typeIdentifier),
        isNull);

    final phoneNumberFormatterStatics = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics')!;
    expect(
        parseArgumentForCreatorParameter(phoneNumberFormatterStatics
            .findMethod('TryCreate')!
            .parameters
            .last
            .typeIdentifier),
        equals('PhoneNumberFormatter.fromRawPointer'));
  });

  test('parseArgumentForCreatorParameterFromGenericTypeIdentifier', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        () => parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            calendarFactory
                .findMethod('CreateCalendar')!
                .returnType
                .typeIdentifier),
        throwsArgumentError);

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.interfaces[0].typeSpec!),
        equals(
            "(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.interfaces[1].typeSpec!),
        equals(
            '(Pointer<COMObject> ptr) => IIterable.fromRawPointer(ptr, creator: IKeyValuePair.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.interfaces[2].typeSpec!),
        equals('IObservableMap.fromRawPointer'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.findMethod('First')!.returnType.typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IIterator.fromRawPointer(ptr, creator: IKeyValuePair.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.findMethod('GetView')!.returnType.typeIdentifier),
        equals(
            "(Pointer<COMObject> ptr) => IMapView.fromRawPointer(ptr, iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')"));

    final fileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(fileOpenPicker
            .findMethod('get_FileTypeFilter')!
            .returnType
            .typeIdentifier),
        equals(
            "(Pointer<COMObject> ptr) => IVector.fromRawPointer(ptr, iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')"));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(fileOpenPicker
            .findMethod('PickSingleFileAsync')!
            .returnType
            .typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IAsyncOperation.fromRawPointer(ptr, creator: StorageFile.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(fileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier),
        equals(
            "(Pointer<COMObject> ptr) => IAsyncOperation.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr, creator: StorageFile.fromRawPointer, iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'))"));

    final storageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            storageFileQueryResult2
                .findMethod('GetMatchingPropertiesWithRanges')!
                .returnType
                .typeIdentifier),
        equals(
            "(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr, iterableIid: '{5498f4f3-cee4-5b72-9729-815c4ad7b9dc}'), iterableIid: '{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}')"));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(pedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier),
        equals(
            "(Pointer<COMObject> ptr) => IMapView.fromRawPointer(ptr, enumKeyCreator: PedometerStepKind.from, creator: PedometerReading.fromRawPointer, iterableIid: '{098f29cb-bc91-5639-a541-d5a4811ec35b}')"));
  });

  test('primitiveTypeSignatureFromBaseType', () {
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.booleanType), equals('b1'));
    expect(primitiveTypeSignatureFromBaseType(BaseType.charType), equals('c2'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.doubleType), equals('f8'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.floatType), equals('f4'));
    expect(primitiveTypeSignatureFromBaseType(BaseType.int8Type), equals('i1'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.int16Type), equals('i2'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.int32Type), equals('i4'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.int64Type), equals('i8'));

    expect(primitiveTypeSignatureFromBaseType(BaseType.objectType),
        equals('cinterface(IInspectable)'));
    expect(primitiveTypeSignatureFromBaseType(BaseType.stringType),
        equals('string'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint8Type), equals('u1'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint16Type), equals('u2'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint32Type), equals('u4'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint64Type), equals('u8'));
  });

  test('parseTypeDefSignature', () {
    final asyncAction =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;
    expect(parseTypeDefSignature(asyncAction),
        equals('{5a648006-843a-4da9-865b-9d26e5dfad7b}'));

    final calendar =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    expect(
        parseTypeDefSignature(calendar),
        equals(
            'rc(Windows.Globalization.Calendar;{ca30221d-86d9-40fb-a26b-d44eb7cf08ea})'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    // IIterable<IKeyValuePair<String, IJsonValue>>
    final iterable = jsonObject.interfaces[3];
    expect(
        parseTypeDefSignature(iterable),
        equals(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))'));
  });

  test('parseTypeIdentifierSignature', () {
    final iPropertyValue =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;
    final getDateTime =
        iPropertyValue.findMethod('GetDateTime')!.returnType.typeIdentifier;
    final getGuid =
        iPropertyValue.findMethod('GetGuid')!.returnType.typeIdentifier;
    final getPoint =
        iPropertyValue.findMethod('GetPoint')!.returnType.typeIdentifier;
    final getTimeSpan =
        iPropertyValue.findMethod('GetTimeSpan')!.returnType.typeIdentifier;
    expect(parseTypeIdentifierSignature(getDateTime),
        equals('struct(Windows.Foundation.DateTime;i8)'));
    expect(parseTypeIdentifierSignature(getGuid), equals('g16'));
    expect(parseTypeIdentifierSignature(getPoint),
        equals('struct(Windows.Foundation.Point;f4;f4)'));
    expect(parseTypeIdentifierSignature(getTimeSpan),
        equals('struct(Windows.Foundation.TimeSpan;i8)'));

    final asyncAction =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;
    final completedHandler =
        asyncAction.findMethod('get_Completed')!.returnType.typeIdentifier;
    expect(parseTypeIdentifierSignature(completedHandler),
        equals('delegate({a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7})'));

    final asyncInfo =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
    final status =
        asyncInfo.findMethod('get_Status')!.returnType.typeIdentifier;
    expect(parseTypeIdentifierSignature(status),
        equals('enum(Windows.Foundation.AsyncStatus;i4)'));

    final uriRuntimeClassFactory = MetadataStore.getMetadataForType(
        'Windows.Foundation.IUriRuntimeClassFactory')!;
    final createUri = uriRuntimeClassFactory
        .findMethod('CreateUri')!
        .returnType
        .typeIdentifier;
    expect(
        parseTypeIdentifierSignature(createUri),
        equals(
            'rc(Windows.Foundation.Uri;{9e365e57-48b2-4160-956f-c7385120bbfc})'));

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    // IMap<String, String>
    final map = stringMap.interfaces.elementAt(0).typeSpec!;
    expect(
        parseTypeIdentifierSignature(map),
        equals(
            'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'));
  });

  test('parseGenericTypeIdentifierSignature', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        () => parseGenericTypeIdentifierSignature(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        throwsArgumentError);

    final mediaPropertySet = MetadataStore.getMetadataForType(
        'Windows.Media.MediaProperties.MediaPropertySet')!;
    // IMap<Guid, Object>
    final map = mediaPropertySet.interfaces.elementAt(0).typeSpec!;
    expect(
        parseGenericTypeIdentifierSignature(map),
        equals(
            'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'));
    // IIterable<IKeyValuePair<Guid, Object>>
    final iterable = mediaPropertySet.interfaces.elementAt(1).typeSpec!;
    expect(
        parseGenericTypeIdentifierSignature(iterable),
        equals(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'));

    final timePickerFlyout = MetadataStore.getMetadataForType(
        'Windows.UI.Xaml.Controls.ITimePickerFlyout')!;
    // IAsyncOperation<IReference<Duration>>
    final asyncOperation =
        timePickerFlyout.findMethod('ShowAtAsync')!.returnType.typeIdentifier;
    expect(
        parseGenericTypeIdentifierSignature(asyncOperation),
        equals(
            'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    // IMapView<PedometerStepKind, PedometerReading>
    final mapView =
        pedometer2.findMethod('GetCurrentReadings')!.returnType.typeIdentifier;
    expect(
        parseGenericTypeIdentifierSignature(mapView),
        equals(
            'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'));
  });

  test('iidFromSignature', () {
    // IAsyncOperation<IReference<Duration>>
    expect(
        iidFromSignature(
                'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))')
            .toString(),
        equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));

    // IMap<Guid, Object>
    expect(
        iidFromSignature(
                'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))')
            .toString(),
        equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));

    // IIterable<IKeyValuePair<Guid, Object>>
    expect(
        iidFromSignature(
                'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))')
            .toString(),
        equals('{f3b20528-e3b3-5331-b2d0-0c2623aee785}'));

    // IIterable<IKeyValuePair<String, IJsonValue>>
    expect(
        iidFromSignature(
                'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))')
            .toString(),
        equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));

    // IIterable<String>
    expect(
        iidFromSignature(
                'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};string)')
            .toString(),
        equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));

    // IMap<String, String>
    expect(
        iidFromSignature(
                'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)')
            .toString(),
        equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));

    // IMapView<PedometerStepKind, PedometerReading>
    expect(
        iidFromSignature(
                'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))')
            .toString(),
        equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));

    // IVector<IJsonValue>
    expect(
        iidFromSignature(
                'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e})')
            .toString(),
        equals('{d44662bc-dce3-59a8-9272-4b210f33908b}'));

    // IVector<String>
    expect(
        iidFromSignature(
                'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};string)')
            .toString(),
        equals('{98b9acc1-4b56-532e-ac73-03d5291cca90}'));
  });

  test('iidFromTypeDef', () {
    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    // IMap<String, String>
    expect(iidFromTypeDef(stringMap.interfaces[0]).toString(),
        equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));
    // IIterable<IKeyValuePair<String, String>>
    expect(iidFromTypeDef(stringMap.interfaces[1]).toString(),
        equals('{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}'));

    final iPropertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;
    // IObservableMap<String, Object>
    expect(iidFromTypeDef(iPropertySet.interfaces[0]).toString(),
        equals('{236aac9d-fb12-5c4d-a41c-9e445fb4d7ec}'));

    final mediaPropertySet = MetadataStore.getMetadataForType(
        'Windows.Media.MediaProperties.MediaPropertySet')!;
    // IMap<Guid, Object>
    expect(iidFromTypeDef(mediaPropertySet.interfaces[0]).toString(),
        equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    // IMap<String, IJsonValue>
    expect(iidFromTypeDef(jsonObject.interfaces[2]).toString(),
        equals('{c9d9a725-786b-5113-b4b7-9b61764c220b}'));
    // IIterable<IKeyValuePair<String, IJsonValue>>
    expect(iidFromTypeDef(jsonObject.interfaces[3]).toString(),
        equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));
  });

  test('iidFromTypeIdentifier', () {
    final iFileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    // IAsyncOperation<IVectorView<StorageFile>>
    expect(
        iidFromTypeIdentifier(iFileOpenPicker
                .findMethod('PickMultipleFilesAsync')!
                .returnType
                .typeIdentifier)
            .toString(),
        equals('{03362e33-e413-5f29-97d0-48a4780935f9}'));

    final iStorageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    // IMap<String, IVectorView<TextSegment>>
    expect(
        iidFromTypeIdentifier(iStorageFileQueryResult2
                .findMethod('GetMatchingPropertiesWithRanges')!
                .returnType
                .typeIdentifier)
            .toString(),
        equals('{a31b6540-b2b1-536d-818f-8ade7051c3b3}'));

    final iPedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    // IMapView<PedometerStepKind, PedometerReading>
    expect(
        iidFromTypeIdentifier(iPedometer2
                .findMethod('GetCurrentReadings')!
                .returnType
                .typeIdentifier)
            .toString(),
        equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));

    final iTimePickerFlyout = MetadataStore.getMetadataForType(
        'Windows.UI.Xaml.Controls.ITimePickerFlyout')!;
    // IAsyncOperation<IReference<TimeSpan>>
    expect(
        iidFromTypeIdentifier(iTimePickerFlyout
                .findMethod('ShowAtAsync')!
                .returnType
                .typeIdentifier)
            .toString(),
        equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
  });

  test('iterableIidFromMapTypeIdentifier', () {
    final iStorageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        iterableIidFromMapTypeIdentifier(iStorageFileQueryResult2
                .findMethod('GetMatchingPropertiesWithRanges')!
                .returnType // IMap<String, IVectorView<TextSegment>>
                .typeIdentifier)
            .toString(),
        // IIterable<IKeyValuePair<String, IVectorView<TextSegment>>>
        equals('{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}'));

    final iPedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        iterableIidFromMapTypeIdentifier(iPedometer2
                .findMethod('GetCurrentReadings')!
                .returnType // IMapView<PedometerStepKind, PedometerReading>
                .typeIdentifier)
            .toString(),
        // IIterable<IKeyValuePair<PedometerStepKind, PedometerReading>>
        equals('{098f29cb-bc91-5639-a541-d5a4811ec35b}'));
  });

  test('iterableIidFromVectorTypeIdentifier', () {
    final iFileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        iterableIidFromVectorTypeIdentifier(iFileOpenPicker
                .findMethod('get_FileTypeFilter')!
                .returnType // IVector<String>
                .typeIdentifier)
            .toString(),
        // IIterable<String>
        equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));

    final iNetworkInformationStatics = MetadataStore.getMetadataForType(
        'Windows.Networking.Connectivity.INetworkInformationStatics')!;
    expect(
        iterableIidFromVectorTypeIdentifier(iNetworkInformationStatics
                .findMethod('GetHostNames')!
                .returnType // IVectorView<HostName>
                .typeIdentifier)
            .toString(),
        // IIterable<HostName>
        equals('{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}'));
  });

  test('sortImports', () {
    expect(
        sortImports([
          "import 'dart:ffi';",
          "import 'package:ffi/ffi.dart';",
          "import 'dart:async';",
          "import 'enums.g.dart';",
          "import '../../../combase.dart';",
          "import '../../../exceptions.dart';",
          "import '../../foundation/collections/ivectorview.dart';",
          "import '../../../types.dart';",
          "import '../../../com/iinspectable.dart';",
          "import '../../../utils.dart';",
          "import '../../foundation/iasyncoperation.dart';",
          "import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
          "import '../../../callbacks.dart';",
          "import '../storagefile.dart';",
          "import '../../../helpers.dart';",
          "import '../../foundation/collections/ivector.dart';",
          "import '../../internal/hstring_array.dart';",
          "import '../../../macros.dart';",
        ]),
        orderedEquals([
          "import 'dart:async';",
          "import 'dart:ffi';",
          "",
          "import 'package:ffi/ffi.dart';",
          "",
          "import '../../../callbacks.dart';",
          "import '../../../com/iinspectable.dart';",
          "import '../../../combase.dart';",
          "import '../../../exceptions.dart';",
          "import '../../../helpers.dart';",
          "import '../../../macros.dart';",
          "import '../../../types.dart';",
          "import '../../../utils.dart';",
          "import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
          "import '../../foundation/collections/ivector.dart';",
          "import '../../foundation/collections/ivectorview.dart';",
          "import '../../foundation/iasyncoperation.dart';",
          "import '../../internal/hstring_array.dart';",
          "import '../storagefile.dart';",
          "import 'enums.g.dart';",
        ]));
  });

  test('groupTypesByParentNamespace', () {
    expect(
        groupTypesByParentNamespace([
          'Windows.Foundation.IAsyncInfo',
          'Windows.Foundation.IClosable',
          'Windows.Foundation.IPropertyValue',
          'Windows.Foundation.IStringable',
          'Windows.Foundation.PropertyValue',
          'Windows.Gaming.Input.Gamepad',
          'Windows.Globalization.Calendar',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo',
          'Windows.Networking.IHostName',
          'Windows.Storage.IStorageItem',
          'Windows.Storage.UserDataPaths',
          'Windows.Storage.Pickers.FileOpenPicker',
          'Windows.UI.Notifications.IToastNotificationManagerStatics',
          'Windows.UI.Notifications.ToastNotification',
        ]),
        equals([
          NamespaceGroup(
            namespace: 'Windows.Foundation',
            types: [
              'Windows.Foundation.IAsyncInfo',
              'Windows.Foundation.IClosable',
              'Windows.Foundation.IPropertyValue',
              'Windows.Foundation.IStringable',
              'Windows.Foundation.PropertyValue'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Gaming.Input',
            types: ['Windows.Gaming.Input.Gamepad'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization',
            types: ['Windows.Globalization.Calendar'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization.PhoneNumberFormatting',
            types: [
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Networking',
            types: ['Windows.Networking.IHostName'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage',
            types: [
              'Windows.Storage.IStorageItem',
              'Windows.Storage.UserDataPaths'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage.Pickers',
            types: ['Windows.Storage.Pickers.FileOpenPicker'],
          ),
          NamespaceGroup(
            namespace: 'Windows.UI.Notifications',
            types: [
              'Windows.UI.Notifications.IToastNotificationManagerStatics',
              'Windows.UI.Notifications.ToastNotification'
            ],
          )
        ]));
  });
}
