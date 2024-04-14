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
const IID_IToastNotification6 = '{43ebfe53-89ae-5c1e-a279-3aecfe9b6f54}';

class IToastNotification6 extends IInspectable {
  IToastNotification6.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotification6Vtbl>().ref;

  final _IToastNotification6Vtbl _vtable;

  factory IToastNotification6.from(IInspectable interface) =>
      interface.cast(IToastNotification6.fromPtr, IID_IToastNotification6);

  bool get expiresOnReboot {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ExpiresOnReboot.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set expiresOnReboot(bool value) {
    final hr = _vtable.put_ExpiresOnReboot
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IToastNotification6Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ExpiresOnReboot;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_ExpiresOnReboot;
}
