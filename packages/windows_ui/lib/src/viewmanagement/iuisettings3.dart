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

import '../color.dart';
import 'uicolortype.dart';
import 'uisettings.dart';

/// @nodoc
const IID_IUISettings3 = '{03021be4-5254-4781-8194-5168f7d06d7b}';

class IUISettings3 extends IInspectable {
  IUISettings3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUISettings3Vtbl>().ref;

  final _IUISettings3Vtbl _vtable;

  factory IUISettings3.from(IInspectable interface) =>
      interface.cast(IUISettings3.fromPtr, IID_IUISettings3);

  Color getColorValue(UIColorType desiredColor) {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.GetColorValue.asFunction<
          int Function(VTablePointer lpVtbl, int desiredColor,
              Pointer<NativeColor> value)>()(lpVtbl, desiredColor.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  int add_ColorValuesChanged(Pointer<COMObject> handler) {
    final cookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_ColorValuesChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>()(lpVtbl, handler.ref.lpVtbl, cookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return cookie.value;
    } finally {
      free(cookie);
    }
  }

  void remove_ColorValuesChanged(int cookie) {
    final hr = _vtable.remove_ColorValuesChanged
            .asFunction<int Function(VTablePointer lpVtbl, int cookie)>()(
        lpVtbl, cookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IUISettings3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 desiredColor,
              Pointer<NativeColor> value)>> GetColorValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>> add_ColorValuesChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr cookie)>>
      remove_ColorValuesChanged;
}
