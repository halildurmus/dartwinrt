// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
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

  group('iidFromSignature', () {
    test('returns the IID of IAsyncOperation<IReference<Duration>>', () {
      expect(
          iidFromSignature(
                  'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))')
              .toString(),
          equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
    });

    test('returns the IID of IMap<Guid, Object>', () {
      expect(
          iidFromSignature(
                  'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))')
              .toString(),
          equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<Guid, Object>>', () {
      expect(
          iidFromSignature(
                  'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))')
              .toString(),
          equals('{f3b20528-e3b3-5331-b2d0-0c2623aee785}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<String, IJsonValue>>', () {
      expect(
          iidFromSignature(
                  'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))')
              .toString(),
          equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));
    });

    test('returns the IID of IIterable<String>', () {
      expect(
          iidFromSignature(
                  'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};string)')
              .toString(),
          equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    });

    test('returns the IID of IMap<String, String>', () {
      expect(
          iidFromSignature(
                  'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)')
              .toString(),
          equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));
    });

    test('returns the IID of IMapView<PedometerStepKind, PedometerReading>',
        () {
      expect(
          iidFromSignature(
                  'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))')
              .toString(),
          equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));
    });

    test('returns the IID of IVector<IJsonValue>', () {
      expect(
          iidFromSignature(
                  'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e})')
              .toString(),
          equals('{d44662bc-dce3-59a8-9272-4b210f33908b}'));
    });

    test('returns the IID of IVector<String>', () {
      expect(
          iidFromSignature(
                  'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};string)')
              .toString(),
          equals('{98b9acc1-4b56-532e-ac73-03d5291cca90}'));
    });
  });

  group('iterableIidFromMapTypeIdentifier', () {
    test(
        'returns the IID of IIterable<IKeyValuePair<String, IVectorView<TextSegment>>>',
        () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Search.IStorageFileQueryResult2')!;
      expect(
          iterableIidFromMapTypeIdentifier(typeDef
                  .findMethod('GetMatchingPropertiesWithRanges')!
                  .returnType // IMap<String, IVectorView<TextSegment>>
                  .typeIdentifier)
              .toString(),
          equals('{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}'));
    });

    test(
        'returns the IID of IIterable<IKeyValuePair<PedometerStepKind, PedometerReading>>',
        () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Devices.Sensors.IPedometer2')!;
      expect(
          iterableIidFromMapTypeIdentifier(typeDef
                  .findMethod('GetCurrentReadings')!
                  .returnType // IMapView<PedometerStepKind, PedometerReading>
                  .typeIdentifier)
              .toString(),
          equals('{098f29cb-bc91-5639-a541-d5a4811ec35b}'));
    });
  });

  group('iterableIidFromVectorTypeIdentifier', () {
    test('returns the IID of IIterable<String>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.IFileOpenPicker')!;
      expect(
          iterableIidFromVectorTypeIdentifier(typeDef
                  .findMethod('get_FileTypeFilter')!
                  .returnType // IVector<String>
                  .typeIdentifier)
              .toString(),
          equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    });

    test('returns the IID of IIterable<HostName>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Networking.Connectivity.INetworkInformationStatics')!;
      expect(
          iterableIidFromVectorTypeIdentifier(typeDef
                  .findMethod('GetHostNames')!
                  .returnType // IVectorView<HostName>
                  .typeIdentifier)
              .toString(),
          equals('{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}'));
    });
  });

  test('lastComponent', () {
    expect(lastComponent('Windows.Globalization.Calendar'), equals('Calendar'));
    expect(lastComponent('Windows.Foundation.Collections.IVector`1'),
        equals('IVector`1'));
  });

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

  test('parentNamespace', () {
    expect(parentNamespace('Windows.Foundation.IAsyncInfo'),
        equals('Windows.Foundation'));
    expect(parentNamespace('Windows.Gaming.Input.Gamepad'),
        equals('Windows.Gaming.Input'));
    expect(parentNamespace('Windows.Devices.Display.Core.DisplayManager'),
        equals('Windows.Devices.Display.Core'));
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

  test('safeIdentifierForString', () {
    expect(safeIdentifierForString('null'), equals('null_'));
    expect(safeIdentifierForString('double'), equals('double_'));
    expect(safeIdentifierForString('__valueSize'), equals('valueSize'));
  });

  test('sortImports', () {
    expect(
        sortImports([
          "import 'fileproperties/basicproperties.dart';",
          "import 'dart:ffi';",
          "import 'package:ffi/ffi.dart';",
          "import 'enums.g.dart';",
          "import 'dart:async';",
          "import 'package:win32/win32.dart';",
          "import 'istoragefile.dart';",
          "import 'istoragefilestatics.dart';",
          "import 'istorageitem.dart';",
        ]),
        orderedEquals([
          "import 'dart:async';",
          "import 'dart:ffi';",
          '',
          "import 'package:ffi/ffi.dart';",
          "import 'package:win32/win32.dart';",
          '',
          "import 'enums.g.dart';",
          "import 'fileproperties/basicproperties.dart';",
          "import 'istoragefile.dart';",
          "import 'istoragefilestatics.dart';",
          "import 'istorageitem.dart';",
        ]));
  });

  test('stripGenerics', () {
    expect(stripGenerics('TypedEventHandler`2'), equals('TypedEventHandler'));
    expect(stripGenerics('LicenseChangedEventHandler'),
        equals('LicenseChangedEventHandler'));
  });

  test('stripLeadingUnderscores', () {
    expect(stripLeadingUnderscores('_leading'), equals('leading'));
    expect(stripLeadingUnderscores('__valueSize'), equals('valueSize'));
    expect(stripLeadingUnderscores('noUnderscore'), equals('noUnderscore'));
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

  test('wrapCommentText', () {
    expect(wrapCommentText('', 12), isEmpty);

    expect(wrapCommentText('This is a short string', 8),
        equals('/// This\n/// is a\n/// short\n/// string'));

    expect(wrapCommentText('This is a short string', 12),
        equals('/// This is\n/// a short\n/// string'));

    expect(wrapCommentText('This is a short string', 20),
        equals('/// This is a short\n/// string'));

    expect(wrapCommentText('This is a short string', 200),
        equals('/// This is a short string'));
  });
}
