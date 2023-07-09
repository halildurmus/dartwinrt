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

  group('ProjectionKind.from constructor', () {
    test('unwraps referenceTypeModifier correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          'TryCreate');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.object));
    });

    test('returns asyncAction type (1)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsync');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.asyncAction));
    });

    test('returns asyncAction type (2)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator',
          'SignOutUserAsync');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.asyncAction));
    });

    test('returns asyncOperation type (1)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'PickSingleFileAsync');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.asyncOperation));
    });

    test('returns asyncOperation type (2)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'LoadAsync');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.asyncOperation));
    });

    test('returns dartPrimitive (bool) type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_IsDaylightSavingTime');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.dartPrimitive));
    });

    test('returns dartPrimitive (double) type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeocoordinate', 'get_Latitude');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.dartPrimitive));
    });

    test('returns dartPrimitive (int) type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_Year');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.dartPrimitive));
    });

    test('returns dartPrimitiveList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32Array');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.dartPrimitiveArray));
    });

    test('returns dateTime type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetDateTime');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.dateTime));
    });

    test('returns dateTimeList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetDateTimeArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.dateTimeArray));
    });

    test('returns delegate type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncAction', 'get_Completed');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.delegate));
    });

    test('returns duration type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.Power.IPowerManagerStatics',
          'get_RemainingDischargeTime');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.duration));
    });

    test('returns durationList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetTimeSpanArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.durationArray));
    });

    test('returns enum_ type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncInfo', 'get_Status');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.enum_));
    });

    test('returns genericEnum (1)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArgKind.winrtEnum.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionKind.from(typeProjection),
          equals(ProjectionKind.genericEnum));
    });

    test('returns genericEnum (2)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArgKind.winrtFlagsEnum.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionKind.from(typeProjection),
          equals(ProjectionKind.genericEnum));
    });

    test('returns genericObject (1)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArgKind.inspectable.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionKind.from(typeProjection),
          equals(ProjectionKind.genericObject));
    });

    test('returns genericObject (2)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArgKind.nullableInspectable.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionKind.from(typeProjection),
          equals(ProjectionKind.genericObject));
    });

    test('returns guid type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.INetworkAdapter',
          'get_NetworkAdapterId');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.struct));
    });

    test('returns guidList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetGuidArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.structArray));
    });

    test('returns map type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.INotificationData', 'get_Values');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.map));
    });

    test('returns mapView type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.StringMap', 'GetView');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.mapView));
    });

    test('returns object type (1) - (WinRT class)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'Clone');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.object));
    });

    test('returns object type (2) - (WinRT interface)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Json.JsonArray', 'GetAt');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.object));
    });

    test('returns objectList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.WwwFormUrlDecoder', 'GetMany');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.objectArray));
    });

    test('returns pointer type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32Array');
      final paramProjection = methodProjection.parameters.first;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.pointer));
    });

    test('returns reference type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy',
          'get_DesiredAccuracyInMeters');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.ireference));
    });

    test('returns string type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumeralSystem');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.string));
    });

    test('returns stringList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetStringArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.stringArray));
    });

    test('returns struct type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.ViewManagement.IUISettings3', 'GetColorValue');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.struct));
    });

    test('returns structList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetSizeArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionKind.from(paramProjection.typeProjection),
          equals(ProjectionKind.structArray));
    });

    test('returns uri type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherOptions', 'get_FallbackUri');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.uri));
    });

    test('returns vector type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'get_FileTypeFilter');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.vector));
    });

    test('returns vectorView type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Json.JsonArray', 'GetView');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.vectorView));
    });

    test('returns void_ type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'SetToMin');
      expect(ProjectionKind.from(methodProjection.typeProjection),
          equals(ProjectionKind.void_));
    });
  });
}
