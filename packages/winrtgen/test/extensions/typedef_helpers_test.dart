// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

  final calendarTypeDef =
      MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
  final jsonObjectTypeDef =
      MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
  final mapViewTypeDef = MetadataStore.getMetadataForType(
      'Windows.Foundation.Collections.IMapView`2')!;
  final stringMapTypeDef = MetadataStore.getMetadataForType(
      'Windows.Foundation.Collections.StringMap')!;

  test('fullyQualifiedName', () {
    expect(calendarTypeDef.fullyQualifiedName,
        equals('Windows.Globalization.Calendar'));
    expect(mapViewTypeDef.fullyQualifiedName,
        equals('Windows.Foundation.Collections.IMapView`2'));
  });

  group('iid', () {
    test('returns the IID of IMap<String, String>', () {
      expect(stringMapTypeDef.interfaces[0].iid.toString(),
          equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<String, String>>', () {
      expect(stringMapTypeDef.interfaces[1].iid.toString(),
          equals('{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}'));
    });

    test('returns the IID of IObservableMap<String, Object>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Foundation.Collections.IPropertySet')!;
      expect(typeDef.interfaces[0].iid.toString(),
          equals('{236aac9d-fb12-5c4d-a41c-9e445fb4d7ec}'));
    });

    test('returns the IID of IMap<Guid, Object>', () {
      final typeDef = MetadataStore.getMetadataForType(
          'Windows.Media.MediaProperties.MediaPropertySet')!;
      expect(typeDef.interfaces[0].iid.toString(),
          equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));
    });

    test('returns the IID of IMap<String, IJsonValue>', () {
      expect(jsonObjectTypeDef.interfaces[2].iid.toString(),
          equals('{c9d9a725-786b-5113-b4b7-9b61764c220b}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<String, IJsonValue>>', () {
      expect(jsonObjectTypeDef.interfaces[3].iid.toString(),
          equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));
    });
  });

  test('packageImport', () {
    expect(calendarTypeDef.packageImport,
        equals('package:windows_globalization/windows_globalization.dart'));
    expect(mapViewTypeDef.packageImport,
        equals('package:windows_foundation/windows_foundation.dart'));

    final uriTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.Uri')!;
    expect(uriTypeDef.packageImport,
        equals('package:windows_foundation/uri.dart'));
  });

  test('packageName', () {
    expect(calendarTypeDef.packageName, equals('windows_globalization'));
    expect(mapViewTypeDef.packageName, equals('windows_foundation'));
  });

  test('shortName', () {
    expect(calendarTypeDef.shortName, equals('Calendar'));
    expect(mapViewTypeDef.shortName, equals('IMapView'));
    expect(stringMapTypeDef.interfaces.elementAt(0).shortName,
        equals('IMap<String, String>'));
  });

  group('signature', () {
    test('returns the signature of IAsyncAction', () {
      final typeDef =
          MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;
      expect(
          typeDef.signature, equals('{5a648006-843a-4da9-865b-9d26e5dfad7b}'));
    });

    test('returns the signature of Calendar', () {
      expect(
          calendarTypeDef.signature,
          equals(
              'rc(Windows.Globalization.Calendar;{ca30221d-86d9-40fb-a26b-d44eb7cf08ea})'));
    });

    test(
        'returns the signature of IIterable<IKeyValuePair<String, IJsonValue>>',
        () {
      expect(
          jsonObjectTypeDef.interfaces[3].signature,
          equals(
              'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))'));
    });
  });
}
