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

import 'digitalwindowcontrol.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController9 =
    '{8bdca95d-0255-51bc-a10d-5a169ec1625a}';

class IAdvancedVideoCaptureDeviceController9 extends IInspectable {
  IAdvancedVideoCaptureDeviceController9.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController9Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController9Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController9.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController9.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController9);

  DigitalWindowControl? get digitalWindowControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DigitalWindowControl.asFunction<
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

    return DigitalWindowControl.fromPtr(value);
  }
}

final class _IAdvancedVideoCaptureDeviceController9Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DigitalWindowControl;
}
