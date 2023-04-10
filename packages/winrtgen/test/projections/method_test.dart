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

  group('MethodProjection', () {
    test('projects something', () {
      final output = MethodProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'Clone')
          .toString();
      expect(output, isNotEmpty);
      expect(output, contains('clone'));
    });

    test('fromTypeAndMethodName constructor throws if type is not found', () {
      expect(
          () =>
              MethodProjection.fromTypeAndMethodName('Windows.Foo.Bar', 'Foo'),
          throwsA(isA<Exception>()));
    });
  });

  group('WinRT method', () {
    test('name is correctly converted to camelCase', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.ViewManagement.IUISettings', 'UIElementColor');
      expect(projection.camelCasedName, equals('uiElementColor'));
    });

    test('annotated with @Deprecated', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.IConnectionProfile',
          'GetLocalUsage');
      expect(projection.method.isDeprecated, isTrue);
      expect(
          projection.toString(),
          contains("@Deprecated('GetLocalUsage may be altered or unavailable "
              "for releases after Windows 8.1. Instead, use "
              "GetNetworkUsageAsync.')"));
    });

    test('projects bool', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetBoolean');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.returnType, equals('bool'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Bool> retValuePtr)'));
      expect(projection.methodHeader, equals('bool getBoolean()'));
    });

    test('projects class', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'Clone');
      expect(projection, isA<ObjectMethodProjection>());
      expect(projection.returnType, equals('Calendar?'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader, equals('Calendar? clone()'));
    });

    test('returns a DateTime', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetDateTime');
      expect(projection, isA<DateTimeMethodProjection>());
      expect(projection.returnType, equals('DateTime'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)'));
      expect(projection.methodHeader, equals('DateTime getDateTime()'));
    });

    test('projects double', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetDouble');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.returnType, equals('double'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Double> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Double> retValuePtr)'));
      expect(projection.methodHeader, equals('double getDouble()'));
    });

    test('projects Duration', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetTimeSpan');
      expect(projection, isA<DurationMethodProjection>());
      expect(projection.returnType, equals('Duration'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)'));
      expect(projection.methodHeader, equals('Duration getTimeSpan()'));
    });

    test('projects enum', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Json.IJsonErrorStatics2', 'GetJsonStatus');
      expect(projection, isA<EnumMethodProjection>());
      expect(projection.returnType, equals('JsonErrorStatus'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Int32 hresult, Pointer<Int32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int hresult, Pointer<Int32> retValuePtr)'));
      expect(projection.methodHeader,
          equals('JsonErrorStatus getJsonStatus(int hresult)'));
    });

    test('projects Guid', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetGuid');
      expect(projection, isA<GuidMethodProjection>());
      expect(projection.returnType, equals('Guid'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<GUID> retValuePtr)'));
      expect(projection.methodHeader, equals('Guid getGuid()'));
    });

    test('projects int', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32');
      expect(projection, isA<DefaultMethodProjection>());
      expect(projection.returnType, equals('int'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)'));
      expect(projection.methodHeader, equals('int getInt32()'));
    });

    test('projects interface', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.StringMap', 'First');
      expect(projection, isA<ObjectMethodProjection>());
      expect(projection.returnType,
          equals('IIterator<IKeyValuePair<String, String>>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader,
          equals('IIterator<IKeyValuePair<String, String>> first()'));
    });

    test('projects IAsyncAction (1)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsyncOverloadDefaultOptions');
      expect(projection, isA<AsyncActionMethodProjection>());
      expect(projection.returnType, equals('Future<void>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader,
          equals('Future<void> deleteAsyncOverloadDefaultOptions()'));
    });

    test('projects IAsyncAction (2)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator',
          'SignOutUserAsync');
      expect(projection, isA<AsyncActionMethodProjection>());
      expect(projection.returnType, equals('Future<void>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.methodHeader, equals('Future<void> signOutUserAsync()'));
    });

    test('projects IAsyncOperation (1)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'PickSingleFileAsync');
      expect(projection, isA<AsyncOperationMethodProjection>());
      expect(projection.returnType, equals('Future<StorageFile?>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader,
          equals('Future<StorageFile?> pickSingleFileAsync()'));
    });

    test('projects IAsyncOperation (2)', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'LoadAsync');
      expect(projection, isA<AsyncOperationMethodProjection>());
      expect(projection.returnType, equals('Future<int>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Uint32 count, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int count, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.methodHeader, equals('Future<int> loadAsync(int count)'));
    });

    test('projects IMap', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Search.StorageFileQueryResult',
          'GetMatchingPropertiesWithRanges');
      expect(projection, isA<MapMethodProjection>());
      expect(projection.returnType,
          equals('IMap<String, IVectorView<TextSegment>>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer file, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer file, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.methodHeader,
          equals(
              'IMap<String, IVectorView<TextSegment>> getMatchingPropertiesWithRanges(StorageFile? file)'));
    });

    test('projects IMapView', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.StringMap', 'GetView');
      expect(projection, isA<MapViewMethodProjection>());
      expect(projection.returnType, equals('Map<String, String>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader, equals('Map<String, String> getView()'));
    });

    test('projects IReference', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.ConnectionProfile', 'GetSignalBars');
      expect(projection, isA<ReferenceMethodProjection>());
      expect(projection.returnType, equals('int?'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader, equals('int? getSignalBars()'));
    });

    test('projects IVector', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.BackgroundTransfer.IDownloadOperation3',
          'GetDownloadedRanges');
      expect(projection, isA<VectorMethodProjection>());
      expect(projection.returnType,
          equals('IVector<BackgroundTransferFileRange>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader,
          equals('IVector<BackgroundTransferFileRange> getDownloadedRanges()'));
    });

    test('projects IVectorView', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ApplicationLanguages', 'GetLanguagesForUser');
      expect(projection, isA<VectorViewMethodProjection>());
      expect(projection.returnType, equals('List<String>'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer user, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer user, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader,
          equals('List<String> getLanguagesForUser(User? user)'));
    });

    test('projects Object', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.PropertySet', 'Lookup');
      expect(projection, isA<ObjectMethodProjection>());
      expect(projection.returnType, equals('Object?'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, IntPtr key, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int key, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader, equals('Object? lookup(String key)'));
    });

    test('projects String', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetCalendarSystem');
      expect(projection, isA<StringMethodProjection>());
      expect(projection.returnType, equals('String'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)'));
      expect(projection.methodHeader, equals('String getCalendarSystem()'));
    });

    test('projects struct', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetPoint');
      expect(projection, isA<StructMethodProjection>());
      expect(projection.returnType, equals('Point'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<NativePoint> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<NativePoint> retValuePtr)'));
      expect(projection.methodHeader, equals('Point getPoint()'));
    });

    test('projects Uri', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Authentication.Web.WebAuthenticationBroker',
          'GetCurrentApplicationCallbackUri');
      expect(projection, isA<UriMethodProjection>());
      expect(projection.returnType, equals('Uri?'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)'));
      expect(projection.methodHeader,
          equals('Uri? getCurrentApplicationCallbackUri()'));
    });

    test('projects void', () {
      final projection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics',
          'TryCreate');
      expect(projection, isA<VoidMethodProjection>());
      expect(projection.returnType, equals('void'));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, IntPtr regionCode, Pointer<COMObject> phoneNumber)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, int regionCode, Pointer<COMObject> phoneNumber)'));
      expect(
          projection.methodHeader,
          equals(
              'void tryCreate(String regionCode, PhoneNumberFormatter phoneNumber)'));
    });
  });
}
