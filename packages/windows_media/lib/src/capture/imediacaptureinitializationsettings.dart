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

import 'photocapturesource.dart';
import 'streamingcapturemode.dart';

/// @nodoc
const IID_IMediaCaptureInitializationSettings =
    '{9782ba70-ea65-4900-9356-8ca887726884}';

class IMediaCaptureInitializationSettings extends IInspectable {
  IMediaCaptureInitializationSettings.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IMediaCaptureInitializationSettingsVtbl>().ref;

  final _IMediaCaptureInitializationSettingsVtbl _vtable;

  factory IMediaCaptureInitializationSettings.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings.fromPtr,
          IID_IMediaCaptureInitializationSettings);

  set audioDeviceId(String value) {
    final hr = _vtable.put_AudioDeviceId
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get audioDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AudioDeviceId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set videoDeviceId(String value) {
    final hr = _vtable.put_VideoDeviceId
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get videoDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_VideoDeviceId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set streamingCaptureMode(StreamingCaptureMode value) {
    final hr = _vtable.put_StreamingCaptureMode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  StreamingCaptureMode get streamingCaptureMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_StreamingCaptureMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return StreamingCaptureMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set photoCaptureSource(PhotoCaptureSource value) {
    final hr = _vtable.put_PhotoCaptureSource
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  PhotoCaptureSource get photoCaptureSource {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PhotoCaptureSource.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PhotoCaptureSource.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureInitializationSettingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_AudioDeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AudioDeviceId;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_VideoDeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_VideoDeviceId;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_StreamingCaptureMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_StreamingCaptureMode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_PhotoCaptureSource;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PhotoCaptureSource;
}
