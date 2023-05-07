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

  final calendarTypeDef = getMetadataForType('Windows.Globalization.Calendar');
  final jsonObjectTypeDef = getMetadataForType('Windows.Data.Json.JsonObject');
  final mapViewTypeDef =
      getMetadataForType('Windows.Foundation.Collections.IMapView`2');
  final stringMapTypeDef =
      getMetadataForType('Windows.Foundation.Collections.StringMap');

  test('fullyQualifiedName', () {
    expect(calendarTypeDef.fullyQualifiedName,
        equals('Windows.Globalization.Calendar'));
    expect(mapViewTypeDef.fullyQualifiedName,
        equals('Windows.Foundation.Collections.IMapView`2'));
  });

  group('iid', () {
    test('returns the IID of IMap<String, String>', () {
      expect(stringMapTypeDef.interfaces[0].iid,
          equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<String, String>>', () {
      expect(stringMapTypeDef.interfaces[1].iid,
          equals('{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}'));
    });

    test('returns the IID of IObservableMap<String, Object>', () {
      final typeDef =
          getMetadataForType('Windows.Foundation.Collections.IPropertySet');
      expect(typeDef.interfaces[0].iid,
          equals('{236aac9d-fb12-5c4d-a41c-9e445fb4d7ec}'));
    });

    test('returns the IID of IMap<Guid, Object>', () {
      final typeDef =
          getMetadataForType('Windows.Media.MediaProperties.MediaPropertySet');
      expect(typeDef.interfaces[0].iid,
          equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));
    });

    test('returns the IID of IMap<String, IJsonValue>', () {
      expect(jsonObjectTypeDef.interfaces[2].iid,
          equals('{c9d9a725-786b-5113-b4b7-9b61764c220b}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<String, IJsonValue>>', () {
      expect(jsonObjectTypeDef.interfaces[3].iid,
          equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));
    });
  });

  test('isCollectionObject', () {
    expect(jsonObjectTypeDef.isCollectionObject, isTrue);
    expect(mapViewTypeDef.isCollectionObject, isTrue);
    expect(stringMapTypeDef.isCollectionObject, isTrue);
  });

  test('isFactoryInterface', () {
    final typeDef1 =
        getMetadataForType('Windows.Globalization.ICalendarFactory');
    final typeDef2 =
        getMetadataForType('Windows.Globalization.ICalendarFactory2');
    expect(typeDef1.isFactoryInterface, isTrue);
    expect(typeDef2.isFactoryInterface, isTrue);
  });

  test('packageImport', () {
    expect(calendarTypeDef.packageImport,
        equals('package:windows_globalization/windows_globalization.dart'));
    expect(mapViewTypeDef.packageImport,
        equals('package:windows_foundation/windows_foundation.dart'));
  });

  test('packageName', () {
    expect(calendarTypeDef.packageName, equals('windows_globalization'));
    expect(mapViewTypeDef.packageName, equals('windows_foundation'));
  });

  test('shortName', () {
    expect(calendarTypeDef.shortName, equals('Calendar'));
    expect(mapViewTypeDef.shortName, equals('IMapView'));
    expect(stringMapTypeDef.interfaces.first.shortName,
        equals('IMap<String, String>'));
  });

  group('signature', () {
    test('returns the signature of AsyncActionCompletedHandler', () {
      final typeDef =
          getMetadataForType('Windows.Foundation.AsyncActionCompletedHandler');
      expect(typeDef.signature,
          equals('delegate({a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7})'));
    });

    test('returns the signature of AsyncStatus', () {
      final typeDef = getMetadataForType('Windows.Foundation.AsyncStatus');
      expect(
          typeDef.signature, equals('enum(Windows.Foundation.AsyncStatus;i4)'));
    });

    test('returns the signature of Calendar', () {
      expect(
          calendarTypeDef.signature,
          equals(
              'rc(Windows.Globalization.Calendar;{ca30221d-86d9-40fb-a26b-d44eb7cf08ea})'));
    });

    test('returns the signature of IAsyncAction', () {
      final typeDef = getMetadataForType('Windows.Foundation.IAsyncAction');
      expect(
          typeDef.signature, equals('{5a648006-843a-4da9-865b-9d26e5dfad7b}'));
    });

    test(
        'returns the signature of IIterable<IKeyValuePair<String, IJsonValue>>',
        () {
      expect(
          jsonObjectTypeDef.interfaces[3].signature,
          equals(
              'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))'));
    });

    test('returns the signature of Point', () {
      final typeDef = getMetadataForType('Windows.Foundation.Point');
      expect(
          typeDef.signature, equals('struct(Windows.Foundation.Point;f4;f4)'));
    });
  });
}
