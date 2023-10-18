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

import 'imediaencodingproperties.dart';
import 'mediapropertyset.dart';
import 'mediaratio.dart';

/// @nodoc
const IID_IVideoEncodingProperties = '{76ee6c9a-37c2-4f2a-880a-1282bbb4373d}';

class IVideoEncodingProperties extends IInspectable
    implements IMediaEncodingProperties {
  IVideoEncodingProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoEncodingPropertiesVtbl>().ref;

  final _IVideoEncodingPropertiesVtbl _vtable;

  factory IVideoEncodingProperties.from(IInspectable interface) => interface
      .cast(IVideoEncodingProperties.fromPtr, IID_IVideoEncodingProperties);

  set bitrate(int value) {
    final hr = _vtable.put_Bitrate
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get bitrate {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Bitrate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set width(int value) {
    final hr = _vtable.put_Width
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get width {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Width.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set height(int value) {
    final hr = _vtable.put_Height
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get height {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Height.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  MediaRatio? get frameRate {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameRate.asFunction<
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

  MediaRatio? get pixelAspectRatio {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PixelAspectRatio.asFunction<
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

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;
}

final class _IVideoEncodingPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Bitrate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Bitrate;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Width;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Width;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Height;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Height;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PixelAspectRatio;
}
