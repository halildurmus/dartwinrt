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

import 'frames/mediaframesourcegroup.dart';
import 'mediacapturememorypreference.dart';
import 'mediacapturesharingmode.dart';

/// @nodoc
const IID_IMediaCaptureInitializationSettings5 =
    '{d5a2e3b8-2626-4e94-b7b3-5308a0f64b1a}';

class IMediaCaptureInitializationSettings5 extends IInspectable {
  IMediaCaptureInitializationSettings5.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureInitializationSettings5Vtbl>()
            .ref;

  final _IMediaCaptureInitializationSettings5Vtbl _vtable;

  factory IMediaCaptureInitializationSettings5.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings5.fromPtr,
          IID_IMediaCaptureInitializationSettings5);

  MediaFrameSourceGroup? get sourceGroup {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SourceGroup.asFunction<
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

    return MediaFrameSourceGroup.fromPtr(value);
  }

  set sourceGroup(MediaFrameSourceGroup? value) {
    final hr = _vtable.put_SourceGroup.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureSharingMode get sharingMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_SharingMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCaptureSharingMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set sharingMode(MediaCaptureSharingMode value) {
    final hr = _vtable.put_SharingMode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureMemoryPreference get memoryPreference {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_MemoryPreference.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCaptureMemoryPreference.from(value.value);
    } finally {
      free(value);
    }
  }

  set memoryPreference(MediaCaptureMemoryPreference value) {
    final hr = _vtable.put_MemoryPreference
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMediaCaptureInitializationSettings5Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SourceGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_SourceGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_SharingMode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_SharingMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_MemoryPreference;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_MemoryPreference;
}
