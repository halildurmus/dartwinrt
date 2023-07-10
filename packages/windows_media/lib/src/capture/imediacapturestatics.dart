// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'knownvideoprofile.dart';
import 'mediacapturevideoprofile.dart';

/// @nodoc
const IID_IMediaCaptureStatics = '{acef81ff-99ed-4645-965e-1925cfc63834}';

class IMediaCaptureStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IMediaCaptureStatics.fromPtr(super.ptr);

  factory IMediaCaptureStatics.from(IInspectable interface) =>
      IMediaCaptureStatics.fromPtr(
          interface.toInterface(IID_IMediaCaptureStatics));

  bool isVideoProfileSupported(String videoDeviceId) {
    final value = calloc<Bool>();

    try {
      final videoDeviceIdHString = videoDeviceId.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              IntPtr videoDeviceId, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int videoDeviceId,
                      Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, videoDeviceIdHString, value);

      WindowsDeleteString(videoDeviceIdHString);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<MediaCaptureVideoProfile?> findAllVideoProfiles(String videoDeviceId) {
    final value = calloc<COMObject>();
    final videoDeviceIdHString = videoDeviceId.toHString();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, IntPtr videoDeviceId,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int videoDeviceId,
                Pointer<COMObject>
                    value)>()(ptr.ref.lpVtbl, videoDeviceIdHString, value);

    WindowsDeleteString(videoDeviceIdHString);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<MediaCaptureVideoProfile?>.fromPtr(value,
            iterableIid: '{dbd49d71-e07b-5e11-824a-62ace8bdfc3e}',
            creator: MediaCaptureVideoProfile.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfile?> findConcurrentProfiles(String videoDeviceId) {
    final value = calloc<COMObject>();
    final videoDeviceIdHString = videoDeviceId.toHString();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, IntPtr videoDeviceId,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int videoDeviceId,
                Pointer<COMObject>
                    value)>()(ptr.ref.lpVtbl, videoDeviceIdHString, value);

    WindowsDeleteString(videoDeviceIdHString);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<MediaCaptureVideoProfile?>.fromPtr(value,
            iterableIid: '{dbd49d71-e07b-5e11-824a-62ace8bdfc3e}',
            creator: MediaCaptureVideoProfile.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfile?> findKnownVideoProfiles(
      String videoDeviceId, KnownVideoProfile name) {
    final value = calloc<COMObject>();
    final videoDeviceIdHString = videoDeviceId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr videoDeviceId,
                                Int32 name,
                                Pointer<COMObject> value)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int videoDeviceId,
                        int name, Pointer<COMObject> value)>()(
            ptr.ref.lpVtbl, videoDeviceIdHString, name.value, value);

    WindowsDeleteString(videoDeviceIdHString);

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
