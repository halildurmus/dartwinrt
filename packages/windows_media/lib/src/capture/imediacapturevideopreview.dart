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

import '../imediaextension.dart';
import '../mediaproperties/mediaencodingprofile.dart';

/// @nodoc
const IID_IMediaCaptureVideoPreview = '{27727073-549e-447f-a20a-4f03c479d8c0}';

class IMediaCaptureVideoPreview extends IInspectable {
  IMediaCaptureVideoPreview.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureVideoPreviewVtbl>().ref;

  final _IMediaCaptureVideoPreviewVtbl _vtable;

  factory IMediaCaptureVideoPreview.from(IInspectable interface) => interface
      .cast(IMediaCaptureVideoPreview.fromPtr, IID_IMediaCaptureVideoPreview);

  Future<void> startPreviewAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartPreviewAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startPreviewToCustomSinkAsync(
      MediaEncodingProfile? encodingProfile, IMediaExtension? customMediaSink) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartPreviewToCustomSinkAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer customMediaSink, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, encodingProfile.lpVtbl, customMediaSink.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startPreviewToCustomSinkIdAsync(
      MediaEncodingProfile? encodingProfile,
      String customSinkActivationId,
      IPropertySet? customSinkSettings) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartPreviewToCustomSinkIdAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer encodingProfile,
                int customSinkActivationId,
                VTablePointer customSinkSettings,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl,
        encodingProfile.lpVtbl,
        customSinkActivationId.toHString(),
        customSinkSettings.lpVtbl,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> stopPreviewAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StopPreviewAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}

final class _IMediaCaptureVideoPreviewVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      StartPreviewAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              VTablePointer customMediaSink,
              Pointer<COMObject> asyncInfo)>> StartPreviewToCustomSinkAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              IntPtr customSinkActivationId,
              VTablePointer customSinkSettings,
              Pointer<COMObject> asyncInfo)>> StartPreviewToCustomSinkIdAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      StopPreviewAsync;
}
