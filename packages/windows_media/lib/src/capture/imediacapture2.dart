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
  // vtable begins at 6, is 7 entries long.
  IMediaCapture2.fromPtr(super.ptr);

  factory IMediaCapture2.from(IInspectable interface) =>
      interface.cast(IMediaCapture2.fromPtr, IID_IMediaCapture2);

  Future<LowLagMediaRecording?> prepareLowLagRecordToStorageFileAsync(
      MediaEncodingProfile? encodingProfile, IStorageFile? file) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            VTablePointer file,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    VTablePointer file,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, encodingProfile.lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        creator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagMediaRecording?> prepareLowLagRecordToStreamAsync(
      MediaEncodingProfile? encodingProfile, IRandomAccessStream? stream) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            VTablePointer stream,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    VTablePointer stream,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, encodingProfile.lpVtbl, stream.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        creator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagMediaRecording?> prepareLowLagRecordToCustomSinkAsync(
      MediaEncodingProfile? encodingProfile, IMediaExtension? customMediaSink) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            VTablePointer customMediaSink,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    VTablePointer customMediaSink,
                    Pointer<COMObject> operation)>()(ptr.ref.lpVtbl,
        encodingProfile.lpVtbl, customMediaSink.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagMediaRecording?>.fromPtr(
        operation,
        creator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagMediaRecording?> prepareLowLagRecordToCustomSinkIdAsync(
      MediaEncodingProfile? encodingProfile,
      String customSinkActivationId,
      IPropertySet? customSinkSettings) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            IntPtr customSinkActivationId,
                            VTablePointer customSinkSettings,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    int customSinkActivationId,
                    VTablePointer customSinkSettings,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl,
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
        creator: LowLagMediaRecording.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagPhotoCapture?> prepareLowLagPhotoCaptureAsync(
      ImageEncodingProperties? type) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer type,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer type,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, type.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagPhotoCapture?>.fromPtr(
        operation,
        creator: LowLagPhotoCapture.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LowLagPhotoSequenceCapture?> prepareLowLagPhotoSequenceCaptureAsync(
      ImageEncodingProperties? type) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer type,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer type,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, type.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LowLagPhotoSequenceCapture?>.fromPtr(
        operation,
        creator: LowLagPhotoSequenceCapture.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> setEncodingPropertiesAsync(
      MediaStreamType mediaStreamType,
      IMediaEncodingProperties? mediaEncodingProperties,
      MediaPropertySet? encoderProperties) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mediaStreamType,
                            VTablePointer mediaEncodingProperties,
                            VTablePointer encoderProperties,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int mediaStreamType,
                    VTablePointer mediaEncodingProperties,
                    VTablePointer encoderProperties,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl,
        mediaStreamType.value,
        mediaEncodingProperties.lpVtbl,
        encoderProperties.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}
