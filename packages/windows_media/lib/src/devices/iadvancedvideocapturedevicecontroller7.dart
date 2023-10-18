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

import 'infraredtorchcontrol.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController7 =
    '{8d2927f0-a054-50e7-b7df-7c04234d10f0}';

class IAdvancedVideoCaptureDeviceController7 extends IInspectable {
  IAdvancedVideoCaptureDeviceController7.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController7Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController7Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController7.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController7.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController7);

  InfraredTorchControl? get infraredTorchControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InfraredTorchControl.asFunction<
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

    return InfraredTorchControl.fromPtr(value);
  }
}

final class _IAdvancedVideoCaptureDeviceController7Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InfraredTorchControl;
}
