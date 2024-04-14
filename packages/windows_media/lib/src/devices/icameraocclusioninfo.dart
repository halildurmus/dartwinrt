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

import 'cameraocclusioninfo.dart';
import 'cameraocclusionkind.dart';
import 'cameraocclusionstate.dart';

/// @nodoc
const IID_ICameraOcclusionInfo = '{af6c4ad0-a84d-5db6-be58-a5da21cfe011}';

class ICameraOcclusionInfo extends IInspectable {
  ICameraOcclusionInfo.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICameraOcclusionInfoVtbl>().ref;

  final _ICameraOcclusionInfoVtbl _vtable;

  factory ICameraOcclusionInfo.from(IInspectable interface) =>
      interface.cast(ICameraOcclusionInfo.fromPtr, IID_ICameraOcclusionInfo);

  CameraOcclusionState? getState() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetState.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return CameraOcclusionState.fromPtr(result);
  }

  bool isOcclusionKindSupported(CameraOcclusionKind occlusionKind) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsOcclusionKindSupported.asFunction<
          int Function(VTablePointer lpVtbl, int occlusionKind,
              Pointer<Bool> result)>()(lpVtbl, occlusionKind.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int add_StateChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_StateChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_StateChanged(int token) {
    final hr = _vtable.remove_StateChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ICameraOcclusionInfoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> GetState;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 occlusionKind,
              Pointer<Bool> result)>> IsOcclusionKindSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_StateChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_StateChanged;
}
