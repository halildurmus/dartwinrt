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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../structs.g.dart';
import 'enums.g.dart';
import 'uisettings.dart';

/// @nodoc
const IID_IUISettings3 = '{03021be4-5254-4781-8194-5168f7d06d7b}';

/// {@category Interface}
/// {@category winrt}
class IUISettings3 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IUISettings3.fromRawPointer(super.ptr);

  factory IUISettings3.from(IInspectable interface) =>
      IUISettings3.fromRawPointer(interface.toInterface(IID_IUISettings3));

  Color getColorValue(UIColorType desiredColor) {
    final retValuePtr = calloc<Color>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              Pointer, Int32 desiredColor, Pointer<Color>)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int desiredColor, Pointer<Color>)>()(
          ptr.ref.lpVtbl, desiredColor.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {}
  }

  int add_ColorValuesChanged(
      Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_ColorValuesChanged(int cookie) {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr cookie)>>>()
        .value
        .asFunction<
            int Function(Pointer, int cookie)>()(ptr.ref.lpVtbl, cookie);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
