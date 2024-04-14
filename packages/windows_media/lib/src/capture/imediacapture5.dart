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
import 'package:windows_graphics/windows_graphics.dart';

import '../devices/mediacapturepausebehavior.dart';
import '../imediaextension.dart';
import 'frames/mediaframereader.dart';
import 'frames/mediaframesource.dart';
import 'mediacapturepauseresult.dart';
import 'mediacapturestopresult.dart';

/// @nodoc
const IID_IMediaCapture5 = '{da787c22-3a9b-4720-a71e-97900a316e5a}';

class IMediaCapture5 extends IInspectable {
  IMediaCapture5.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCapture5Vtbl>().ref;

  final _IMediaCapture5Vtbl _vtable;

  factory IMediaCapture5.from(IInspectable interface) =>
      interface.cast(IMediaCapture5.fromPtr, IID_IMediaCapture5);

  Future<void> removeEffectAsync(IMediaExtension? effect) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.RemoveEffectAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer effect,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, effect.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<MediaCapturePauseResult?> pauseRecordWithResultAsync(
      MediaCapturePauseBehavior behavior) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PauseRecordWithResultAsync.asFunction<
        int Function(VTablePointer lpVtbl, int behavior,
            Pointer<COMObject> operation)>()(lpVtbl, behavior.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaCapturePauseResult?>.fromPtr(
        operation,
        tResultObjectCreator: MediaCapturePauseResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaCaptureStopResult?> stopRecordWithResultAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.StopRecordWithResultAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaCaptureStopResult?>.fromPtr(
        operation,
        tResultObjectCreator: MediaCaptureStopResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Map<String, MediaFrameSource?>? get frameSources {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameSources.asFunction<
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

    return IMapView<String, MediaFrameSource?>.fromPtr(value,
            iterableIid: '{a038e80f-0b3d-5cd4-849d-13036e1f506e}',
            vObjectCreator: MediaFrameSource.fromPtr)
        .toMap();
  }

  Future<MediaFrameReader?> createFrameReaderAsync(
      MediaFrameSource? inputSource) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFrameReaderAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer inputSource,
            Pointer<COMObject> value)>()(lpVtbl, inputSource.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaFrameReader?>.fromPtr(value,
        tResultObjectCreator: MediaFrameReader.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaFrameReader?> createFrameReaderWithSubtypeAsync(
      MediaFrameSource? inputSource, String outputSubtype) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFrameReaderWithSubtypeAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer inputSource,
                int outputSubtype, Pointer<COMObject> value)>()(
        lpVtbl, inputSource.lpVtbl, outputSubtype.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaFrameReader?>.fromPtr(value,
        tResultObjectCreator: MediaFrameReader.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaFrameReader?> createFrameReaderWithSubtypeAndSizeAsync(
      MediaFrameSource? inputSource,
      String outputSubtype,
      BitmapSize outputSize) {
    final value = calloc<COMObject>();
    final outputSizeNativeStructPtr = outputSize.toNative();

    final hr = _vtable.CreateFrameReaderWithSubtypeAndSizeAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer inputSource,
                int outputSubtype,
                NativeBitmapSize outputSize,
                Pointer<COMObject> value)>()(lpVtbl, inputSource.lpVtbl,
        outputSubtype.toHString(), outputSizeNativeStructPtr.ref, value);

    free(outputSizeNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaFrameReader?>.fromPtr(value,
        tResultObjectCreator: MediaFrameReader.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IMediaCapture5Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer effect,
              Pointer<COMObject> asyncInfo)>> RemoveEffectAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 behavior,
              Pointer<COMObject> operation)>> PauseRecordWithResultAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      StopRecordWithResultAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameSources;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer inputSource,
              Pointer<COMObject> value)>> CreateFrameReaderAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer inputSource,
              IntPtr outputSubtype,
              Pointer<COMObject> value)>> CreateFrameReaderWithSubtypeAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer inputSource,
                  IntPtr outputSubtype,
                  NativeBitmapSize outputSize,
                  Pointer<COMObject> value)>>
      CreateFrameReaderWithSubtypeAndSizeAsync;
}
