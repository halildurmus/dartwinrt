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

import 'videotemporaldenoisingcontrol.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController6 =
    '{b6563a53-68a1-44b7-9f89-b5fa97ac0cbe}';

class IAdvancedVideoCaptureDeviceController6 extends IInspectable {
  IAdvancedVideoCaptureDeviceController6.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController6Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController6Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController6.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController6.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController6);

  VideoTemporalDenoisingControl? get videoTemporalDenoisingControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoTemporalDenoisingControl.asFunction<
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

    return VideoTemporalDenoisingControl.fromPtr(value);
  }
}

final class _IAdvancedVideoCaptureDeviceController6Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoTemporalDenoisingControl;
}
