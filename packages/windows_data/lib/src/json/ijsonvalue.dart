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

import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvaluetype.dart';

/// @nodoc
const IID_IJsonValue = '{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}';

class IJsonValue extends IInspectable {
  IJsonValue.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJsonValueVtbl>().ref;

  final _IJsonValueVtbl _vtable;

  factory IJsonValue.from(IInspectable interface) =>
      interface.cast(IJsonValue.fromPtr, IID_IJsonValue);

  JsonValueType get valueType {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ValueType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return JsonValueType.from(value.value);
    } finally {
      free(value);
    }
  }

  String stringify() {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = _vtable.Stringify.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> returnValue)>()(lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  String getString() {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = _vtable.GetString.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> returnValue)>()(lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  double getNumber() {
    final returnValue = calloc<Double>();

    try {
      final hr = _vtable.GetNumber.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Double> returnValue)>()(lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getBoolean() {
    final returnValue = calloc<Bool>();

    try {
      final hr = _vtable.GetBoolean.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> returnValue)>()(
          lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  JsonArray getArray() {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetArray.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> returnValue)>()(lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  JsonObject getObject() {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetObject.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> returnValue)>()(lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }
}

final class _IJsonValueVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ValueType;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> returnValue)>> Stringify;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> returnValue)>> GetString;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Double> returnValue)>> GetNumber;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> returnValue)>> GetBoolean;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> returnValue)>> GetArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> returnValue)>> GetObject;
}
