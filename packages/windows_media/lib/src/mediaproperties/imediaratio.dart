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

/// @nodoc
const IID_IMediaRatio = '{d2d0fee5-8929-401d-ac78-7d357e378163}';

class IMediaRatio extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IMediaRatio.fromPtr(super.ptr);

  factory IMediaRatio.from(IInspectable interface) =>
      interface.cast(IMediaRatio.fromPtr, IID_IMediaRatio);

  set numerator(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get numerator {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set denominator(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get denominator {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}
