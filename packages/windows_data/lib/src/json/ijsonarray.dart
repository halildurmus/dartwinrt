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

import 'ijsonvalue.dart';
import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvaluetype.dart';

/// @nodoc
const IID_IJsonArray = '{08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81}';

class IJsonArray extends IInspectable implements IJsonValue {
  IJsonArray.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJsonArrayVtbl>().ref;

  final _IJsonArrayVtbl _vtable;

  factory IJsonArray.from(IInspectable interface) =>
      interface.cast(IJsonArray.fromPtr, IID_IJsonArray);

  JsonObject getObjectAt(int index) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetObjectAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            Pointer<COMObject> returnValue)>()(lpVtbl, index, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }

  JsonArray getArrayAt(int index) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetArrayAt.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            Pointer<COMObject> returnValue)>()(lpVtbl, index, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  String getStringAt(int index) {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = _vtable.GetStringAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<IntPtr> returnValue)>()(lpVtbl, index, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  double getNumberAt(int index) {
    final returnValue = calloc<Double>();

    try {
      final hr = _vtable.GetNumberAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Double> returnValue)>()(lpVtbl, index, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getBooleanAt(int index) {
    final returnValue = calloc<Bool>();

    try {
      final hr = _vtable.GetBooleanAt.asFunction<
          int Function(VTablePointer lpVtbl, int index,
              Pointer<Bool> returnValue)>()(lpVtbl, index, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  late final _iJsonValue = IJsonValue.from(this);

  @override
  JsonValueType get valueType => _iJsonValue.valueType;

  @override
  String stringify() => _iJsonValue.stringify();

  @override
  String getString() => _iJsonValue.getString();

  @override
  double getNumber() => _iJsonValue.getNumber();

  @override
  bool getBoolean() => _iJsonValue.getBoolean();

  @override
  JsonArray getArray() => _iJsonValue.getArray();

  @override
  JsonObject getObject() => _iJsonValue.getObject();
}

final class _IJsonArrayVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<COMObject> returnValue)>> GetObjectAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<COMObject> returnValue)>> GetArrayAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<IntPtr> returnValue)>> GetStringAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Double> returnValue)>> GetNumberAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 index,
              Pointer<Bool> returnValue)>> GetBooleanAt;
}
