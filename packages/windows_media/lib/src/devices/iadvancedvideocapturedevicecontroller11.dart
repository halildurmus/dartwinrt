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

import '../capture/mediacapturedeviceexclusivecontrolreleasemode.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController11 =
    '{d5b65ae2-3772-580c-a630-e75de9106904}';

class IAdvancedVideoCaptureDeviceController11 extends IInspectable {
  IAdvancedVideoCaptureDeviceController11.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController11Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController11Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController11.from(
          IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController11.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController11);

  bool tryAcquireExclusiveControl(
      String deviceId, MediaCaptureDeviceExclusiveControlReleaseMode mode) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.TryAcquireExclusiveControl.asFunction<
              int Function(VTablePointer lpVtbl, int deviceId, int mode,
                  Pointer<Bool> result)>()(
          lpVtbl, deviceId.toHString(), mode.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _IAdvancedVideoCaptureDeviceController11Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId, Int32 mode,
              Pointer<Bool> result)>> TryAcquireExclusiveControl;
}
