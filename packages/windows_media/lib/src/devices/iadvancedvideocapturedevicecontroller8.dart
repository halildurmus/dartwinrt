// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'panelbasedoptimizationcontrol.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController8 =
    '{d843f010-e7fb-595b-9a78-0e54c4532b43}';

class IAdvancedVideoCaptureDeviceController8 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAdvancedVideoCaptureDeviceController8.fromPtr(super.ptr);

  factory IAdvancedVideoCaptureDeviceController8.from(IInspectable interface) =>
      IAdvancedVideoCaptureDeviceController8.fromPtr(
          interface.toInterface(IID_IAdvancedVideoCaptureDeviceController8));

  PanelBasedOptimizationControl? get panelBasedOptimizationControl {
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

    return PanelBasedOptimizationControl.fromPtr(value);
  }
}
