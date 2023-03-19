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

  group('ProjectionType.from constructor', () {
    test('unwraps referenceTypeModifier correctly', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          'TryCreate');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.object));
    });

    test('returns asyncAction type (1)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.IStorageItem', 'DeleteAsync');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.asyncAction));
    });

    test('returns asyncAction type (2)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Security.Authentication.OnlineId.OnlineIdAuthenticator',
          'SignOutUserAsync');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.asyncAction));
    });

    test('returns asyncOperation type (1)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'PickSingleFileAsync');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.asyncOperation));
    });

    test('returns asyncOperation type (2)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Streams.DataReader', 'LoadAsync');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.asyncOperation));
    });

    test('returns dartPrimitive (bool) type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_IsDaylightSavingTime');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.dartPrimitive));
    });

    test('returns dartPrimitive (double) type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeocoordinate', 'get_Latitude');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.dartPrimitive));
    });

    test('returns dartPrimitive (int) type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_Year');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.dartPrimitive));
    });

    test('returns dartPrimitiveList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32Array');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.dartPrimitiveList));
    });

    test('returns dateTime type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'GetDateTime');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.dateTime));
    });

    test('returns dateTimeList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetDateTimeArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.dateTimeList));
    });

    test('returns delegate type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncAction', 'get_Completed');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.delegate));
    });

    test('returns duration type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.Power.IPowerManagerStatics',
          'get_RemainingDischargeTime');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.duration));
    });

    test('returns durationList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetTimeSpanArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.durationList));
    });

    test('returns enum_ type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncInfo', 'get_Status');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.enum_));
    });

    test('returns genericEnum (1)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArg.winrtEnum.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionType.from(typeProjection),
          equals(ProjectionType.genericEnum));
    });

    test('returns genericEnum (2)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArg.winrtFlagsEnum.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionType.from(typeProjection),
          equals(ProjectionType.genericEnum));
    });

    test('returns genericObject (1)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArg.inspectable.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionType.from(typeProjection),
          equals(ProjectionType.genericObject));
    });

    test('returns genericObject (2)', () {
      final typeIdentifier = TypeIdentifier(BaseType.classVariableTypeModifier,
          name: TypeArg.nullableInspectable.name);
      final typeProjection = TypeProjection(typeIdentifier);
      expect(ProjectionType.from(typeProjection),
          equals(ProjectionType.genericObject));
    });

    test('returns guid type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Networking.Connectivity.INetworkAdapter',
          'get_NetworkAdapterId');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.guid));
    });

    test('returns guidList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetGuidArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.guidList));
    });

    test('returns map type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.INotificationData', 'get_Values');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.map));
    });

    test('returns mapView type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.Collections.StringMap', 'GetView');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.mapView));
    });

    test('returns object type (1) - (WinRT class)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'Clone');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.object));
    });

    test('returns object type (2) - (WinRT interface)', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Json.JsonArray', 'GetAt');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.object));
    });

    test('returns objectList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.WwwFormUrlDecoder', 'GetMany');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.objectList));
    });

    test('returns pointer type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetInt32Array');
      final paramProjection = methodProjection.parameters.first;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.pointer));
    });

    test('returns reference type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeolocatorWithScalarAccuracy',
          'get_DesiredAccuracyInMeters');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.reference));
    });

    test('returns string type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'get_NumeralSystem');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.string));
    });

    test('returns stringList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetStringArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.stringList));
    });

    test('returns struct type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.UI.ViewManagement.IUISettings3', 'GetColorValue');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.struct));
    });

    test('returns structList type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Foundation.IPropertyValue', 'GetSizeArray');
      final paramProjection = methodProjection.parameters.last;
      expect(ProjectionType.from(paramProjection.typeProjection),
          equals(ProjectionType.structList));
    });

    test('returns uri type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherOptions', 'get_FallbackUri');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.uri));
    });

    test('returns vector type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'get_FileTypeFilter');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.vector));
    });

    test('returns vectorView type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Data.Json.JsonArray', 'GetView');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.vectorView));
    });

    test('returns void_ type', () {
      final methodProjection = MethodProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'SetToMin');
      expect(ProjectionType.from(methodProjection.returnTypeProjection),
          equals(ProjectionType.void_));
    });
  });
}
