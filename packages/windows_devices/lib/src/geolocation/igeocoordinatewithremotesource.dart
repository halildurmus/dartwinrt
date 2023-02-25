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

/// @nodoc
const IID_IGeocoordinateWithRemoteSource =
    '{397cebd7-ee38-5f3b-8900-c4a7bc9cf953}';

/// {@category interface}
class IGeocoordinateWithRemoteSource extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeocoordinateWithRemoteSource.fromRawPointer(super.ptr);

  factory IGeocoordinateWithRemoteSource.from(IInspectable interface) =>
      IGeocoordinateWithRemoteSource.fromRawPointer(
          interface.toInterface(IID_IGeocoordinateWithRemoteSource));

  bool get isRemoteSource {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
