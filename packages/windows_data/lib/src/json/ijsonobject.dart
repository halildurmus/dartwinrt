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
import 'jsonvalue.dart';
import 'jsonvaluetype.dart';

/// @nodoc
const IID_IJsonObject = '{064e24dd-29c2-4f83-9ac1-9ee11578beb3}';

class IJsonObject extends IInspectable implements IJsonValue {
  IJsonObject.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJsonObjectVtbl>().ref;

  final _IJsonObjectVtbl _vtable;

  factory IJsonObject.from(IInspectable interface) =>
      interface.cast(IJsonObject.fromPtr, IID_IJsonObject);

  JsonValue? getNamedValue(String name) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetNamedValue.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                Pointer<COMObject> returnValue)>()(
        lpVtbl, name.toHString(), returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    if (returnValue.isNull) {
      free(returnValue);
      return null;
    }

    return JsonValue.fromPtr(returnValue);
  }

  void setNamedValue(String name, IJsonValue? value) {
    final hr = _vtable.SetNamedValue.asFunction<
        int Function(VTablePointer lpVtbl, int name,
            VTablePointer value)>()(lpVtbl, name.toHString(), value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  JsonObject getNamedObject(String name) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetNamedObject.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                Pointer<COMObject> returnValue)>()(
        lpVtbl, name.toHString(), returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }

  JsonArray getNamedArray(String name) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetNamedArray.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                Pointer<COMObject> returnValue)>()(
        lpVtbl, name.toHString(), returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  String getNamedString(String name) {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = _vtable.GetNamedString.asFunction<
              int Function(VTablePointer lpVtbl, int name,
                  Pointer<IntPtr> returnValue)>()(
          lpVtbl, name.toHString(), returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  double getNamedNumber(String name) {
    final returnValue = calloc<Double>();

    try {
      final hr = _vtable.GetNamedNumber.asFunction<
              int Function(VTablePointer lpVtbl, int name,
                  Pointer<Double> returnValue)>()(
          lpVtbl, name.toHString(), returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getNamedBoolean(String name) {
    final returnValue = calloc<Bool>();

    try {
      final hr = _vtable.GetNamedBoolean.asFunction<
              int Function(
                  VTablePointer lpVtbl, int name, Pointer<Bool> returnValue)>()(
          lpVtbl, name.toHString(), returnValue);

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

final class _IJsonObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<COMObject> returnValue)>> GetNamedValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr name, VTablePointer value)>>
      SetNamedValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<COMObject> returnValue)>> GetNamedObject;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<COMObject> returnValue)>> GetNamedArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<IntPtr> returnValue)>> GetNamedString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<Double> returnValue)>> GetNamedNumber;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<Bool> returnValue)>> GetNamedBoolean;
}
