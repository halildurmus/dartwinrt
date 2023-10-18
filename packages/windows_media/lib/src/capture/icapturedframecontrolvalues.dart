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

import '../devices/capturescenemode.dart';

/// @nodoc
const IID_ICapturedFrameControlValues =
    '{90c65b7f-4e0d-4ca4-882d-7a144fed0a90}';

class ICapturedFrameControlValues extends IInspectable {
  ICapturedFrameControlValues.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICapturedFrameControlValuesVtbl>().ref;

  final _ICapturedFrameControlValuesVtbl _vtable;

  factory ICapturedFrameControlValues.from(IInspectable interface) =>
      interface.cast(
          ICapturedFrameControlValues.fromPtr, IID_ICapturedFrameControlValues);

  Duration? get exposure {
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

    return IReference<Duration?>.fromPtr(value,
            referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}')
        .value;
  }

  double? get exposureCompensation {
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{719cc2ba-3e76-5def-9f1a-38d85a145ea8}')
        .value;
  }

  int? get isoSpeed {
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  int? get focus {
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  CaptureSceneMode? get sceneMode {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SceneMode.asFunction<
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

    return IReference<CaptureSceneMode?>.fromPtr(value,
            referenceIid: '{e20596aa-0bbe-5203-be6b-6b71ff5b0843}',
            enumCreator: CaptureSceneMode.from)
        .value;
  }

  bool? get flashed {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Flashed.asFunction<
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

    return IReference<bool?>.fromPtr(value,
            referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}')
        .value;
  }

  double? get flashPowerPercent {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FlashPowerPercent.asFunction<
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{719cc2ba-3e76-5def-9f1a-38d85a145ea8}')
        .value;
  }

  int? get whiteBalance {
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  double? get zoomFactor {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ZoomFactor.asFunction<
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{719cc2ba-3e76-5def-9f1a-38d85a145ea8}')
        .value;
  }
}

final class _ICapturedFrameControlValuesVtbl extends Struct {
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
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SceneMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Flashed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FlashPowerPercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WhiteBalance;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ZoomFactor;
}
