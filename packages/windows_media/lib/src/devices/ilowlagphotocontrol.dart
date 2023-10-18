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

import '../mediaproperties/imediaencodingproperties.dart';
import '../mediaproperties/mediaratio.dart';
import '../mediaproperties/mediathumbnailformat.dart';

/// @nodoc
const IID_ILowLagPhotoControl = '{6d5c4dd0-fadf-415d-aee6-3baa529300c9}';

class ILowLagPhotoControl extends IInspectable {
  ILowLagPhotoControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILowLagPhotoControlVtbl>().ref;

  final _ILowLagPhotoControlVtbl _vtable;

  factory ILowLagPhotoControl.from(IInspectable interface) =>
      interface.cast(ILowLagPhotoControl.fromPtr, IID_ILowLagPhotoControl);

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

final class _ILowLagPhotoControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
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
