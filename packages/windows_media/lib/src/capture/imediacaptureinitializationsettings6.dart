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
const IID_IMediaCaptureInitializationSettings6 =
    '{b2e26b47-3db1-4d33-ab63-0ffa09056585}';

class IMediaCaptureInitializationSettings6 extends IInspectable {
  IMediaCaptureInitializationSettings6.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureInitializationSettings6Vtbl>()
            .ref;

  final _IMediaCaptureInitializationSettings6Vtbl _vtable;

  factory IMediaCaptureInitializationSettings6.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings6.fromPtr,
          IID_IMediaCaptureInitializationSettings6);

  bool get alwaysPlaySystemShutterSound {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AlwaysPlaySystemShutterSound.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set alwaysPlaySystemShutterSound(bool value) {
    final hr = _vtable.put_AlwaysPlaySystemShutterSound
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMediaCaptureInitializationSettings6Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AlwaysPlaySystemShutterSound;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_AlwaysPlaySystemShutterSound;
}
