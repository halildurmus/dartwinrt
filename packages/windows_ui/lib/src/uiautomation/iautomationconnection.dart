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
const IID_IAutomationConnection = '{aad262ed-0ef4-5d43-97be-a834e27b65b9}';

class IAutomationConnection extends IInspectable {
  IAutomationConnection.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAutomationConnectionVtbl>().ref;

  final _IAutomationConnectionVtbl _vtable;

  factory IAutomationConnection.from(IInspectable interface) =>
      interface.cast(IAutomationConnection.fromPtr, IID_IAutomationConnection);

  bool get isRemoteSystem {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsRemoteSystem.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get appUserModelId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AppUserModelId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get executableFileName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ExecutableFileName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IAutomationConnectionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsRemoteSystem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AppUserModelId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ExecutableFileName;
}
