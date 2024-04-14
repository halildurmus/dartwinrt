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

import 'knownvideoprofile.dart';
import 'mediacapturevideoprofile.dart';

/// @nodoc
const IID_IMediaCaptureStatics = '{acef81ff-99ed-4645-965e-1925cfc63834}';

class IMediaCaptureStatics extends IInspectable {
  IMediaCaptureStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureStaticsVtbl>().ref;

  final _IMediaCaptureStaticsVtbl _vtable;

  factory IMediaCaptureStatics.from(IInspectable interface) =>
      interface.cast(IMediaCaptureStatics.fromPtr, IID_IMediaCaptureStatics);

  bool isVideoProfileSupported(String videoDeviceId) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.IsVideoProfileSupported.asFunction<
          int Function(VTablePointer lpVtbl, int videoDeviceId,
              Pointer<Bool> value)>()(lpVtbl, videoDeviceId.toHString(), value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<MediaCaptureVideoProfile?> findAllVideoProfiles(String videoDeviceId) {
    final value = calloc<COMObject>();

    final hr = _vtable.FindAllVideoProfiles.asFunction<
            int Function(VTablePointer lpVtbl, int videoDeviceId,
                Pointer<COMObject> value)>()(
        lpVtbl, videoDeviceId.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<MediaCaptureVideoProfile?>.fromPtr(value,
            iterableIid: '{dbd49d71-e07b-5e11-824a-62ace8bdfc3e}',
            tObjectCreator: MediaCaptureVideoProfile.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfile?> findConcurrentProfiles(String videoDeviceId) {
    final value = calloc<COMObject>();

    final hr = _vtable.FindConcurrentProfiles.asFunction<
            int Function(VTablePointer lpVtbl, int videoDeviceId,
                Pointer<COMObject> value)>()(
        lpVtbl, videoDeviceId.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<MediaCaptureVideoProfile?>.fromPtr(value,
            iterableIid: '{dbd49d71-e07b-5e11-824a-62ace8bdfc3e}',
            tObjectCreator: MediaCaptureVideoProfile.fromPtr)
        .toList();
  }

  List<MediaCaptureVideoProfile?> findKnownVideoProfiles(
      String videoDeviceId, KnownVideoProfile name) {
    final value = calloc<COMObject>();

    final hr = _vtable.FindKnownVideoProfiles.asFunction<
            int Function(VTablePointer lpVtbl, int videoDeviceId, int name,
                Pointer<COMObject> value)>()(
        lpVtbl, videoDeviceId.toHString(), name.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<MediaCaptureVideoProfile?>.fromPtr(value,
            iterableIid: '{dbd49d71-e07b-5e11-824a-62ace8bdfc3e}',
            tObjectCreator: MediaCaptureVideoProfile.fromPtr)
        .toList();
  }
}

final class _IMediaCaptureStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr videoDeviceId,
              Pointer<Bool> value)>> IsVideoProfileSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr videoDeviceId,
              Pointer<COMObject> value)>> FindAllVideoProfiles;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr videoDeviceId,
              Pointer<COMObject> value)>> FindConcurrentProfiles;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr videoDeviceId,
              Int32 name, Pointer<COMObject> value)>> FindKnownVideoProfiles;
}
