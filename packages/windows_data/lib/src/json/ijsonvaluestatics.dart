// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'jsonvalue.dart';

/// @nodoc
const IID_IJsonValueStatics = '{5f6b544a-2f53-48e1-91a3-f78b50a6345c}';

/// {@category interface}
class IJsonValueStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IJsonValueStatics.fromRawPointer(super.ptr);

  factory IJsonValueStatics.from(IInspectable interface) =>
      IJsonValueStatics.fromRawPointer(
          interface.toInterface(IID_IJsonValueStatics));

  JsonValue? parse(String input) {
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

    return JsonValue.fromRawPointer(retValuePtr);
  }

  bool tryParse(String input, JsonValue result) {
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

  JsonValue? createBooleanValue(bool input) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Bool input, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, bool input, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, input, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return JsonValue.fromRawPointer(retValuePtr);
  }

  JsonValue? createNumberValue(double input) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Double input, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, double input, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, input, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return JsonValue.fromRawPointer(retValuePtr);
  }

  JsonValue? createStringValue(String input) {
    final retValuePtr = calloc<COMObject>();
    final inputHString = convertToHString(input);

    final hr = ptr.ref.vtable
            .elementAt(10)
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

    return JsonValue.fromRawPointer(retValuePtr);
  }
}
