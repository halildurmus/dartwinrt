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

  group('SetterProjection', () {
    test('projects something', () {
      final output = SetterProjection.fromTypeAndMethodName(
              'Windows.Storage.Pickers.IFileOpenPicker', 'put_ViewMode')
          .toString();
      expect(output, isNotEmpty);
      expect(output, contains('viewMode'));
    });

    test('fromTypeAndMethodName constructor throws if type is not found', () {
      expect(
          () => SetterProjection.fromTypeAndMethodName(
              'Windows.Foo.IBar', 'put_Foo'),
          throwsA(isA<Exception>()));
    });

    test('fromTypeAndMethodName constructor throws if method name is invalid',
        () {
      expect(
          () => SetterProjection.fromTypeAndMethodName(
              'Windows.Globalization.ICalendar', 'NumeralSystem'),
          throwsA(isA<ArgumentError>()));
    });
  });

  group('WinRT setter', () {
    test('name is correctly converted to camelCase', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'put_NumeralSystem');
      expect(projection.camelCasedName, equals('numeralSystem'));
    });

    test('projects bool', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification2', 'put_SuppressPopup');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Bool value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, bool value)'));
      expect(projection.methodHeader, equals('set suppressPopup(bool value)'));
    });

    test('projects class', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification4', 'put_Data');
      expect(projection, isA<ObjectSetterProjection>());
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(
          projection.methodHeader, equals('set data(NotificationData? value)'));
    });

    test('projects DateTime', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Storage.FileProperties.ImageProperties', 'put_DateTaken');
      expect(projection, isA<DateTimeSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int64 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.methodHeader, equals('set dateTaken(DateTime value)'));
    });

    test('projects delegate', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncAction', 'put_Completed');
      expect(projection, isA<DelegateSetterProjection>());
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer handler)'));
      expect(projection.methodHeader,
          equals('set completed(Pointer<COMObject> value)'));
    });

    test('projects double', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeolocator', 'put_MovementThreshold');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Double value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, double value)'));
      expect(projection.methodHeader,
          equals('set movementThreshold(double value)'));
    });

    test('projects Duration', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Media.Playback.MediaPlaybackSession', 'put_Position');
      expect(projection, isA<DurationSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int64 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.methodHeader, equals('set position(Duration value)'));
    });

    test('projects enum', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'put_ViewMode');
      expect(projection, isA<EnumSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int32 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.methodHeader,
          equals('set viewMode(PickerViewMode value)'));
    });

    test('projects Guid', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Data.Pdf.IPdfPageRenderOptions', 'put_BitmapEncoderId');
      expect(projection, isA<GuidSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, GUID value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, GUID value)'));
      expect(
          projection.methodHeader, equals('set bitmapEncoderId(Guid value)'));
    });

    test('projects int', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'put_Era');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int32 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.methodHeader, equals('set era(int value)'));
    });

    test('projects interface', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.Provider.ITargetFileRequest',
          'put_TargetFile');
      expect(projection, isA<ObjectSetterProjection>());
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.methodHeader,
          equals('set targetFile(IStorageFile? value)'));
    });

    test('projects IReference', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement',
          'put_Flags');
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.methodHeader,
          equals('set flags(BluetoothLEAdvertisementFlags? value)'));
    });

    test('projects Object', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.IXmlNode', 'put_NodeValue');
      expect(projection, isA<ObjectSetterProjection>());
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.methodHeader, equals('set nodeValue(Object? value)'));
    });

    test('projects String', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'put_NumeralSystem');
      expect(projection, isA<StringSetterProjection>());
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, IntPtr value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(
          projection.methodHeader, equals('set numeralSystem(String value)'));
    });

    test('projects struct', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Gaming.Input.IGamepad', 'put_Vibration');
      expect(projection, isA<StructSetterProjection>());
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, NativeGamepadVibration value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, NativeGamepadVibration value)'));
      expect(projection.methodHeader,
          equals('set vibration(GamepadVibration value)'));
    });

    test('projects Uri', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherOptions', 'put_FallbackUri');
      expect(projection, isA<UriSetterProjection>());
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.methodHeader, equals('set fallbackUri(Uri? value)'));
    });
  });
}
