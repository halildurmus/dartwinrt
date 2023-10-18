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

import 'launcheruioptions.dart';

/// @nodoc
const IID_ILauncherOptions = '{bafa21d8-b071-4cd8-853e-341203e557d3}';

class ILauncherOptions extends IInspectable {
  ILauncherOptions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherOptionsVtbl>().ref;

  final _ILauncherOptionsVtbl _vtable;

  factory ILauncherOptions.from(IInspectable interface) =>
      interface.cast(ILauncherOptions.fromPtr, IID_ILauncherOptions);

  bool get treatAsUntrusted {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_TreatAsUntrusted.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set treatAsUntrusted(bool value) {
    final hr = _vtable.put_TreatAsUntrusted
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get displayApplicationPicker {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_DisplayApplicationPicker.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set displayApplicationPicker(bool value) {
    final hr = _vtable.put_DisplayApplicationPicker
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  LauncherUIOptions? get ui {
    final value = calloc<COMObject>();

    final hr = _vtable.get_UI.asFunction<
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

    return LauncherUIOptions.fromPtr(value);
  }

  String get preferredApplicationPackageFamilyName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_PreferredApplicationPackageFamilyName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set preferredApplicationPackageFamilyName(String value) {
    final hr = _vtable.put_PreferredApplicationPackageFamilyName
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get preferredApplicationDisplayName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_PreferredApplicationDisplayName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set preferredApplicationDisplayName(String value) {
    final hr = _vtable.put_PreferredApplicationDisplayName
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Uri? get fallbackUri {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FallbackUri.asFunction<
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

    return value.toWinRTUri().toDartUri();
  }

  set fallbackUri(Uri? value) {
    final hr = _vtable.put_FallbackUri.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toWinRTUri().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get contentType {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ContentType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set contentType(String value) {
    final hr = _vtable.put_ContentType
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILauncherOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_TreatAsUntrusted;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_TreatAsUntrusted;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_DisplayApplicationPicker;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_DisplayApplicationPicker;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_UI;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_PreferredApplicationPackageFamilyName;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_PreferredApplicationPackageFamilyName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_PreferredApplicationDisplayName;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_PreferredApplicationDisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FallbackUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_FallbackUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ContentType;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_ContentType;
}
