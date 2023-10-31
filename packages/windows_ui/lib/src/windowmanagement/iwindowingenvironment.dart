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

import 'displayregion.dart';
import 'windowingenvironment.dart';
import 'windowingenvironmentkind.dart';

/// @nodoc
const IID_IWindowingEnvironment = '{264363c0-2a49-5417-b3ae-48a71c63a3bd}';

class IWindowingEnvironment extends IInspectable {
  IWindowingEnvironment.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWindowingEnvironmentVtbl>().ref;

  final _IWindowingEnvironmentVtbl _vtable;

  factory IWindowingEnvironment.from(IInspectable interface) =>
      interface.cast(IWindowingEnvironment.fromPtr, IID_IWindowingEnvironment);

  bool get isEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  WindowingEnvironmentKind get kind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Kind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return WindowingEnvironmentKind.from(value.value);
    } finally {
      free(value);
    }
  }

  List<DisplayRegion?> getDisplayRegions() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetDisplayRegions.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<DisplayRegion?>.fromPtr(result,
            iterableIid: '{026730ab-250d-503c-a876-43bbb754ad44}',
            tObjectCreator: DisplayRegion.fromPtr)
        .toList();
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

final class _IWindowingEnvironmentVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Kind;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetDisplayRegions;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Changed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Changed;
}
