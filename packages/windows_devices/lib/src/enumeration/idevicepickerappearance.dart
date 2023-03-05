// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_ui/windows_ui.dart';

/// @nodoc
const IID_IDevicePickerAppearance = '{e69a12c6-e627-4ed8-9b6c-460af445e56d}';

/// {@category interface}
class IDevicePickerAppearance extends IInspectable {
  // vtable begins at 6, is 14 entries long.
  IDevicePickerAppearance.fromRawPointer(super.ptr);

  factory IDevicePickerAppearance.from(IInspectable interface) =>
      IDevicePickerAppearance.fromRawPointer(
          interface.toInterface(IID_IDevicePickerAppearance));

  String get title {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set title(String value) {
    final hString = value.toHString();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr value)>>>()
              .value
              .asFunction<int Function(LPVTBL lpVtbl, int value)>()(
          ptr.ref.lpVtbl, hString);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hString);
    }
  }

  Color get foregroundColor {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  set foregroundColor(Color value) {
    final nativeStructPtr = value.toNative();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl, NativeColor value)>>>()
                  .value
                  .asFunction<int Function(LPVTBL lpVtbl, NativeColor value)>()(
              ptr.ref.lpVtbl, nativeStructPtr.ref);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(nativeStructPtr);
    }
  }

  Color get backgroundColor {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  set backgroundColor(Color value) {
    final nativeStructPtr = value.toNative();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(11)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl, NativeColor value)>>>()
                  .value
                  .asFunction<int Function(LPVTBL lpVtbl, NativeColor value)>()(
              ptr.ref.lpVtbl, nativeStructPtr.ref);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(nativeStructPtr);
    }
  }

  Color get accentColor {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  set accentColor(Color value) {
    final nativeStructPtr = value.toNative();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(13)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl, NativeColor value)>>>()
                  .value
                  .asFunction<int Function(LPVTBL lpVtbl, NativeColor value)>()(
              ptr.ref.lpVtbl, nativeStructPtr.ref);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(nativeStructPtr);
    }
  }

  Color get selectedForegroundColor {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  set selectedForegroundColor(Color value) {
    final nativeStructPtr = value.toNative();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(15)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl, NativeColor value)>>>()
                  .value
                  .asFunction<int Function(LPVTBL lpVtbl, NativeColor value)>()(
              ptr.ref.lpVtbl, nativeStructPtr.ref);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(nativeStructPtr);
    }
  }

  Color get selectedBackgroundColor {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  set selectedBackgroundColor(Color value) {
    final nativeStructPtr = value.toNative();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(17)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl, NativeColor value)>>>()
                  .value
                  .asFunction<int Function(LPVTBL lpVtbl, NativeColor value)>()(
              ptr.ref.lpVtbl, nativeStructPtr.ref);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(nativeStructPtr);
    }
  }

  Color get selectedAccentColor {
    final retValuePtr = calloc<NativeColor>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(18)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl,
                              Pointer<NativeColor> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, Pointer<NativeColor> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  set selectedAccentColor(Color value) {
    final nativeStructPtr = value.toNative();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(19)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl, NativeColor value)>>>()
                  .value
                  .asFunction<int Function(LPVTBL lpVtbl, NativeColor value)>()(
              ptr.ref.lpVtbl, nativeStructPtr.ref);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(nativeStructPtr);
    }
  }
}
