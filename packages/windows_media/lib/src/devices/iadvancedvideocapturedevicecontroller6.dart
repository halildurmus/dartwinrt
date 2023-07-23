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
  // vtable begins at 6, is 1 entries long.
  IAdvancedVideoCaptureDeviceController6.fromPtr(super.ptr);

  factory IAdvancedVideoCaptureDeviceController6.from(IInspectable interface) =>
      IAdvancedVideoCaptureDeviceController6.fromPtr(
          interface.toInterface(IID_IAdvancedVideoCaptureDeviceController6));

  VideoTemporalDenoisingControl? get videoTemporalDenoisingControl {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
