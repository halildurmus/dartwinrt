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

import '../imediaextension.dart';
import '../mediaproperties/mediaencodingprofile.dart';

/// @nodoc
const IID_IMediaCaptureVideoPreview = '{27727073-549e-447f-a20a-4f03c479d8c0}';

class IMediaCaptureVideoPreview extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IMediaCaptureVideoPreview.fromPtr(super.ptr);

  factory IMediaCaptureVideoPreview.from(IInspectable interface) =>
      IMediaCaptureVideoPreview.fromPtr(
          interface.toInterface(IID_IMediaCaptureVideoPreview));

  Future<void> startPreviewAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncInfo)>()(ptr.ref.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startPreviewToCustomSinkAsync(
      MediaEncodingProfile? encodingProfile, IMediaExtension? customMediaSink) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            VTablePointer customMediaSink,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    VTablePointer customMediaSink,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        encodingProfile?.ptr.ref.lpVtbl ?? nullptr,
        customMediaSink?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

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
    final customSinkActivationIdHString = customSinkActivationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            IntPtr customSinkActivationId,
                            VTablePointer customSinkSettings,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    int customSinkActivationId,
                    VTablePointer customSinkSettings,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        encodingProfile?.ptr.ref.lpVtbl ?? nullptr,
        customSinkActivationIdHString,
        customSinkSettings?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    WindowsDeleteString(customSinkActivationIdHString);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> stopPreviewAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncInfo)>()(ptr.ref.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}
