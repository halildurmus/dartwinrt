// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('GetterProjection', () {
    test('projects something', () {
      final output = GetterProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'get_NumeralSystem')
          .toString();
      expect(output, isNotEmpty);
      expect(output, contains('numeralSystem'));
    });

    test('fromTypeAndMethodName constructor throws if type is not found', () {
      expect(
          () => GetterProjection.fromTypeAndMethodName(
              'Windows.Foo.IBar', 'get_Foo'),
          throwsA(isA<Exception>()));
    });

    test('fromTypeAndMethodName constructor throws if method name is invalid',
        () {
      expect(
          () => GetterProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'NumeralSystem'),
          throwsA(isA<ArgumentError>()));
    });
  });

  group('WinRT getter', () {
    test('name is correctly converted to camelCase', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Networking.IHostName', 'get_IPInformation');
      expect(projection.camelCasedName, equals('ipInformation'));
    });

    test('has correct shortForm', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumeralSystem');
      expect(projection.shortForm, equals('numeralSystem'));
    });

    test('projects bool', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_IsDaylightSavingTime');
      expect(projection, isA<DefaultGetterProjection>());
      expect(projection.returnType, equals('bool'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<Bool>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<Bool>)'));
      expect(
          projection.shortDeclaration, equals('bool get isDaylightSavingTime'));
    });

    test('projects class', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Foundation.IUriRuntimeClass', 'get_QueryParsed');
      expect(projection, isA<ObjectGetterProjection>());
      expect(projection.returnType, equals('WwwFormUrlDecoder?'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration,
          equals('WwwFormUrlDecoder? get queryParsed'));
    });

    test('projects DateTime', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.FileProperties.IBasicProperties',
          'get_DateModified');
      expect(projection, isA<DateTimeGetterProjection>());
      expect(projection.returnType, equals('DateTime'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<Uint64>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<Uint64>)'));
      expect(projection.shortDeclaration, equals('DateTime get dateModified'));
    });

    test('projects delegate', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncAction', 'get_Completed');
      expect(projection, isA<DelegateGetterProjection>());
      expect(projection.returnType, equals('Pointer<COMObject>'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration,
          equals('Pointer<COMObject> get completed'));
    });

    test('projects double', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeocoordinate', 'get_Latitude');
      expect(projection, isA<DefaultGetterProjection>());
      expect(projection.returnType, equals('double'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<Double>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<Double>)'));
      expect(projection.shortDeclaration, equals('double get latitude'));
    });

    test('projects Duration', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.System.Power.IPowerManagerStatics',
          'get_RemainingDischargeTime');
      expect(projection, isA<DurationGetterProjection>());
      expect(projection.returnType, equals('Duration'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<Uint64>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<Uint64>)'));
      expect(projection.shortDeclaration,
          equals('Duration get remainingDischargeTime'));
    });

    test('projects enum', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'get_ViewMode');
      expect(projection, isA<EnumGetterProjection>());
      expect(projection.returnType, equals('PickerViewMode'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<Int32>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<Int32>)'));
      expect(
          projection.shortDeclaration, equals('PickerViewMode get viewMode'));
    });

    test('projects Guid', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.INetworkAdapter',
          'get_NetworkAdapterId');
      expect(projection, isA<GuidGetterProjection>());
      expect(projection.returnType, equals('Guid'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<GUID>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<GUID>)'));
      expect(projection.shortDeclaration, equals('Guid get networkAdapterId'));
    });

    test('projects int', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumberOfDaysInThisMonth');
      expect(projection, isA<DefaultGetterProjection>());
      expect(projection.returnType, equals('int'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<Int32>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<Int32>)'));
      expect(projection.shortDeclaration,
          equals('int get numberOfDaysInThisMonth'));
    });

    test('projects interface', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.IXmlNode', 'get_FirstChild');
      expect(projection, isA<ObjectGetterProjection>());
      expect(projection.returnType, equals('IXmlNode?'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration, equals('IXmlNode? get firstChild'));
    });

    test('projects IMap<String, String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.INotificationData', 'get_Values');
      expect(projection, isA<MapGetterProjection>());
      expect(projection.returnType, equals('IMap<String, String>'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration,
          equals('IMap<String, String> get values'));
      expect(projection.toString(),
          contains("iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}'"));
    });

    test('projects IMapView<String, Object?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Enumeration.IDeviceInformation', 'get_Properties');
      expect(projection, isA<MapViewGetterProjection>());
      expect(projection.returnType, equals('Map<String, Object?>'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration,
          equals('Map<String, Object?> get properties'));
      expect(projection.toString(),
          contains("iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}'"));
    });

    test('projects IReference<DateTime?>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification', 'get_ExpirationTime');
      expect(projection, isA<ReferenceGetterProjection>());
      expect(projection.returnType, equals('DateTime?'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(
          projection.shortDeclaration, equals('DateTime? get expirationTime'));
      expect(projection.toString(),
          contains("referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}'"));
    });

    test('projects IVector<String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'get_FileTypeFilter');
      expect(projection, isA<VectorGetterProjection>());
      expect(projection.returnType, equals('IVector<String>'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration,
          equals('IVector<String> get fileTypeFilter'));
      expect(projection.toString(),
          contains("iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'"));
    });

    test('projects IVectorView<String>', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_Languages');
      expect(projection, isA<VectorViewGetterProjection>());
      expect(projection.returnType, equals('List<String>'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration, equals('List<String> get languages'));
      expect(projection.toString(),
          contains("iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'"));
    });

    test('projects Object', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.IXmlNode', 'get_LocalName');
      expect(projection, isA<ObjectGetterProjection>());
      expect(projection.returnType, equals('Object?'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration, equals('Object? get localName'));
      expect(projection.toString(),
          contains('return IPropertyValue.fromRawPointer(retValuePtr).value;'));
    });

    test('projects String', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumeralSystem');
      expect(projection, isA<StringGetterProjection>());
      expect(projection.returnType, equals('String'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<IntPtr>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<IntPtr>)'));
      expect(projection.shortDeclaration, equals('String get numeralSystem'));
    });

    test('projects struct', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeopoint', 'get_Position');
      expect(projection, isA<StructGetterProjection>());
      expect(projection.returnType, equals('BasicGeoposition'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<BasicGeoposition>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<BasicGeoposition>)'));
      expect(
          projection.shortDeclaration, equals('BasicGeoposition get position'));
    });

    test('projects Uri', () {
      final projection = GetterProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherOptions', 'get_FallbackUri');
      expect(projection, isA<UriGetterProjection>());
      expect(projection.returnType, equals('Uri?'));
      expect(projection.nativePrototype,
          equals('HRESULT Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.dartPrototype,
          equals('int Function(LPVTBL, Pointer<COMObject>)'));
      expect(projection.shortDeclaration, equals('Uri? get fallbackUri'));
    });
  });
}
