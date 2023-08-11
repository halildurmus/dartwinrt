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
const IID_IDataUsage = '{c1431dd3-b146-4d39-b959-0c69b096c512}';

@Deprecated(
    "IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
class IDataUsage extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IDataUsage.fromPtr(super.ptr);

  factory IDataUsage.from(IInspectable interface) =>
      interface.cast(IDataUsage.fromPtr, IID_IDataUsage);

  @Deprecated(
      "IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
  int get bytesSent {
    final value = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  @Deprecated(
      "IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
  int get bytesReceived {
    final value = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}
