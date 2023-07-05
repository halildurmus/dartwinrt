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

import 'jsonobject.dart';

/// @nodoc
const IID_IJsonObjectStatics = '{2289f159-54de-45d8-abcc-22603fa066a0}';

class IJsonObjectStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IJsonObjectStatics.fromPtr(super.ptr);

  factory IJsonObjectStatics.from(IInspectable interface) =>
      IJsonObjectStatics.fromPtr(interface.toInterface(IID_IJsonObjectStatics));

  JsonObject parse(String input) {
    final jsonObject = calloc<COMObject>();
    final inputHString = input.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr input,
                            Pointer<COMObject> jsonObject)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int input,
                    Pointer<COMObject> jsonObject)>()(
        ptr.ref.lpVtbl, inputHString, jsonObject);

    WindowsDeleteString(inputHString);

    if (FAILED(hr)) {
      free(jsonObject);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(jsonObject);
  }

  bool tryParse(String input, JsonObject result) {
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
