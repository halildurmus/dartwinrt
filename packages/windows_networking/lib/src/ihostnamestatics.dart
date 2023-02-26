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

/// @nodoc
const IID_IHostNameStatics = '{f68cd4bf-a388-4e8b-91ea-54dd6dd901c0}';

/// {@category interface}
class IHostNameStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IHostNameStatics.fromRawPointer(super.ptr);

  factory IHostNameStatics.from(IInspectable interface) =>
      IHostNameStatics.fromRawPointer(
          interface.toInterface(IID_IHostNameStatics));

  int compare(String value1, String value2) {
    final retValuePtr = calloc<Int32>();
    final value1HString = convertToHString(value1);
    final value2HString = convertToHString(value2);

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, IntPtr value1, IntPtr value2,
                              Pointer<Int32>)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL, int value1, int value2, Pointer<Int32>)>()(
          ptr.ref.lpVtbl, value1HString, value2HString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(value1HString);
      WindowsDeleteString(value2HString);
      free(retValuePtr);
    }
  }
}
