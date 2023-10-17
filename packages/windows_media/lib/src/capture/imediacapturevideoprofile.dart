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

import 'mediacapturevideoprofile.dart';
import 'mediacapturevideoprofilemediadescription.dart';

/// @nodoc
const IID_IMediaCaptureVideoProfile = '{21a073bf-a3ee-4ecf-9ef6-50b0bc4e1305}';

class IMediaCaptureVideoProfile extends IInspectable {
  IMediaCaptureVideoProfile.fromPtr(super.ptr);

  factory IMediaCaptureVideoProfile.from(IInspectable interface) => interface
      .cast(IMediaCaptureVideoProfile.fromPtr, IID_IMediaCaptureVideoProfile);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get videoDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  List<MediaCaptureVideoProfileMediaDescription?>?
      get supportedPreviewMediaDescription {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<MediaCaptureVideoProfileMediaDescription?>.fromPtr(value,
            iterableIid: '{0895e56d-fe1f-5364-ab67-c597d8970b89}',
            creator: MediaCaptureVideoProfileMediaDescription.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfileMediaDescription?>?
      get supportedRecordMediaDescription {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<MediaCaptureVideoProfileMediaDescription?>.fromPtr(value,
            iterableIid: '{0895e56d-fe1f-5364-ab67-c597d8970b89}',
            creator: MediaCaptureVideoProfileMediaDescription.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfileMediaDescription?>?
      get supportedPhotoMediaDescription {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<MediaCaptureVideoProfileMediaDescription?>.fromPtr(value,
            iterableIid: '{0895e56d-fe1f-5364-ab67-c597d8970b89}',
            creator: MediaCaptureVideoProfileMediaDescription.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfile?> getConcurrency() {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<MediaCaptureVideoProfile?>.fromPtr(value,
            iterableIid: '{dbd49d71-e07b-5e11-824a-62ace8bdfc3e}',
            creator: MediaCaptureVideoProfile.fromPtr)
        .toList();
  }
}
