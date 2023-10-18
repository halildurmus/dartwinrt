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

import 'jsonvalue.dart';

/// @nodoc
const IID_IJsonValueStatics = '{5f6b544a-2f53-48e1-91a3-f78b50a6345c}';

class IJsonValueStatics extends IInspectable {
  IJsonValueStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJsonValueStaticsVtbl>().ref;

  final _IJsonValueStaticsVtbl _vtable;

  factory IJsonValueStatics.from(IInspectable interface) =>
      interface.cast(IJsonValueStatics.fromPtr, IID_IJsonValueStatics);

  JsonValue? parse(String input) {
    final jsonValue = calloc<COMObject>();

    final hr = _vtable.Parse.asFunction<
            int Function(VTablePointer lpVtbl, int input,
                Pointer<COMObject> jsonValue)>()(
        lpVtbl, input.toHString(), jsonValue);

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

  (bool, {JsonValue? result}) tryParse(String input) {
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
        result: resultIsNull ? null : JsonValue.fromPtr(result)
      );
    } finally {
      free(succeeded);
    }
  }

  JsonValue? createBooleanValue(bool input) {
    final jsonValue = calloc<COMObject>();

    final hr = _vtable.CreateBooleanValue.asFunction<
        int Function(VTablePointer lpVtbl, bool input,
            Pointer<COMObject> jsonValue)>()(lpVtbl, input, jsonValue);

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

    final hr = _vtable.CreateNumberValue.asFunction<
        int Function(VTablePointer lpVtbl, double input,
            Pointer<COMObject> jsonValue)>()(lpVtbl, input, jsonValue);

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

    final hr = _vtable.CreateStringValue.asFunction<
            int Function(VTablePointer lpVtbl, int input,
                Pointer<COMObject> jsonValue)>()(
        lpVtbl, input.toHString(), jsonValue);

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

final class _IJsonValueStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input,
              Pointer<COMObject> jsonValue)>> Parse;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input,
              Pointer<COMObject> result, Pointer<Bool> succeeded)>> TryParse;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Bool input,
              Pointer<COMObject> jsonValue)>> CreateBooleanValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double input,
              Pointer<COMObject> jsonValue)>> CreateNumberValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input,
              Pointer<COMObject> jsonValue)>> CreateStringValue;
}
