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

import 'ijsonobject.dart';
import 'ijsonvalue.dart';
import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvalue.dart';
import 'jsonvaluetype.dart';

/// @nodoc
const IID_IJsonObjectWithDefaultValues =
    '{d960d2a2-b7f0-4f00-8e44-d82cf415ea13}';

class IJsonObjectWithDefaultValues extends IInspectable
    implements IJsonObject, IJsonValue {
  IJsonObjectWithDefaultValues.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IJsonObjectWithDefaultValuesVtbl>().ref;

  final _IJsonObjectWithDefaultValuesVtbl _vtable;

  factory IJsonObjectWithDefaultValues.from(IInspectable interface) =>
      interface.cast(IJsonObjectWithDefaultValues.fromPtr,
          IID_IJsonObjectWithDefaultValues);

  JsonValue? getNamedValueOrDefault(String name, JsonValue? defaultValue) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetNamedValueOrDefault.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                VTablePointer defaultValue, Pointer<COMObject> returnValue)>()(
        lpVtbl, name.toHString(), defaultValue.lpVtbl, returnValue);

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

  JsonObject getNamedObjectOrDefault(String name, JsonObject? defaultValue) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetNamedObjectOrDefault.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                VTablePointer defaultValue, Pointer<COMObject> returnValue)>()(
        lpVtbl, name.toHString(), defaultValue.lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }

  String getNamedStringOrDefault(String name, String defaultValue) {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = _vtable.GetNamedStringOrDefault.asFunction<
              int Function(VTablePointer lpVtbl, int name, int defaultValue,
                  Pointer<IntPtr> returnValue)>()(
          lpVtbl, name.toHString(), defaultValue.toHString(), returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  JsonArray getNamedArrayOrDefault(String name, JsonArray? defaultValue) {
    final returnValue = calloc<COMObject>();

    final hr = _vtable.GetNamedArrayOrDefault.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                VTablePointer defaultValue, Pointer<COMObject> returnValue)>()(
        lpVtbl, name.toHString(), defaultValue.lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  double getNamedNumberOrDefault(String name, double defaultValue) {
    final returnValue = calloc<Double>();

    try {
      final hr = _vtable.GetNamedNumberOrDefault.asFunction<
              int Function(VTablePointer lpVtbl, int name, double defaultValue,
                  Pointer<Double> returnValue)>()(
          lpVtbl, name.toHString(), defaultValue, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getNamedBooleanOrDefault(String name, bool defaultValue) {
    final returnValue = calloc<Bool>();

    try {
      final hr = _vtable.GetNamedBooleanOrDefault.asFunction<
              int Function(VTablePointer lpVtbl, int name, bool defaultValue,
                  Pointer<Bool> returnValue)>()(
          lpVtbl, name.toHString(), defaultValue, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  late final _iJsonObject = IJsonObject.from(this);

  @override
  JsonValue? getNamedValue(String name) => _iJsonObject.getNamedValue(name);

  @override
  void setNamedValue(String name, IJsonValue? value) =>
      _iJsonObject.setNamedValue(name, value);

  @override
  JsonObject getNamedObject(String name) => _iJsonObject.getNamedObject(name);

  @override
  JsonArray getNamedArray(String name) => _iJsonObject.getNamedArray(name);

  @override
  String getNamedString(String name) => _iJsonObject.getNamedString(name);

  @override
  double getNamedNumber(String name) => _iJsonObject.getNamedNumber(name);

  @override
  bool getNamedBoolean(String name) => _iJsonObject.getNamedBoolean(name);

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

final class _IJsonObjectWithDefaultValuesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr name,
              VTablePointer defaultValue,
              Pointer<COMObject> returnValue)>> GetNamedValueOrDefault;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr name,
              VTablePointer defaultValue,
              Pointer<COMObject> returnValue)>> GetNamedObjectOrDefault;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr name,
              IntPtr defaultValue,
              Pointer<IntPtr> returnValue)>> GetNamedStringOrDefault;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr name,
              VTablePointer defaultValue,
              Pointer<COMObject> returnValue)>> GetNamedArrayOrDefault;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr name,
              Double defaultValue,
              Pointer<Double> returnValue)>> GetNamedNumberOrDefault;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name, Bool defaultValue,
              Pointer<Bool> returnValue)>> GetNamedBooleanOrDefault;
}
