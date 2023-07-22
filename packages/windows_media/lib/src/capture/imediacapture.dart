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
import 'package:windows_storage/windows_storage.dart';

import '../devices/audiodevicecontroller.dart';
import '../devices/videodevicecontroller.dart';
import '../imediaextension.dart';
import '../mediaproperties/imageencodingproperties.dart';
import '../mediaproperties/mediaencodingprofile.dart';
import 'mediacaptureinitializationsettings.dart';
import 'mediacapturesettings.dart';
import 'mediastreamtype.dart';
import 'videorotation.dart';

/// @nodoc
const IID_IMediaCapture = '{c61afbb4-fb10-4a34-ac18-ca80d9c8e7ee}';

class IMediaCapture extends IInspectable {
  // vtable begins at 6, is 26 entries long.
  IMediaCapture.fromPtr(super.ptr);

  factory IMediaCapture.from(IInspectable interface) =>
      IMediaCapture.fromPtr(interface.toInterface(IID_IMediaCapture));

  Future<void> initializeAsync() {
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

  Future<void> initializeWithSettingsAsync(
      MediaCaptureInitializationSettings? mediaCaptureInitializationSettings) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer mediaCaptureInitializationSettings,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer mediaCaptureInitializationSettings,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        mediaCaptureInitializationSettings?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startRecordToStorageFileAsync(
      MediaEncodingProfile? encodingProfile, IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            VTablePointer file,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    VTablePointer file,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        encodingProfile?.ptr.ref.lpVtbl ?? nullptr,
        file?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startRecordToStreamAsync(
      MediaEncodingProfile? encodingProfile, IRandomAccessStream? stream) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProfile,
                            VTablePointer stream,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProfile,
                    VTablePointer stream,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        encodingProfile?.ptr.ref.lpVtbl ?? nullptr,
        stream?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startRecordToCustomSinkAsync(
      MediaEncodingProfile? encodingProfile, IMediaExtension? customMediaSink) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
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

  Future<void> startRecordToCustomSinkIdAsync(
      MediaEncodingProfile? encodingProfile,
      String customSinkActivationId,
      IPropertySet? customSinkSettings) {
    final asyncInfo = calloc<COMObject>();
    final customSinkActivationIdHString = customSinkActivationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
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

  Future<void> stopRecordAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
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

  Future<void> capturePhotoToStorageFileAsync(
      ImageEncodingProperties? type, IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer type,
                                VTablePointer file,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer type,
                        VTablePointer file, Pointer<COMObject> asyncInfo)>()(
            ptr.ref.lpVtbl,
            type?.ptr.ref.lpVtbl ?? nullptr,
            file?.ptr.ref.lpVtbl ?? nullptr,
            asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> capturePhotoToStreamAsync(
      ImageEncodingProperties? type, IRandomAccessStream? stream) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(14)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer type,
                                VTablePointer stream,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer type,
                        VTablePointer stream, Pointer<COMObject> asyncInfo)>()(
            ptr.ref.lpVtbl,
            type?.ptr.ref.lpVtbl ?? nullptr,
            stream?.ptr.ref.lpVtbl ?? nullptr,
            asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  @Deprecated(
      "AddEffectAsync might not be available in future versions of Windows. Starting with Windows Threshold, use AddAudioEffectAsync and AddVideoEffectAsync instead")
  Future<void> addEffectAsync(MediaStreamType mediaStreamType,
      String effectActivationID, IPropertySet? effectSettings) {
    final asyncInfo = calloc<COMObject>();
    final effectActivationIDHString = effectActivationID.toHString();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mediaStreamType,
                            IntPtr effectActivationID,
                            VTablePointer effectSettings,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int mediaStreamType,
                    int effectActivationID,
                    VTablePointer effectSettings,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        mediaStreamType.value,
        effectActivationIDHString,
        effectSettings?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    WindowsDeleteString(effectActivationIDHString);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> clearEffectsAsync(MediaStreamType mediaStreamType) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mediaStreamType,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mediaStreamType,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl, mediaStreamType.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  void setEncoderProperty(
      MediaStreamType mediaStreamType, Guid propertyId, Object? propertyValue) {
    final propertyIdNativeStructPtr = propertyId.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mediaStreamType,
                            GUID propertyId,
                            VTablePointer propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mediaStreamType,
                    GUID propertyId, VTablePointer propertyValue)>()(
        ptr.ref.lpVtbl,
        mediaStreamType.value,
        propertyIdNativeStructPtr.ref,
        propertyValue?.intoBox().ptr.ref.lpVtbl ?? nullptr);

    propertyIdNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Object? getEncoderProperty(MediaStreamType mediaStreamType, Guid propertyId) {
    final propertyValue = calloc<COMObject>();
    final propertyIdNativeStructPtr = propertyId.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mediaStreamType,
                            GUID propertyId,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mediaStreamType,
                    GUID propertyId, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl,
        mediaStreamType.value,
        propertyIdNativeStructPtr.ref,
        propertyValue);

    propertyIdNativeStructPtr.free();

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    if (propertyValue.isNull) {
      free(propertyValue);
      return null;
    }

    return IPropertyValue.fromPtr(propertyValue).value;
  }

  int add_Failed(Pointer<COMObject> errorEventHandler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer errorEventHandler,
                              Pointer<IntPtr> eventCookie)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      VTablePointer errorEventHandler,
                      Pointer<IntPtr> eventCookie)>()(
          ptr.ref.lpVtbl, errorEventHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_Failed(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_RecordLimitationExceeded(
      Pointer<COMObject> recordLimitationExceededEventHandler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(21)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer
                                      recordLimitationExceededEventHandler,
                                  Pointer<IntPtr> eventCookie)>>>()
                  .value
                  .asFunction<
                      int Function(
                          VTablePointer lpVtbl,
                          VTablePointer recordLimitationExceededEventHandler,
                          Pointer<IntPtr> eventCookie)>()(ptr.ref.lpVtbl,
              recordLimitationExceededEventHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_RecordLimitationExceeded(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureSettings? get mediaCaptureSettings {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(23)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaCaptureSettings.fromPtr(value);
  }

  AudioDeviceController? get audioDeviceController {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(24)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return AudioDeviceController.fromPtr(value);
  }

  VideoDeviceController? get videoDeviceController {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(25)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoDeviceController.fromPtr(value);
  }

  void setPreviewMirroring(bool value) {
    final hr = ptr.ref.vtable
            .elementAt(26)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool getPreviewMirroring() {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(27)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  void setPreviewRotation(VideoRotation value) {
    final hr = ptr.ref.vtable
            .elementAt(28)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  VideoRotation getPreviewRotation() {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(29)
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

      return VideoRotation.from(value.value);
    } finally {
      free(value);
    }
  }

  void setRecordRotation(VideoRotation value) {
    final hr = ptr.ref.vtable
            .elementAt(30)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  VideoRotation getRecordRotation() {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(31)
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

      return VideoRotation.from(value.value);
    } finally {
      free(value);
    }
  }
}
