// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'jsonobject.dart';

/// @nodoc
const IID_IJsonObjectStatics = '{2289f159-54de-45d8-abcc-22603fa066a0}';

class IJsonObjectStatics extends IInspectable {
  IJsonObjectStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJsonObjectStaticsVtbl>().ref;

  final _IJsonObjectStaticsVtbl _vtable;

  factory IJsonObjectStatics.from(IInspectable interface) =>
      interface.cast(IJsonObjectStatics.fromPtr, IID_IJsonObjectStatics);

  JsonObject parse(String input) {
    final jsonObject = calloc<COMObject>();

    final hr = _vtable.Parse.asFunction<
            int Function(VTablePointer lpVtbl, int input,
                Pointer<COMObject> jsonObject)>()(
        lpVtbl, input.toHString(), jsonObject);

    if (FAILED(hr)) {
      free(jsonObject);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(jsonObject);
  }

  (bool, {JsonObject? result}) tryParse(String input) {
    final succeeded = calloc<Bool>();
    final result = calloc<COMObject>();

    try {
      final hr = _vtable.TryParse.asFunction<
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
        result: resultIsNull ? null : JsonObject.fromPtr(result)
      );
    } finally {
      free(succeeded);
    }
  }
}

final class _IJsonObjectStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input,
              Pointer<COMObject> jsonObject)>> Parse;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input,
              Pointer<COMObject> result, Pointer<Bool> succeeded)>> TryParse;
}
