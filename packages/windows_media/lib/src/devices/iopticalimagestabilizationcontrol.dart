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

import 'opticalimagestabilizationmode.dart';

/// @nodoc
const IID_IOpticalImageStabilizationControl =
    '{bfad9c1d-00bc-423b-8eb2-a0178ca94247}';

class IOpticalImageStabilizationControl extends IInspectable {
  IOpticalImageStabilizationControl.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IOpticalImageStabilizationControlVtbl>().ref;

  final _IOpticalImageStabilizationControlVtbl _vtable;

  factory IOpticalImageStabilizationControl.from(IInspectable interface) =>
      interface.cast(IOpticalImageStabilizationControl.fromPtr,
          IID_IOpticalImageStabilizationControl);

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<OpticalImageStabilizationMode>? get supportedModes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedModes.asFunction<
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

    return IVectorView<OpticalImageStabilizationMode>.fromPtr(value,
            iterableIid: '{323d7734-94c2-544d-a560-56560fe68819}',
            enumCreator: OpticalImageStabilizationMode.from)
        .toList();
  }

  OpticalImageStabilizationMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Mode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return OpticalImageStabilizationMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set mode(OpticalImageStabilizationMode value) {
    final hr = _vtable.put_Mode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IOpticalImageStabilizationControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedModes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Mode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Mode;
}
