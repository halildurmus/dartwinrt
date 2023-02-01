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

import 'jsonarray.dart';

/// @nodoc
const IID_IJsonArrayStatics = '{db1434a9-e164-499f-93e2-8a8f49bb90ba}';

/// {@category interface}
class IJsonArrayStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IJsonArrayStatics.fromRawPointer(super.ptr);

  factory IJsonArrayStatics.from(IInspectable interface) =>
      IJsonArrayStatics.fromRawPointer(
          interface.toInterface(IID_IJsonArrayStatics));

  JsonArray? parse(String input) {
    final retValuePtr = calloc<COMObject>();
    final inputHString = convertToHString(input);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr input, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int input, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, inputHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(inputHString);

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return JsonArray.fromRawPointer(retValuePtr);
  }

  bool tryParse(String input, JsonArray result) {
    final retValuePtr = calloc<Bool>();
    final inputHString = convertToHString(input);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(Pointer, IntPtr input,
                              Pointer<COMObject> result, Pointer<Bool>)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int input, Pointer<COMObject> result,
                      Pointer<Bool>)>()(
          ptr.ref.lpVtbl, inputHString, result.ptr, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(inputHString);

      free(retValuePtr);
    }
  }
}
