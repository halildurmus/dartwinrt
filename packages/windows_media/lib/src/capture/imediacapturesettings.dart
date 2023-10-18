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

import 'photocapturesource.dart';
import 'streamingcapturemode.dart';
import 'videodevicecharacteristic.dart';

/// @nodoc
const IID_IMediaCaptureSettings = '{1d83aafe-6d45-4477-8dc4-ac5bc01c4091}';

class IMediaCaptureSettings extends IInspectable {
  IMediaCaptureSettings.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureSettingsVtbl>().ref;

  final _IMediaCaptureSettingsVtbl _vtable;

  factory IMediaCaptureSettings.from(IInspectable interface) =>
      interface.cast(IMediaCaptureSettings.fromPtr, IID_IMediaCaptureSettings);

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

  VideoDeviceCharacteristic get videoDeviceCharacteristic {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_VideoDeviceCharacteristic.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoDeviceCharacteristic.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureSettingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AudioDeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_VideoDeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_StreamingCaptureMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PhotoCaptureSource;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_VideoDeviceCharacteristic;
}
