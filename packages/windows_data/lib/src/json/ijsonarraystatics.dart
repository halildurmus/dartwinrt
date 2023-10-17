// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'jsonarray.dart';

/// @nodoc
const IID_IJsonArrayStatics = '{db1434a9-e164-499f-93e2-8a8f49bb90ba}';

class IJsonArrayStatics extends IInspectable {
  IJsonArrayStatics.fromPtr(super.ptr);

  factory IJsonArrayStatics.from(IInspectable interface) =>
      interface.cast(IJsonArrayStatics.fromPtr, IID_IJsonArrayStatics);

  JsonArray parse(String input) {
    final jsonArray = calloc<COMObject>();

    final hr = vtable
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
        lpVtbl, input.toHString(), jsonArray);

    if (FAILED(hr)) {
      free(jsonArray);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(jsonArray);
  }

  (bool, {JsonArray? result}) tryParse(String input) {
    final succeeded = calloc<Bool>();
    final result = calloc<COMObject>();

    try {
      final hr = vtable
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
          lpVtbl, input.toHString(), result, succeeded);

      if (FAILED(hr)) {
        free(result);
        throwWindowsException(hr);
      }

      var resultIsNull = false;
      if (result.isNull) {
        free(result);
        resultIsNull = true;
      }

      return (
        succeeded.value,
        result: resultIsNull ? null : JsonArray.fromPtr(result)
      );
    } finally {
      free(succeeded);
    }
  }
}
