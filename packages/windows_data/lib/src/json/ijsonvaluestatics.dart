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

import 'jsonvalue.dart';

/// @nodoc
const IID_IJsonValueStatics = '{5f6b544a-2f53-48e1-91a3-f78b50a6345c}';

class IJsonValueStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IJsonValueStatics.fromPtr(super.ptr);

  factory IJsonValueStatics.from(IInspectable interface) =>
      IJsonValueStatics.fromPtr(interface.toInterface(IID_IJsonValueStatics));

  JsonValue? parse(String input) {
    final jsonValue = calloc<COMObject>();
    final inputHString = input.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr input,
                            Pointer<COMObject> jsonValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int input,
                    Pointer<COMObject> jsonValue)>()(
        ptr.ref.lpVtbl, inputHString, jsonValue);

    WindowsDeleteString(inputHString);

    if (FAILED(hr)) {
      free(jsonValue);
      throwWindowsException(hr);
    }

    if (jsonValue.isNull) {
      free(jsonValue);
      return null;
    }

    return JsonValue.fromPtr(jsonValue);
  }

  bool tryParse(String input, JsonValue result) {
    final succeeded = calloc<Bool>();

    try {
      final inputHString = input.toHString();

      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              IntPtr input,
                              Pointer<COMObject> result,
                              Pointer<Bool> succeeded)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int input,
                      Pointer<COMObject> result, Pointer<Bool> succeeded)>()(
          ptr.ref.lpVtbl, inputHString, result.ptr, succeeded);

      WindowsDeleteString(inputHString);

      if (FAILED(hr)) throwWindowsException(hr);

      return succeeded.value;
    } finally {
      free(succeeded);
    }
  }

  JsonValue? createBooleanValue(bool input) {
    final jsonValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool input,
                            Pointer<COMObject> jsonValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, bool input,
                    Pointer<COMObject> jsonValue)>()(
        ptr.ref.lpVtbl, input, jsonValue);

    if (FAILED(hr)) {
      free(jsonValue);
      throwWindowsException(hr);
    }

    if (jsonValue.isNull) {
      free(jsonValue);
      return null;
    }

    return JsonValue.fromPtr(jsonValue);
  }

  JsonValue? createNumberValue(double input) {
    final jsonValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Double input,
                            Pointer<COMObject> jsonValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, double input,
                    Pointer<COMObject> jsonValue)>()(
        ptr.ref.lpVtbl, input, jsonValue);

    if (FAILED(hr)) {
      free(jsonValue);
      throwWindowsException(hr);
    }

    if (jsonValue.isNull) {
      free(jsonValue);
      return null;
    }

    return JsonValue.fromPtr(jsonValue);
  }

  JsonValue? createStringValue(String input) {
    final jsonValue = calloc<COMObject>();
    final inputHString = input.toHString();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr input,
                            Pointer<COMObject> jsonValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int input,
                    Pointer<COMObject> jsonValue)>()(
        ptr.ref.lpVtbl, inputHString, jsonValue);

    WindowsDeleteString(inputHString);

    if (FAILED(hr)) {
      free(jsonValue);
      throwWindowsException(hr);
    }

    if (jsonValue.isNull) {
      free(jsonValue);
      return null;
    }

    return JsonValue.fromPtr(jsonValue);
  }
}
