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
import 'package:windows_graphics/windows_graphics.dart';

/// @nodoc
const IID_IMediaCaptureSettings3 = '{303c67c2-8058-4b1b-b877-8c2ef3528440}';

class IMediaCaptureSettings3 extends IInspectable {
  IMediaCaptureSettings3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureSettings3Vtbl>().ref;

  final _IMediaCaptureSettings3Vtbl _vtable;

  factory IMediaCaptureSettings3.from(IInspectable interface) => interface.cast(
      IMediaCaptureSettings3.fromPtr, IID_IMediaCaptureSettings3);

  IDirect3DDevice? get direct3D11Device {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Direct3D11Device.asFunction<
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

    return IDirect3DDevice.fromPtr(value);
  }
}

final class _IMediaCaptureSettings3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Direct3D11Device;
}
