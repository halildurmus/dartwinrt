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
import 'package:windows_storage/windows_storage.dart';

import '../imediaextension.dart';
import '../mediaproperties/imageencodingproperties.dart';
import '../mediaproperties/imediaencodingproperties.dart';
import '../mediaproperties/mediaencodingprofile.dart';
import '../mediaproperties/mediapropertyset.dart';
import 'lowlagmediarecording.dart';
import 'lowlagphotocapture.dart';
import 'lowlagphotosequencecapture.dart';
import 'mediastreamtype.dart';

/// @nodoc
const IID_IMediaCapture2 = '{9cc68260-7da1-4043-b652-21b8878daff9}';

class IMediaCapture2 extends IInspectable {
  IMediaCapture2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCapture2Vtbl>().ref;

  final _IMediaCapture2Vtbl _vtable;

  factory IMediaCapture2.from(IInspectable interface) =>
      interface.cast(IMediaCapture2.fromPtr, IID_IMediaCapture2);

  Future<LowLagMediaRecording?> prepareLowLagRecordToStorageFileAsync(
      MediaEncodingProfile? encodingProfile, IStorageFile? file) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareLowLagRecordToStorageFileAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer file, Pointer<COMObject> operation)>()(
        lpVtbl, encodingProfile.lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        tResultObjectCreator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagMediaRecording?> prepareLowLagRecordToStreamAsync(
      MediaEncodingProfile? encodingProfile, IRandomAccessStream? stream) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareLowLagRecordToStreamAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer stream, Pointer<COMObject> operation)>()(
        lpVtbl, encodingProfile.lpVtbl, stream.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        tResultObjectCreator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagMediaRecording?> prepareLowLagRecordToCustomSinkAsync(
      MediaEncodingProfile? encodingProfile, IMediaExtension? customMediaSink) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareLowLagRecordToCustomSinkAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer customMediaSink, Pointer<COMObject> operation)>()(
        lpVtbl, encodingProfile.lpVtbl, customMediaSink.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        tResultObjectCreator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagMediaRecording?> prepareLowLagRecordToCustomSinkIdAsync(
      MediaEncodingProfile? encodingProfile,
      String customSinkActivationId,
      IPropertySet? customSinkSettings) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareLowLagRecordToCustomSinkIdAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer encodingProfile,
                int customSinkActivationId,
                VTablePointer customSinkSettings,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        encodingProfile.lpVtbl,
        customSinkActivationId.toHString(),
        customSinkSettings.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        tResultObjectCreator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagPhotoCapture?> prepareLowLagPhotoCaptureAsync(
      ImageEncodingProperties? type) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareLowLagPhotoCaptureAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer type,
            Pointer<COMObject> operation)>()(lpVtbl, type.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagPhotoCapture?>.fromPtr(
        operation,
        tResultObjectCreator: LowLagPhotoCapture.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagPhotoSequenceCapture?> prepareLowLagPhotoSequenceCaptureAsync(
      ImageEncodingProperties? type) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareLowLagPhotoSequenceCaptureAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer type,
            Pointer<COMObject> operation)>()(lpVtbl, type.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagPhotoSequenceCapture?>.fromPtr(
        operation,
        tResultObjectCreator: LowLagPhotoSequenceCapture.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> setEncodingPropertiesAsync(
      MediaStreamType mediaStreamType,
      IMediaEncodingProperties? mediaEncodingProperties,
      MediaPropertySet? encoderProperties) {
    final operation = calloc<COMObject>();

    final hr = _vtable.SetEncodingPropertiesAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int mediaStreamType,
                VTablePointer mediaEncodingProperties,
                VTablePointer encoderProperties,
                Pointer<COMObject> operation)>()(lpVtbl, mediaStreamType.value,
        mediaEncodingProperties.lpVtbl, encoderProperties.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IMediaCapture2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer encodingProfile,
                  VTablePointer file,
                  Pointer<COMObject> operation)>>
      PrepareLowLagRecordToStorageFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              VTablePointer stream,
              Pointer<COMObject> operation)>> PrepareLowLagRecordToStreamAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer encodingProfile,
                  VTablePointer customMediaSink,
                  Pointer<COMObject> operation)>>
      PrepareLowLagRecordToCustomSinkAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer encodingProfile,
                  IntPtr customSinkActivationId,
                  VTablePointer customSinkSettings,
                  Pointer<COMObject> operation)>>
      PrepareLowLagRecordToCustomSinkIdAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer type,
              Pointer<COMObject> operation)>> PrepareLowLagPhotoCaptureAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer type,
                  Pointer<COMObject> operation)>>
      PrepareLowLagPhotoSequenceCaptureAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 mediaStreamType,
              VTablePointer mediaEncodingProperties,
              VTablePointer encoderProperties,
              Pointer<COMObject> operation)>> SetEncodingPropertiesAsync;
}
