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
import 'package:windows_graphics/windows_graphics.dart';

import 'learningmodeldevice.dart';

/// @nodoc
const IID_ILearningModelDeviceStatics =
    '{49f32107-a8bf-42bb-92c7-10b12dc5d21f}';

class ILearningModelDeviceStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILearningModelDeviceStatics.fromPtr(super.ptr);

  factory ILearningModelDeviceStatics.from(IInspectable interface) =>
      ILearningModelDeviceStatics.fromPtr(
          interface.toInterface(IID_ILearningModelDeviceStatics));

  LearningModelDevice? createFromDirect3D11Device(IDirect3DDevice? device) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer device,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer device,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, device.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModelDevice.fromPtr(result);
  }
}
