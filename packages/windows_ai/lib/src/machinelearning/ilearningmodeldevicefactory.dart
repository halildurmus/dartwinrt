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

import 'learningmodeldevice.dart';
import 'learningmodeldevicekind.dart';

/// @nodoc
const IID_ILearningModelDeviceFactory =
    '{9cffd74d-b1e5-4f20-80ad-0a56690db06b}';

class ILearningModelDeviceFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILearningModelDeviceFactory.fromPtr(super.ptr);

  factory ILearningModelDeviceFactory.from(IInspectable interface) =>
      interface.cast(
          ILearningModelDeviceFactory.fromPtr, IID_ILearningModelDeviceFactory);

  LearningModelDevice create(LearningModelDeviceKind deviceKind) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 deviceKind,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceKind,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, deviceKind.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return LearningModelDevice.fromPtr(value);
  }
}
