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

import 'uisettings.dart';

/// @nodoc
const IID_IUISettings2 = '{bad82401-2721-44f9-bb91-2bb228be442f}';

class IUISettings2 extends IInspectable {
  IUISettings2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUISettings2Vtbl>().ref;

  final _IUISettings2Vtbl _vtable;

  factory IUISettings2.from(IInspectable interface) =>
      interface.cast(IUISettings2.fromPtr, IID_IUISettings2);

  double get textScaleFactor {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_TextScaleFactor.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_TextScaleFactorChanged(Pointer<COMObject> handler) {
    final cookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_TextScaleFactorChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>()(lpVtbl, handler.ref.lpVtbl, cookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return cookie.value;
    } finally {
      free(cookie);
    }
  }

  void remove_TextScaleFactorChanged(int cookie) {
    final hr = _vtable.remove_TextScaleFactorChanged
            .asFunction<int Function(VTablePointer lpVtbl, int cookie)>()(
        lpVtbl, cookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IUISettings2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_TextScaleFactor;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>> add_TextScaleFactorChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr cookie)>>
      remove_TextScaleFactorChanged;
}
