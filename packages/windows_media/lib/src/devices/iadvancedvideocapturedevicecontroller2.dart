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

import 'captureuse.dart';
import 'exposurecompensationcontrol.dart';
import 'exposurecontrol.dart';
import 'flashcontrol.dart';
import 'focuscontrol.dart';
import 'isospeedcontrol.dart';
import 'lowlagphotocontrol.dart';
import 'lowlagphotosequencecontrol.dart';
import 'regionsofinterestcontrol.dart';
import 'scenemodecontrol.dart';
import 'torchcontrol.dart';
import 'whitebalancecontrol.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController2 =
    '{8bb94f8f-f11a-43db-b402-11930b80ae56}';

class IAdvancedVideoCaptureDeviceController2 extends IInspectable {
  IAdvancedVideoCaptureDeviceController2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController2Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController2Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController2.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController2.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController2);

  LowLagPhotoSequenceControl? get lowLagPhotoSequence {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LowLagPhotoSequence.asFunction<
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

    return LowLagPhotoSequenceControl.fromPtr(value);
  }

  LowLagPhotoControl? get lowLagPhoto {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LowLagPhoto.asFunction<
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

    return LowLagPhotoControl.fromPtr(value);
  }

  SceneModeControl? get sceneModeControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SceneModeControl.asFunction<
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

    return SceneModeControl.fromPtr(value);
  }

  TorchControl? get torchControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_TorchControl.asFunction<
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

    return TorchControl.fromPtr(value);
  }

  FlashControl? get flashControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FlashControl.asFunction<
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

    return FlashControl.fromPtr(value);
  }

  WhiteBalanceControl? get whiteBalanceControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WhiteBalanceControl.asFunction<
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

    return WhiteBalanceControl.fromPtr(value);
  }

  ExposureControl? get exposureControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExposureControl.asFunction<
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

    return ExposureControl.fromPtr(value);
  }

  FocusControl? get focusControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FocusControl.asFunction<
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

    return FocusControl.fromPtr(value);
  }

  ExposureCompensationControl? get exposureCompensationControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExposureCompensationControl.asFunction<
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

    return ExposureCompensationControl.fromPtr(value);
  }

  IsoSpeedControl? get isoSpeedControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsoSpeedControl.asFunction<
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

    return IsoSpeedControl.fromPtr(value);
  }

  RegionsOfInterestControl? get regionsOfInterestControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RegionsOfInterestControl.asFunction<
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

    return RegionsOfInterestControl.fromPtr(value);
  }

  CaptureUse get primaryUse {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PrimaryUse.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return CaptureUse.from(value.value);
    } finally {
      free(value);
    }
  }

  set primaryUse(CaptureUse value) {
    final hr = _vtable.put_PrimaryUse
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IAdvancedVideoCaptureDeviceController2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LowLagPhotoSequence;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LowLagPhoto;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SceneModeControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_TorchControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FlashControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WhiteBalanceControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExposureControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FocusControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExposureCompensationControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsoSpeedControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RegionsOfInterestControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PrimaryUse;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_PrimaryUse;
}
