// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'advancedphotocontrol.dart';
import 'exposurepriorityvideocontrol.dart';
import 'hdrvideocontrol.dart';
import 'mediacaptureoptimization.dart';
import 'opticalimagestabilizationcontrol.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController4 =
    '{ea9fbfaf-d371-41c3-9a17-824a87ebdfd2}';

class IAdvancedVideoCaptureDeviceController4 extends IInspectable {
  IAdvancedVideoCaptureDeviceController4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController4Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController4Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController4.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController4.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController4);

  ExposurePriorityVideoControl? get exposurePriorityVideoControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExposurePriorityVideoControl.asFunction<
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

    return ExposurePriorityVideoControl.fromPtr(value);
  }

  MediaCaptureOptimization get desiredOptimization {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_DesiredOptimization.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCaptureOptimization.from(value.value);
    } finally {
      free(value);
    }
  }

  set desiredOptimization(MediaCaptureOptimization value) {
    final hr = _vtable.put_DesiredOptimization
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  HdrVideoControl? get hdrVideoControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_HdrVideoControl.asFunction<
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

    return HdrVideoControl.fromPtr(value);
  }

  OpticalImageStabilizationControl? get opticalImageStabilizationControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_OpticalImageStabilizationControl.asFunction<
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

    return OpticalImageStabilizationControl.fromPtr(value);
  }

  AdvancedPhotoControl? get advancedPhotoControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AdvancedPhotoControl.asFunction<
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

    return AdvancedPhotoControl.fromPtr(value);
  }
}

final class _IAdvancedVideoCaptureDeviceController4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExposurePriorityVideoControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_DesiredOptimization;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_DesiredOptimization;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_HdrVideoControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_OpticalImageStabilizationControl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AdvancedPhotoControl;
}
