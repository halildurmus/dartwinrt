// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_IAttributedNetworkUsage = '{f769b039-eca2-45eb-ade1-b0368b756c49}';

class IAttributedNetworkUsage extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IAttributedNetworkUsage.fromPtr(super.ptr);

  factory IAttributedNetworkUsage.from(IInspectable interface) =>
      IAttributedNetworkUsage.fromPtr(
          interface.toInterface(IID_IAttributedNetworkUsage));

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

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

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

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get attributionId {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  String get attributionName {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  IRandomAccessStreamReference? get attributionThumbnail {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IRandomAccessStreamReference.fromPtr(value);
  }
}
