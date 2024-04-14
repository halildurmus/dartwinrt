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
import 'package:windows_graphics/windows_graphics.dart';

import 'learningmodeldevice.dart';

/// @nodoc
const IID_ILearningModelDeviceStatics =
    '{49f32107-a8bf-42bb-92c7-10b12dc5d21f}';

class ILearningModelDeviceStatics extends IInspectable {
  ILearningModelDeviceStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelDeviceStaticsVtbl>().ref;

  final _ILearningModelDeviceStaticsVtbl _vtable;

  factory ILearningModelDeviceStatics.from(IInspectable interface) =>
      interface.cast(
          ILearningModelDeviceStatics.fromPtr, IID_ILearningModelDeviceStatics);

  LearningModelDevice? createFromDirect3D11Device(IDirect3DDevice? device) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateFromDirect3D11Device.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer device,
            Pointer<COMObject> result)>()(lpVtbl, device.lpVtbl, result);

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

final class _ILearningModelDeviceStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer device,
              Pointer<COMObject> result)>> CreateFromDirect3D11Device;
}
