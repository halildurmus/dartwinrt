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

import 'displayregion.dart';
import 'windowingenvironment.dart';

/// @nodoc
const IID_IDisplayRegion = '{db50c3a2-4094-5f47-8cb1-ea01ddafaa94}';

class IDisplayRegion extends IInspectable {
  IDisplayRegion.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDisplayRegionVtbl>().ref;

  final _IDisplayRegionVtbl _vtable;

  factory IDisplayRegion.from(IInspectable interface) =>
      interface.cast(IDisplayRegion.fromPtr, IID_IDisplayRegion);

  String get displayMonitorDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayMonitorDeviceId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  bool get isVisible {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsVisible.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Point get workAreaOffset {
    final value = calloc<NativePoint>();

    try {
      final hr = _vtable.get_WorkAreaOffset.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size get workAreaSize {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.get_WorkAreaSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  WindowingEnvironment? get windowingEnvironment {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WindowingEnvironment.asFunction<
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

    return WindowingEnvironment.fromPtr(value);
  }

  int add_Changed(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Changed.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Changed(int token) {
    final hr = _vtable.remove_Changed
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IDisplayRegionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayMonitorDeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsVisible;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePoint> value)>>
      get_WorkAreaOffset;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSize> value)>>
      get_WorkAreaSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WindowingEnvironment;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Changed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Changed;
}
