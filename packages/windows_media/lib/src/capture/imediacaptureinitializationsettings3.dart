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

import '../core/imediasource.dart';

/// @nodoc
const IID_IMediaCaptureInitializationSettings3 =
    '{4160519d-be48-4730-8104-0cf6e9e97948}';

class IMediaCaptureInitializationSettings3 extends IInspectable {
  IMediaCaptureInitializationSettings3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureInitializationSettings3Vtbl>()
            .ref;

  final _IMediaCaptureInitializationSettings3Vtbl _vtable;

  factory IMediaCaptureInitializationSettings3.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings3.fromPtr,
          IID_IMediaCaptureInitializationSettings3);

  set audioSource(IMediaSource? value) {
    final hr = _vtable.put_AudioSource.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IMediaSource? get audioSource {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AudioSource.asFunction<
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

    return IMediaSource.fromPtr(value);
  }

  set videoSource(IMediaSource? value) {
    final hr = _vtable.put_VideoSource.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IMediaSource? get videoSource {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoSource.asFunction<
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

    return IMediaSource.fromPtr(value);
  }
}

final class _IMediaCaptureInitializationSettings3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_AudioSource;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AudioSource;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_VideoSource;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoSource;
}
