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
  IMediaCapture.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureVtbl>().ref;

  final _IMediaCaptureVtbl _vtable;

  factory IMediaCapture.from(IInspectable interface) =>
      interface.cast(IMediaCapture.fromPtr, IID_IMediaCapture);

  Future<void> initializeAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.InitializeAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> initializeWithSettingsAsync(
      MediaCaptureInitializationSettings? mediaCaptureInitializationSettings) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.InitializeWithSettingsAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer mediaCaptureInitializationSettings,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, mediaCaptureInitializationSettings.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startRecordToStorageFileAsync(
      MediaEncodingProfile? encodingProfile, IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartRecordToStorageFileAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer file, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, encodingProfile.lpVtbl, file.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startRecordToStreamAsync(
      MediaEncodingProfile? encodingProfile, IRandomAccessStream? stream) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartRecordToStreamAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer stream, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, encodingProfile.lpVtbl, stream.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> startRecordToCustomSinkAsync(
      MediaEncodingProfile? encodingProfile, IMediaExtension? customMediaSink) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartRecordToCustomSinkAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProfile,
                VTablePointer customMediaSink, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, encodingProfile.lpVtbl, customMediaSink.lpVtbl, asyncInfo);

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

    final hr = _vtable.StartRecordToCustomSinkIdAsync.asFunction<
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

  Future<void> stopRecordAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StopRecordAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> capturePhotoToStorageFileAsync(
      ImageEncodingProperties? type, IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.CapturePhotoToStorageFileAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer type,
                VTablePointer file, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, type.lpVtbl, file.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> capturePhotoToStreamAsync(
      ImageEncodingProperties? type, IRandomAccessStream? stream) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.CapturePhotoToStreamAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer type,
                VTablePointer stream, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, type.lpVtbl, stream.lpVtbl, asyncInfo);

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

    final hr = _vtable.AddEffectAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int mediaStreamType,
                int effectActivationID,
                VTablePointer effectSettings,
                Pointer<COMObject> asyncInfo)>()(lpVtbl, mediaStreamType.value,
        effectActivationID.toHString(), effectSettings.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> clearEffectsAsync(MediaStreamType mediaStreamType) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.ClearEffectsAsync.asFunction<
            int Function(VTablePointer lpVtbl, int mediaStreamType,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, mediaStreamType.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  void setEncoderProperty(
      MediaStreamType mediaStreamType, Guid propertyId, Object? propertyValue) {
    final propertyIdNativeStructPtr = propertyId.toNativeGUID();

    final hr = _vtable.SetEncoderProperty.asFunction<
            int Function(VTablePointer lpVtbl, int mediaStreamType,
                GUID propertyId, VTablePointer propertyValue)>()(
        lpVtbl,
        mediaStreamType.value,
        propertyIdNativeStructPtr.ref,
        propertyValue?.boxValue().lpVtbl ?? nullptr);

    free(propertyIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Object? getEncoderProperty(MediaStreamType mediaStreamType, Guid propertyId) {
    final propertyValue = calloc<COMObject>();
    final propertyIdNativeStructPtr = propertyId.toNativeGUID();

    final hr = _vtable.GetEncoderProperty.asFunction<
            int Function(VTablePointer lpVtbl, int mediaStreamType,
                GUID propertyId, Pointer<COMObject> propertyValue)>()(lpVtbl,
        mediaStreamType.value, propertyIdNativeStructPtr.ref, propertyValue);

    free(propertyIdNativeStructPtr);

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
      final hr = _vtable.add_Failed.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer errorEventHandler,
                  Pointer<IntPtr> eventCookie)>()(
          lpVtbl, errorEventHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_Failed(int eventCookie) {
    final hr = _vtable.remove_Failed
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_RecordLimitationExceeded(
      Pointer<COMObject> recordLimitationExceededEventHandler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_RecordLimitationExceeded.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer recordLimitationExceededEventHandler,
                  Pointer<IntPtr> eventCookie)>()(
          lpVtbl, recordLimitationExceededEventHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_RecordLimitationExceeded(int eventCookie) {
    final hr = _vtable.remove_RecordLimitationExceeded
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureSettings? get mediaCaptureSettings {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MediaCaptureSettings.asFunction<
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

    return MediaCaptureSettings.fromPtr(value);
  }

  AudioDeviceController? get audioDeviceController {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AudioDeviceController.asFunction<
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

    return AudioDeviceController.fromPtr(value);
  }

  VideoDeviceController? get videoDeviceController {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoDeviceController.asFunction<
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

    return VideoDeviceController.fromPtr(value);
  }

  void setPreviewMirroring(bool value) {
    final hr = _vtable.SetPreviewMirroring.asFunction<
        int Function(VTablePointer lpVtbl, bool value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool getPreviewMirroring() {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.GetPreviewMirroring.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  void setPreviewRotation(VideoRotation value) {
    final hr = _vtable.SetPreviewRotation.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  VideoRotation getPreviewRotation() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetPreviewRotation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoRotation.from(value.value);
    } finally {
      free(value);
    }
  }

  void setRecordRotation(VideoRotation value) {
    final hr = _vtable.SetRecordRotation.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  VideoRotation getRecordRotation() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetRecordRotation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoRotation.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      InitializeAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer mediaCaptureInitializationSettings,
              Pointer<COMObject> asyncInfo)>> InitializeWithSettingsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              VTablePointer file,
              Pointer<COMObject> asyncInfo)>> StartRecordToStorageFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              VTablePointer stream,
              Pointer<COMObject> asyncInfo)>> StartRecordToStreamAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              VTablePointer customMediaSink,
              Pointer<COMObject> asyncInfo)>> StartRecordToCustomSinkAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProfile,
              IntPtr customSinkActivationId,
              VTablePointer customSinkSettings,
              Pointer<COMObject> asyncInfo)>> StartRecordToCustomSinkIdAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      StopRecordAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer type,
              VTablePointer file,
              Pointer<COMObject> asyncInfo)>> CapturePhotoToStorageFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer type,
              VTablePointer stream,
              Pointer<COMObject> asyncInfo)>> CapturePhotoToStreamAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 mediaStreamType,
              IntPtr effectActivationID,
              VTablePointer effectSettings,
              Pointer<COMObject> asyncInfo)>> AddEffectAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 mediaStreamType,
              Pointer<COMObject> asyncInfo)>> ClearEffectsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 mediaStreamType,
              GUID propertyId,
              VTablePointer propertyValue)>> SetEncoderProperty;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 mediaStreamType,
              GUID propertyId,
              Pointer<COMObject> propertyValue)>> GetEncoderProperty;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer errorEventHandler,
              Pointer<IntPtr> eventCookie)>> add_Failed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr eventCookie)>>
      remove_Failed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer recordLimitationExceededEventHandler,
              Pointer<IntPtr> eventCookie)>> add_RecordLimitationExceeded;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr eventCookie)>>
      remove_RecordLimitationExceeded;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MediaCaptureSettings;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AudioDeviceController;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoDeviceController;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      SetPreviewMirroring;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      GetPreviewMirroring;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      SetPreviewRotation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetPreviewRotation;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      SetRecordRotation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetRecordRotation;
}
