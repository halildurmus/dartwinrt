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

import '../devices/camerastreamstate.dart';
import '../devices/mediacapturepausebehavior.dart';
import '../effects/iaudioeffectdefinition.dart';
import '../effects/ivideoeffectdefinition.dart';
import '../imediaextension.dart';
import '../mediaproperties/imageencodingproperties.dart';
import '../videoframe.dart';
import 'advancedphotocapture.dart';
import 'mediacapture.dart';
import 'mediacapturethermalstatus.dart';
import 'mediastreamtype.dart';

/// @nodoc
const IID_IMediaCapture4 = '{bacd6fd6-fb08-4947-aea2-ce14eff0ce13}';

class IMediaCapture4 extends IInspectable {
  // vtable begins at 6, is 13 entries long.
  IMediaCapture4.fromPtr(super.ptr);

  factory IMediaCapture4.from(IInspectable interface) =>
      interface.cast(IMediaCapture4.fromPtr, IID_IMediaCapture4);

  Future<IMediaExtension?> addAudioEffectAsync(
      IAudioEffectDefinition? definition) {
    final op = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        VTablePointer definition, Pointer<COMObject> op)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer definition,
                Pointer<COMObject> op)>()(lpVtbl, definition.lpVtbl, op);

    if (FAILED(hr)) {
      free(op);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IMediaExtension?>.fromPtr(op,
        creator: IMediaExtension.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IMediaExtension?> addVideoEffectAsync(
      IVideoEffectDefinition? definition, MediaStreamType mediaStreamType) {
    final op = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer definition,
                            Int32 mediaStreamType,
                            Pointer<COMObject> op)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer definition,
                    int mediaStreamType, Pointer<COMObject> op)>()(
        lpVtbl, definition.lpVtbl, mediaStreamType.value, op);

    if (FAILED(hr)) {
      free(op);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IMediaExtension?>.fromPtr(op,
        creator: IMediaExtension.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> pauseRecordAsync(MediaCapturePauseBehavior behavior) {
    final asyncInfo = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 behavior,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int behavior,
                    Pointer<COMObject> asyncInfo)>()(
        lpVtbl, behavior.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> resumeRecordAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncInfo)>()(lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  int add_CameraStreamStateChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          VTablePointer handler, Pointer<IntPtr> token)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_CameraStreamStateChanged(int token) {
    final hr =
        vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  CameraStreamState get cameraStreamState {
    final streamState = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> streamState)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> streamState)>()(lpVtbl, streamState);

      if (FAILED(hr)) throwWindowsException(hr);

      return CameraStreamState.from(streamState.value);
    } finally {
      free(streamState);
    }
  }

  Future<VideoFrame?> getPreviewFrameAsync() {
    final operation = calloc<COMObject>();

    final hr = vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<VideoFrame?>.fromPtr(operation,
        creator: VideoFrame.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<VideoFrame?> getPreviewFrameCopyAsync(VideoFrame? destination) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer destination,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer destination,
                    Pointer<COMObject> operation)>()(
        lpVtbl, destination.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<VideoFrame?>.fromPtr(operation,
        creator: VideoFrame.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  int add_ThermalStatusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          VTablePointer handler, Pointer<IntPtr> token)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_ThermalStatusChanged(int token) {
    final hr =
        vtable
                .elementAt(16)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureThermalStatus get thermalStatus {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCaptureThermalStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<AdvancedPhotoCapture?> prepareAdvancedPhotoCaptureAsync(
      ImageEncodingProperties? encodingProperties) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProperties,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProperties,
                    Pointer<COMObject> operation)>()(
        lpVtbl, encodingProperties.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<AdvancedPhotoCapture?>.fromPtr(
        operation,
        creator: AdvancedPhotoCapture.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
