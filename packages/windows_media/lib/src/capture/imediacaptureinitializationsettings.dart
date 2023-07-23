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

/// @nodoc
const IID_IMediaCaptureInitializationSettings =
    '{9782ba70-ea65-4900-9356-8ca887726884}';

class IMediaCaptureInitializationSettings extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  IMediaCaptureInitializationSettings.fromPtr(super.ptr);

  factory IMediaCaptureInitializationSettings.from(IInspectable interface) =>
      IMediaCaptureInitializationSettings.fromPtr(
          interface.toInterface(IID_IMediaCaptureInitializationSettings));

  set audioDeviceId(String value) {
    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get audioDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set videoDeviceId(String value) {
    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get videoDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set streamingCaptureMode(StreamingCaptureMode value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  StreamingCaptureMode get streamingCaptureMode {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return StreamingCaptureMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set photoCaptureSource(PhotoCaptureSource value) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  PhotoCaptureSource get photoCaptureSource {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PhotoCaptureSource.from(value.value);
    } finally {
      free(value);
    }
  }
}
