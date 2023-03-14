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
const IID_ISignedZeroOption = '{fd1cdd31-0a3c-49c4-a642-96a1564f4f30}';

/// {@category interface}
class ISignedZeroOption extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ISignedZeroOption.fromPtr(super.ptr);

  factory ISignedZeroOption.from(IInspectable interface) =>
      ISignedZeroOption.fromPtr(interface.toInterface(IID_ISignedZeroOption));

  bool get isZeroSigned {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set isZeroSigned(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Bool value)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl, bool value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
