// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

import 'utilities.dart';

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
          throwsA(isA<WinRTGenException>()));
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
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set suppressPopup(bool value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Bool value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, bool value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects class', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.UI.Notifications.IToastNotification4', 'put_Data');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set data(NotificationData? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, value == null ? nullptr : value.ptr.ref.lpVtbl'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects DateTime', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Storage.FileProperties.ImageProperties', 'put_DateTaken');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set dateTaken(DateTime value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int64 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value.toWinRTDateTime()'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects delegate', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Foundation.IAsyncAction', 'put_Completed');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header,
          equals('set completed(Pointer<COMObject> handler)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer handler)'));
      expect(
          projection.identifiers, equals('ptr.ref.lpVtbl, handler.ref.lpVtbl'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects double', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Geolocation.IGeolocator', 'put_MovementThreshold');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set movementThreshold(double value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Double value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, double value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects Duration', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Media.Playback.MediaPlaybackSession', 'put_Position');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set position(Duration value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int64 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value.toWinRTDuration()'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects enum', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.IFileOpenPicker', 'put_ViewMode');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set viewMode(PickerViewMode value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int32 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value.value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects Flags enum', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Graphics.Display.IDisplayInformationStatics',
          'put_AutoRotationPreferences');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header,
          equals('set autoRotationPreferences(DisplayOrientations value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Uint32 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value.value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects Guid', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Data.Pdf.IPdfPageRenderOptions', 'put_BitmapEncoderId');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set bitmapEncoderId(Guid value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble,
          equals(['final valueNativeStructPtr = value.toNativeGUID();']));
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, GUID value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, GUID value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, valueNativeStructPtr.ref'));
      expect(projection.parametersPostamble,
          equals(['free(valueNativeStructPtr);']));
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects int', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'put_Era');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set era(int value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, Int32 value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, value'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects interface', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Storage.Pickers.Provider.ITargetFileRequest',
          'put_TargetFile');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set targetFile(IStorageFile? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, value == null ? nullptr : value.ptr.ref.lpVtbl'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects IReference<BluetoothLEAdvertisementFlags?>', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement',
          'put_Flags');
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header,
          equals('set flags(BluetoothLEAdvertisementFlags? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, value?.toReference().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<HostName?>', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Networking.Vpn.IVpnNamespaceInfo', 'put_DnsServers');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header,
          equals('set dnsServers(IVector<HostName?>? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<Object?>', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.UI.Xaml.Controls.Primitives.ILoopingSelector', 'put_Items');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set items(IVector<Object?>? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects IVector<String>', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Media.ContentRestrictions.IRatedContentDescription',
          'put_Ratings');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header, equals('set ratings(IVector<String>? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<PaymentItem?>', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.ApplicationModel.Payments.IPaymentDetails',
          'put_DisplayItems');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header,
          equals('set displayItems(IVectorView<PaymentItem?>? value)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects IVectorView<String>', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.ApplicationModel.Resources.Core.IResourceContext',
          'put_Languages');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.returnType, isEmpty);
      expect(projection.header,
          equals('set languages(IVectorView<String>? languages)'));
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer languages)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, VTablePointer languages)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, languages?.ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects Object?', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Data.Xml.Dom.IXmlNode', 'put_NodeValue');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.header, equals('set nodeValue(Object? value)'));
      expect(projection.returnType, isEmpty);
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, value?.intoBox().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects String', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Globalization.ICalendar', 'put_NumeralSystem');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.header, equals('set numeralSystem(String value)'));
      expect(projection.returnType, isEmpty);
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble,
          equals(['final valueHString = value.toHString();']));
      expect(projection.nativePrototype,
          equals('HRESULT Function(VTablePointer lpVtbl, IntPtr value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, int value)'));
      expect(projection.identifiers, equals('ptr.ref.lpVtbl, valueHString'));
      expect(projection.parametersPostamble,
          equals(['WindowsDeleteString(valueHString);']));
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects struct', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.Gaming.Input.IGamepad', 'put_Vibration');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(
          projection.header, equals('set vibration(GamepadVibration value)'));
      expect(projection.returnType, isEmpty);
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble,
          equals(['final valueNativeStructPtr = value.toNative();']));
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, NativeGamepadVibration value)'));
      expect(
          projection.dartPrototype,
          equals(
              'int Function(VTablePointer lpVtbl, NativeGamepadVibration value)'));
      expect(projection.identifiers,
          equals('ptr.ref.lpVtbl, valueNativeStructPtr.ref'));
      expect(projection.parametersPostamble,
          equals(['free(valueNativeStructPtr);']));
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });

    test('projects Uri?', () {
      final projection = SetterProjection.fromTypeAndMethodName(
          'Windows.System.ILauncherOptions', 'put_FallbackUri');
      expect(projection, isA<DefaultSetterProjection>());
      expect(projection.annotations, isEmpty);
      expect(projection.useTryFinallyBlock, isFalse);
      expect(projection.header, equals('set fallbackUri(Uri? value)'));
      expect(projection.returnType, isEmpty);
      expect(projection.paramIdentifier, isEmpty);
      expect(projection.preambles, isEmpty);
      expect(projection.parametersPreamble, isEmpty);
      expect(
          projection.nativePrototype,
          equals(
              'HRESULT Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(projection.dartPrototype,
          equals('int Function(VTablePointer lpVtbl, VTablePointer value)'));
      expect(
          projection.identifiers,
          equals(
              'ptr.ref.lpVtbl, value?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr'));
      expect(projection.parametersPostamble, isEmpty);
      expect(projection.failedCheck, equals(failedCheck()));
      expect(projection.nullCheck, isEmpty);
      expect(projection.returnStatement, isEmpty);
      expect(projection.postambles, isEmpty);
    });
  });
}
