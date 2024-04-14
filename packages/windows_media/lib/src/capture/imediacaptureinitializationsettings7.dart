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
import 'package:windows_security/windows_security.dart';

/// @nodoc
const IID_IMediaCaptureInitializationSettings7 =
    '{41546967-f58a-5d82-9ef4-ed572fb5e34e}';

class IMediaCaptureInitializationSettings7 extends IInspectable {
  IMediaCaptureInitializationSettings7.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureInitializationSettings7Vtbl>()
            .ref;

  final _IMediaCaptureInitializationSettings7Vtbl _vtable;

  factory IMediaCaptureInitializationSettings7.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings7.fromPtr,
          IID_IMediaCaptureInitializationSettings7);

  PasswordCredential? get deviceUriPasswordCredential {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DeviceUriPasswordCredential.asFunction<
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

    return PasswordCredential.fromPtr(value);
  }

  set deviceUriPasswordCredential(PasswordCredential? value) {
    final hr = _vtable.put_DeviceUriPasswordCredential.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Uri? get deviceUri {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DeviceUri.asFunction<
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

    return value.toWinRTUri().toDartUri();
  }

  set deviceUri(Uri? value) {
    final hr = _vtable.put_DeviceUri.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toWinRTUri().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMediaCaptureInitializationSettings7Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DeviceUriPasswordCredential;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_DeviceUriPasswordCredential;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DeviceUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_DeviceUri;
}
