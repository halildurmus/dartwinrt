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

import 'frameexposurecapabilities.dart';
import 'frameexposurecompensationcapabilities.dart';
import 'framefocuscapabilities.dart';
import 'frameisospeedcapabilities.dart';

/// @nodoc
const IID_IFrameControlCapabilities = '{a8ffae60-4e9e-4377-a789-e24c4ae7e544}';

class IFrameControlCapabilities extends IInspectable {
  IFrameControlCapabilities.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFrameControlCapabilitiesVtbl>().ref;

  final _IFrameControlCapabilitiesVtbl _vtable;

  factory IFrameControlCapabilities.from(IInspectable interface) => interface
      .cast(IFrameControlCapabilities.fromPtr, IID_IFrameControlCapabilities);

  FrameExposureCapabilities? get exposure {
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

    return FrameExposureCapabilities.fromPtr(value);
  }

  FrameExposureCompensationCapabilities? get exposureCompensation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExposureCompensation.asFunction<
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

    return FrameExposureCompensationCapabilities.fromPtr(value);
  }

  FrameIsoSpeedCapabilities? get isoSpeed {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsoSpeed.asFunction<
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

    return FrameIsoSpeedCapabilities.fromPtr(value);
  }

  FrameFocusCapabilities? get focus {
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

    return FrameFocusCapabilities.fromPtr(value);
  }

  bool get photoConfirmationSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_PhotoConfirmationSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IFrameControlCapabilitiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Exposure;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExposureCompensation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsoSpeed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Focus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_PhotoConfirmationSupported;
}
