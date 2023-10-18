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

import 'uisettings.dart';

/// @nodoc
const IID_IUISettings4 = '{52bb3002-919b-4d6b-9b78-8dd66ff4b93b}';

class IUISettings4 extends IInspectable {
  IUISettings4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUISettings4Vtbl>().ref;

  final _IUISettings4Vtbl _vtable;

  factory IUISettings4.from(IInspectable interface) =>
      interface.cast(IUISettings4.fromPtr, IID_IUISettings4);

  bool get advancedEffectsEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AdvancedEffectsEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_AdvancedEffectsEnabledChanged(Pointer<COMObject> handler) {
    final cookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_AdvancedEffectsEnabledChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>()(lpVtbl, handler.ref.lpVtbl, cookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return cookie.value;
    } finally {
      free(cookie);
    }
  }

  void remove_AdvancedEffectsEnabledChanged(int cookie) {
    final hr = _vtable.remove_AdvancedEffectsEnabledChanged
            .asFunction<int Function(VTablePointer lpVtbl, int cookie)>()(
        lpVtbl, cookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IUISettings4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AdvancedEffectsEnabled;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>> add_AdvancedEffectsEnabledChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr cookie)>>
      remove_AdvancedEffectsEnabledChanged;
}
