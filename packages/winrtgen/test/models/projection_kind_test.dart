// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('ProjectionKind', () {
    setUpAll(WinRTMetadataStore.loadMetadata);

    group('fromTypeProjection constructor', () {
      test('returns asyncAction (1)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Storage.IStorageItem', 'DeleteAsync');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.asyncAction));
      });

      test('returns asyncAction (2)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator',
            'SignOutUserAsync');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.asyncAction));
      });

      test('returns asyncOperation (1)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Storage.Pickers.IFileOpenPicker', 'PickSingleFileAsync');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.asyncOperation));
      });

      test('returns asyncOperation (2)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Storage.Streams.DataReader', 'LoadAsync');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.asyncOperation));
      });

      test('returns dartPrimitive (bool)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.ICalendar', 'get_IsDaylightSavingTime');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.dartPrimitive));
      });

      test('returns dartPrimitive (double)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Devices.Geolocation.IGeocoordinate', 'get_Latitude');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.dartPrimitive));
      });

      test('returns dartPrimitive (int)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.ICalendar', 'get_Year');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.dartPrimitive));
      });

      test('returns dartPrimitiveArray', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetInt32Array');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.dartPrimitiveArray));
      });

      test('returns dateTime', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.ICalendar', 'GetDateTime');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.dateTime));
      });

      test('returns dateTimeArray', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetDateTimeArray');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.dateTimeArray));
      });

      test('returns delegate', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IAsyncAction', 'get_Completed');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.delegate));
      });

      test('returns duration', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.System.Power.IPowerManagerStatics',
            'get_RemainingDischargeTime');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.duration));
      });

      test('returns durationArray', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetTimeSpanArray');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.durationArray));
      });

      test('returns enum_', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IAsyncInfo', 'get_Status');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.enum_));
      });

      test('returns genericEnum (1)', () {
        final typeIdentifier = TypeIdentifier(
            BaseType.classVariableTypeModifier,
            name: TypeArgKind.winrtEnum.name);
        final typeProjection = TypeProjection(typeIdentifier);
        expect(ProjectionKind.fromTypeProjection(typeProjection),
            equals(ProjectionKind.genericEnum));
      });

      test('returns genericEnum (2)', () {
        final typeIdentifier = TypeIdentifier(
            BaseType.classVariableTypeModifier,
            name: TypeArgKind.winrtFlagsEnum.name);
        final typeProjection = TypeProjection(typeIdentifier);
        expect(ProjectionKind.fromTypeProjection(typeProjection),
            equals(ProjectionKind.genericEnum));
      });

      test('returns genericObject (1)', () {
        final typeIdentifier = TypeIdentifier(
            BaseType.classVariableTypeModifier,
            name: TypeArgKind.inspectable.name);
        final typeProjection = TypeProjection(typeIdentifier);
        expect(ProjectionKind.fromTypeProjection(typeProjection),
            equals(ProjectionKind.genericObject));
      });

      test('returns genericObject (2)', () {
        final typeIdentifier = TypeIdentifier(
            BaseType.classVariableTypeModifier,
            name: TypeArgKind.nullableInspectable.name);
        final typeProjection = TypeProjection(typeIdentifier);
        expect(ProjectionKind.fromTypeProjection(typeProjection),
            equals(ProjectionKind.genericObject));
      });

      test('returns ireference', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy',
            'get_DesiredAccuracyInMeters');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.ireference));
      });

      test('returns map', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.UI.Notifications.INotificationData', 'get_Values');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.map));
      });

      test('returns mapView', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.Collections.StringMap', 'GetView');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.mapView));
      });

      test('returns object (1) - (WinRT class)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.ICalendar', 'Clone');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.object));
      });

      test('returns object (2) - (WinRT interface)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Data.Json.JsonArray', 'GetAt');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.object));
      });

      test('returns objectArray', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.WwwFormUrlDecoder', 'GetMany');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.objectArray));
      });

      test('returns pointer', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetInt32Array');
        final paramProjection = methodProjection.parameters.first;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.pointer));
      });

      test('returns string', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.ICalendar', 'get_NumeralSystem');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.string));
      });

      test('returns string (Char16)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetChar16');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.string));
      });

      test('returns stringArray type', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetStringArray');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.stringArray));
      });

      test('returns struct (1)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.UI.ViewManagement.IUISettings3', 'GetColorValue');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.struct));
      });

      test('returns struct (2)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Networking.Connectivity.INetworkAdapter',
            'get_NetworkAdapterId');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.struct));
      });

      test('returns structArray (1)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetSizeArray');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.structArray));
      });

      test('returns structArray (2)', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Foundation.IPropertyValue', 'GetGuidArray');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.structArray));
      });

      test('returns uri type', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.System.ILauncherOptions', 'get_FallbackUri');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.uri));
      });

      test('returns vector', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Storage.Pickers.IFileOpenPicker', 'get_FileTypeFilter');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.vector));
      });

      test('returns vectorView', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Data.Json.JsonArray', 'GetView');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.vectorView));
      });

      test('returns void_', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.ICalendar', 'SetToMin');
        expect(
            ProjectionKind.fromTypeProjection(methodProjection.typeProjection),
            equals(ProjectionKind.void_));
      });

      test('unwraps referenceTypeModifier correctly', () {
        final methodProjection = MethodProjection.fromTypeAndMethodName(
            'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
            'TryCreate');
        final paramProjection = methodProjection.parameters.last;
        expect(
            ProjectionKind.fromTypeProjection(paramProjection.typeProjection),
            equals(ProjectionKind.object));
      });
    });
  });
}
