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

/// @nodoc
const IID_ISignificantDigitsOption = '{1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58}';

/// {@category interface}
class ISignificantDigitsOption extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ISignificantDigitsOption.fromPtr(super.ptr);

  factory ISignificantDigitsOption.from(IInspectable interface) =>
      ISignificantDigitsOption.fromPtr(
          interface.toInterface(IID_ISignificantDigitsOption));

  int get significantDigits {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set significantDigits(int value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int32 value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
