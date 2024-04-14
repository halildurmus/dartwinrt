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

import '../mediaproperties/imediaencodingproperties.dart';
import '../mediaproperties/mediaratio.dart';
import '../mediaproperties/mediathumbnailformat.dart';

/// @nodoc
const IID_ILowLagPhotoSequenceControl =
    '{3dcf909d-6d16-409c-bafe-b9a594c6fde6}';

class ILowLagPhotoSequenceControl extends IInspectable {
  ILowLagPhotoSequenceControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILowLagPhotoSequenceControlVtbl>().ref;

  final _ILowLagPhotoSequenceControlVtbl _vtable;

  factory ILowLagPhotoSequenceControl.from(IInspectable interface) =>
      interface.cast(
          ILowLagPhotoSequenceControl.fromPtr, IID_ILowLagPhotoSequenceControl);

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get maxPastPhotos {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MaxPastPhotos.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get maxPhotosPerSecond {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_MaxPhotosPerSecond.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get pastPhotoLimit {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_PastPhotoLimit.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set pastPhotoLimit(int value) {
    final hr = _vtable.put_PastPhotoLimit
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get photosPerSecondLimit {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_PhotosPerSecondLimit.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set photosPerSecondLimit(double value) {
    final hr = _vtable.put_PhotosPerSecondLimit
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaRatio? getHighestConcurrentFrameRate(
      IMediaEncodingProperties? captureProperties) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetHighestConcurrentFrameRate.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer captureProperties,
                Pointer<COMObject> value)>()(
        lpVtbl, captureProperties.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaRatio.fromPtr(value);
  }

  MediaRatio? getCurrentFrameRate() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetCurrentFrameRate.asFunction<
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

    return MediaRatio.fromPtr(value);
  }

  bool get thumbnailEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ThumbnailEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set thumbnailEnabled(bool value) {
    final hr = _vtable.put_ThumbnailEnabled
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaThumbnailFormat get thumbnailFormat {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ThumbnailFormat.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaThumbnailFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  set thumbnailFormat(MediaThumbnailFormat value) {
    final hr = _vtable.put_ThumbnailFormat
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get desiredThumbnailSize {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_DesiredThumbnailSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set desiredThumbnailSize(int value) {
    final hr = _vtable.put_DesiredThumbnailSize
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get hardwareAcceleratedThumbnailSupported {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_HardwareAcceleratedThumbnailSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _ILowLagPhotoSequenceControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MaxPastPhotos;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_MaxPhotosPerSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_PastPhotoLimit;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_PastPhotoLimit;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_PhotosPerSecondLimit;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      put_PhotosPerSecondLimit;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer captureProperties,
              Pointer<COMObject> value)>> GetHighestConcurrentFrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetCurrentFrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ThumbnailEnabled;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_ThumbnailEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ThumbnailFormat;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_ThumbnailFormat;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_DesiredThumbnailSize;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_DesiredThumbnailSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_HardwareAcceleratedThumbnailSupported;
}
