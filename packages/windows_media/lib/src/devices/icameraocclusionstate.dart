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

import 'cameraocclusionkind.dart';

/// @nodoc
const IID_ICameraOcclusionState = '{430adeb8-6842-5e55-9bde-04b4ef3a8a57}';

class ICameraOcclusionState extends IInspectable {
  ICameraOcclusionState.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICameraOcclusionStateVtbl>().ref;

  final _ICameraOcclusionStateVtbl _vtable;

  factory ICameraOcclusionState.from(IInspectable interface) =>
      interface.cast(ICameraOcclusionState.fromPtr, IID_ICameraOcclusionState);

  bool get isOccluded {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsOccluded.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool isOcclusionKind(CameraOcclusionKind occlusionKind) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsOcclusionKind.asFunction<
          int Function(VTablePointer lpVtbl, int occlusionKind,
              Pointer<Bool> result)>()(lpVtbl, occlusionKind.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _ICameraOcclusionStateVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsOccluded;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 occlusionKind,
              Pointer<Bool> result)>> IsOcclusionKind;
}
