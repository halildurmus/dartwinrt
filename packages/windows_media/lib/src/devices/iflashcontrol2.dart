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

/// @nodoc
const IID_IFlashControl2 = '{7d29cc9e-75e1-4af7-bd7d-4e38e1c06cd6}';

class IFlashControl2 extends IInspectable {
  IFlashControl2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFlashControl2Vtbl>().ref;

  final _IFlashControl2Vtbl _vtable;

  factory IFlashControl2.from(IInspectable interface) =>
      interface.cast(IFlashControl2.fromPtr, IID_IFlashControl2);

  bool get assistantLightSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AssistantLightSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get assistantLightEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AssistantLightEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set assistantLightEnabled(bool value) {
    final hr = _vtable.put_AssistantLightEnabled
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFlashControl2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AssistantLightSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AssistantLightEnabled;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_AssistantLightEnabled;
}
