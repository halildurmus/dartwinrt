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

import 'jsonarray.dart';

/// @nodoc
const IID_IJsonArrayStatics = '{db1434a9-e164-499f-93e2-8a8f49bb90ba}';

class IJsonArrayStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IJsonArrayStatics.fromPtr(super.ptr);

  factory IJsonArrayStatics.from(IInspectable interface) =>
      IJsonArrayStatics.fromPtr(interface.toInterface(IID_IJsonArrayStatics));

  JsonArray parse(String input) {
    final jsonArray = calloc<COMObject>();
    final inputHString = input.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr input,
                            Pointer<COMObject> jsonArray)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int input,
                    Pointer<COMObject> jsonArray)>()(
        ptr.ref.lpVtbl, inputHString, jsonArray);

    WindowsDeleteString(inputHString);

    if (FAILED(hr)) {
      free(jsonArray);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(jsonArray);
  }

  bool tryParse(String input, JsonArray result) {
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
}
