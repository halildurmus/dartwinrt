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

/// @nodoc
const IID_ILauncherOptions3 = '{f0770655-4b63-4e3a-9107-4e687841923a}';

class ILauncherOptions3 extends IInspectable {
  ILauncherOptions3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherOptions3Vtbl>().ref;

  final _ILauncherOptions3Vtbl _vtable;

  factory ILauncherOptions3.from(IInspectable interface) =>
      interface.cast(ILauncherOptions3.fromPtr, IID_ILauncherOptions3);

  bool get ignoreAppUriHandlers {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IgnoreAppUriHandlers.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set ignoreAppUriHandlers(bool value) {
    final hr = _vtable.put_IgnoreAppUriHandlers
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILauncherOptions3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IgnoreAppUriHandlers;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IgnoreAppUriHandlers;
}
