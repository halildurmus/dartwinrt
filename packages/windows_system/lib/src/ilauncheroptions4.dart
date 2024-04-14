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
const IID_ILauncherOptions4 = '{ef6fd10e-e6fb-4814-a44e-57e8b9d9a01b}';

class ILauncherOptions4 extends IInspectable {
  ILauncherOptions4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherOptions4Vtbl>().ref;

  final _ILauncherOptions4Vtbl _vtable;

  factory ILauncherOptions4.from(IInspectable interface) =>
      interface.cast(ILauncherOptions4.fromPtr, IID_ILauncherOptions4);

  bool get limitPickerToCurrentAppAndAppUriHandlers {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_LimitPickerToCurrentAppAndAppUriHandlers
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set limitPickerToCurrentAppAndAppUriHandlers(bool value) {
    final hr = _vtable.put_LimitPickerToCurrentAppAndAppUriHandlers
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILauncherOptions4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_LimitPickerToCurrentAppAndAppUriHandlers;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_LimitPickerToCurrentAppAndAppUriHandlers;
}
