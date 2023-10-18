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
import 'package:windows_ui/windows_ui.dart';

/// @nodoc
const IID_IDevicePickerAppearance = '{e69a12c6-e627-4ed8-9b6c-460af445e56d}';

class IDevicePickerAppearance extends IInspectable {
  IDevicePickerAppearance.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDevicePickerAppearanceVtbl>().ref;

  final _IDevicePickerAppearanceVtbl _vtable;

  factory IDevicePickerAppearance.from(IInspectable interface) => interface
      .cast(IDevicePickerAppearance.fromPtr, IID_IDevicePickerAppearance);

  String get title {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Title.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set title(String value) {
    final hr = _vtable.put_Title
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Color get foregroundColor {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.get_ForegroundColor.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeColor> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set foregroundColor(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_ForegroundColor.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

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

  Color get accentColor {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.get_AccentColor.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeColor> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set accentColor(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_AccentColor.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Color get selectedForegroundColor {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.get_SelectedForegroundColor.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeColor> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set selectedForegroundColor(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_SelectedForegroundColor.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Color get selectedBackgroundColor {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.get_SelectedBackgroundColor.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeColor> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set selectedBackgroundColor(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_SelectedBackgroundColor.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Color get selectedAccentColor {
    final value = calloc<NativeColor>();

    try {
      final hr = _vtable.get_SelectedAccentColor.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeColor> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set selectedAccentColor(Color value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_SelectedAccentColor.asFunction<
            int Function(VTablePointer lpVtbl, NativeColor value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IDevicePickerAppearanceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Title;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Title;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> value)>>
      get_ForegroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeColor value)>>
      put_ForegroundColor;
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
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> value)>>
      get_AccentColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeColor value)>>
      put_AccentColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> value)>>
      get_SelectedForegroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeColor value)>>
      put_SelectedForegroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> value)>>
      get_SelectedBackgroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeColor value)>>
      put_SelectedBackgroundColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeColor> value)>>
      get_SelectedAccentColor;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeColor value)>>
      put_SelectedAccentColor;
}
