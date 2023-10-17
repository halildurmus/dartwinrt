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

import 'cameraocclusioninfo.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController10 =
    '{c621b82d-d6f0-5c1b-a388-a6e938407146}';

class IAdvancedVideoCaptureDeviceController10 extends IInspectable {
  IAdvancedVideoCaptureDeviceController10.fromPtr(super.ptr);

  factory IAdvancedVideoCaptureDeviceController10.from(
          IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController10.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController10);

  CameraOcclusionInfo? get cameraOcclusionInfo {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return CameraOcclusionInfo.fromPtr(value);
  }
}
