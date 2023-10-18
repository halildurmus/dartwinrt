// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../capture/mediastreamtype.dart';
import '../capture/powerlinefrequency.dart';
import '../mediaproperties/imediaencodingproperties.dart';
import 'imediadevicecontroller.dart';
import 'mediadevicecontrol.dart';

/// @nodoc
const IID_IVideoDeviceController = '{99555575-2e2e-40b8-b6c7-f82d10013210}';

class IVideoDeviceController extends IInspectable
    implements IMediaDeviceController {
  IVideoDeviceController.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoDeviceControllerVtbl>().ref;

  final _IVideoDeviceControllerVtbl _vtable;

  factory IVideoDeviceController.from(IInspectable interface) => interface.cast(
      IVideoDeviceController.fromPtr, IID_IVideoDeviceController);

  MediaDeviceControl? get brightness {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Brightness.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get contrast {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Contrast.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get hue {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Hue.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get whiteBalance {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WhiteBalance.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get backlightCompensation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_BacklightCompensation.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get pan {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Pan.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get tilt {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Tilt.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get zoom {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Zoom.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get roll {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Roll.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get exposure {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Exposure.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  MediaDeviceControl? get focus {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Focus.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaDeviceControl.fromPtr(value);
  }

  bool trySetPowerlineFrequency(PowerlineFrequency value) {
    final succeeded = calloc<Bool>();

    try {
      final hr = _vtable.TrySetPowerlineFrequency.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<Bool> succeeded)>()(lpVtbl, value.value, succeeded);

      if (FAILED(hr)) throwWindowsException(hr);

      return succeeded.value;
    } finally {
      free(succeeded);
    }
  }

  (bool, {PowerlineFrequency value}) tryGetPowerlineFrequency() {
    final succeeded = calloc<Bool>();
    final value = calloc<Int32>();

    try {
      final hr = _vtable.TryGetPowerlineFrequency.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Int32> value,
              Pointer<Bool> succeeded)>()(lpVtbl, value, succeeded);

      if (FAILED(hr)) throwWindowsException(hr);

      return (succeeded.value, value: PowerlineFrequency.from(value.value));
    } finally {
      free(value);
      free(succeeded);
    }
  }

  late final _iMediaDeviceController = IMediaDeviceController.from(this);

  @override
  List<IMediaEncodingProperties?> getAvailableMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController
          .getAvailableMediaStreamProperties(mediaStreamType);

  @override
  IMediaEncodingProperties? getMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController.getMediaStreamProperties(mediaStreamType);

  @override
  Future<void> setMediaStreamPropertiesAsync(MediaStreamType mediaStreamType,
          IMediaEncodingProperties? mediaEncodingProperties) =>
      _iMediaDeviceController.setMediaStreamPropertiesAsync(
          mediaStreamType, mediaEncodingProperties);
}

final class _IVideoDeviceControllerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Brightness;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Contrast;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Hue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WhiteBalance;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_BacklightCompensation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Pan;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Tilt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Zoom;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Roll;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Exposure;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Focus;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 value, Pointer<Bool> succeeded)>>
      TrySetPowerlineFrequency;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value,
              Pointer<Bool> succeeded)>> TryGetPowerlineFrequency;
}
