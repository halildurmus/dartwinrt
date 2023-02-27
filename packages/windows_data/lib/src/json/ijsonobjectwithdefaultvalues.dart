// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'ijsonobject.dart';
import 'ijsonvalue.dart';
import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvalue.dart';

/// @nodoc
const IID_IJsonObjectWithDefaultValues =
    '{d960d2a2-b7f0-4f00-8e44-d82cf415ea13}';

/// {@category interface}
class IJsonObjectWithDefaultValues extends IInspectable
    implements IJsonObject, IJsonValue {
  // vtable begins at 6, is 6 entries long.
  IJsonObjectWithDefaultValues.fromRawPointer(super.ptr);

  factory IJsonObjectWithDefaultValues.from(IInspectable interface) =>
      IJsonObjectWithDefaultValues.fromRawPointer(
          interface.toInterface(IID_IJsonObjectWithDefaultValues));

  JsonValue? getNamedValueOrDefault(String name, JsonValue? defaultValue) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr name,
                            LPVTBL defaultValue,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int name, LPVTBL defaultValue,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        nameHString,
        defaultValue == null ? nullptr : defaultValue.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return JsonValue.fromRawPointer(retValuePtr);
  }

  JsonObject? getNamedObjectOrDefault(String name, JsonObject? defaultValue) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr name,
                            LPVTBL defaultValue,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int name, LPVTBL defaultValue,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        nameHString,
        defaultValue == null ? nullptr : defaultValue.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return JsonObject.fromRawPointer(retValuePtr);
  }

  String getNamedStringOrDefault(String name, String defaultValue) {
    final retValuePtr = calloc<HSTRING>();
    final nameHString = convertToHString(name);
    final defaultValueHString = convertToHString(defaultValue);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl,
                                  IntPtr name,
                                  IntPtr defaultValue,
                                  Pointer<IntPtr> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int name, int defaultValue,
                          Pointer<IntPtr> retValuePtr)>()(
              ptr.ref.lpVtbl, nameHString, defaultValueHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(nameHString);
      WindowsDeleteString(defaultValueHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  JsonArray? getNamedArrayOrDefault(String name, JsonArray? defaultValue) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr name,
                            LPVTBL defaultValue,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int name, LPVTBL defaultValue,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        nameHString,
        defaultValue == null ? nullptr : defaultValue.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return JsonArray.fromRawPointer(retValuePtr);
  }

  double getNamedNumberOrDefault(String name, double defaultValue) {
    final retValuePtr = calloc<Double>();
    final nameHString = convertToHString(name);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl,
                                  IntPtr name,
                                  Double defaultValue,
                                  Pointer<Double> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int name, double defaultValue,
                          Pointer<Double> retValuePtr)>()(
              ptr.ref.lpVtbl, nameHString, defaultValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(nameHString);

      free(retValuePtr);
    }
  }

  bool getNamedBooleanOrDefault(String name, bool defaultValue) {
    final retValuePtr = calloc<Bool>();
    final nameHString = convertToHString(name);

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                              Bool defaultValue, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int name, bool defaultValue,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, nameHString, defaultValue, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(nameHString);

      free(retValuePtr);
    }
  }

  // IJsonObject methods
  late final _iJsonObject = IJsonObject.from(this);

  @override
  JsonValue? getNamedValue(String name) => _iJsonObject.getNamedValue(name);

  @override
  void setNamedValue(String name, IJsonValue? value) =>
      _iJsonObject.setNamedValue(name, value);

  @override
  JsonObject? getNamedObject(String name) => _iJsonObject.getNamedObject(name);

  @override
  JsonArray? getNamedArray(String name) => _iJsonObject.getNamedArray(name);

  @override
  String getNamedString(String name) => _iJsonObject.getNamedString(name);

  @override
  double getNamedNumber(String name) => _iJsonObject.getNamedNumber(name);

  @override
  bool getNamedBoolean(String name) => _iJsonObject.getNamedBoolean(name);

  // IJsonValue methods
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
  JsonArray? getArray() => _iJsonValue.getArray();

  @override
  JsonObject? getObject() => _iJsonValue.getObject();
}
