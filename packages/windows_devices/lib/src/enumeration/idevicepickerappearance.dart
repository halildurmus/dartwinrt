// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

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
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set title(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr value)>>>()
          .value
          .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  Color get foregroundColor {
    final retValuePtr = calloc<Color>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Color>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Color>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  set foregroundColor(Color value) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Color value)>>>()
        .value
        .asFunction<int Function(LPVTBL, Color value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Color get backgroundColor {
    final retValuePtr = calloc<Color>();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Color>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Color>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  set backgroundColor(Color value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Color value)>>>()
        .value
        .asFunction<int Function(LPVTBL, Color value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Color get accentColor {
    final retValuePtr = calloc<Color>();

    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Color>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Color>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  set accentColor(Color value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Color value)>>>()
        .value
        .asFunction<int Function(LPVTBL, Color value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Color get selectedForegroundColor {
    final retValuePtr = calloc<Color>();

    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Color>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Color>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  set selectedForegroundColor(Color value) {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Color value)>>>()
        .value
        .asFunction<int Function(LPVTBL, Color value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Color get selectedBackgroundColor {
    final retValuePtr = calloc<Color>();

    final hr = ptr.ref.vtable
        .elementAt(16)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Color>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Color>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  set selectedBackgroundColor(Color value) {
    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Color value)>>>()
        .value
        .asFunction<int Function(LPVTBL, Color value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Color get selectedAccentColor {
    final retValuePtr = calloc<Color>();

    final hr = ptr.ref.vtable
        .elementAt(18)
        .cast<
            Pointer<NativeFunction<HRESULT Function(LPVTBL, Pointer<Color>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<Color>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  set selectedAccentColor(Color value) {
    final hr = ptr.ref.vtable
        .elementAt(19)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Color value)>>>()
        .value
        .asFunction<int Function(LPVTBL, Color value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
