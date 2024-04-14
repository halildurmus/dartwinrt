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
import 'package:windows_ui/windows_ui.dart';

/// @nodoc
const IID_IPdfPageRenderOptions = '{3c98056f-b7cf-4c29-9a04-52d90267f425}';

class IPdfPageRenderOptions extends IInspectable {
  IPdfPageRenderOptions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPdfPageRenderOptionsVtbl>().ref;

  final _IPdfPageRenderOptionsVtbl _vtable;

  factory IPdfPageRenderOptions.from(IInspectable interface) =>
      interface.cast(IPdfPageRenderOptions.fromPtr, IID_IPdfPageRenderOptions);

  Rect get sourceRect {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_SourceRect.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set sourceRect(Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_SourceRect
            .asFunction<int Function(VTablePointer lpVtbl, NativeRect value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get destinationWidth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_DestinationWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set destinationWidth(int value) {
    final hr = _vtable.put_DestinationWidth
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get destinationHeight {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_DestinationHeight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set destinationHeight(int value) {
    final hr = _vtable.put_DestinationHeight
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Color get backgroundColor {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.get_BackgroundColor.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeColor> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set backgroundColor(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_BackgroundColor.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get isIgnoringHighContrast {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsIgnoringHighContrast.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set isIgnoringHighContrast(bool value) {
    final hr = _vtable.put_IsIgnoringHighContrast
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Guid get bitmapEncoderId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_BitmapEncoderId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  set bitmapEncoderId(Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = _vtable.put_BitmapEncoderId
            .asFunction<int Function(VTablePointer lpVtbl, GUID value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IPdfPageRenderOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_SourceRect;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeRect value)>>
      put_SourceRect;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_DestinationWidth;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_DestinationWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_DestinationHeight;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_DestinationHeight;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> value)>>
      get_BackgroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeColor value)>>
      put_BackgroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsIgnoringHighContrast;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IsIgnoringHighContrast;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_BitmapEncoderId;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, GUID value)>>
      put_BitmapEncoderId;
}
