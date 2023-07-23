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
  // vtable begins at 6, is 6 entries long.
  IJsonObjectWithDefaultValues.fromPtr(super.ptr);

  factory IJsonObjectWithDefaultValues.from(IInspectable interface) =>
      IJsonObjectWithDefaultValues.fromPtr(
          interface.toInterface(IID_IJsonObjectWithDefaultValues));

  JsonValue? getNamedValueOrDefault(String name, JsonValue? defaultValue) {
    final returnValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr name,
                            VTablePointer defaultValue,
                            Pointer<COMObject> returnValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int name,
                    VTablePointer defaultValue,
                    Pointer<COMObject> returnValue)>()(
        ptr.ref.lpVtbl, name.toHString(), defaultValue.lpVtbl, returnValue);

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

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr name,
                            VTablePointer defaultValue,
                            Pointer<COMObject> returnValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int name,
                    VTablePointer defaultValue,
                    Pointer<COMObject> returnValue)>()(
        ptr.ref.lpVtbl, name.toHString(), defaultValue.lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }

  String getNamedStringOrDefault(String name, String defaultValue) {
    final returnValue = calloc<IntPtr>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr name,
                                  IntPtr defaultValue,
                                  Pointer<IntPtr> returnValue)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int name,
                          int defaultValue, Pointer<IntPtr> returnValue)>()(
              ptr.ref.lpVtbl,
              name.toHString(),
              defaultValue.toHString(),
              returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  JsonArray getNamedArrayOrDefault(String name, JsonArray? defaultValue) {
    final returnValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr name,
                            VTablePointer defaultValue,
                            Pointer<COMObject> returnValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int name,
                    VTablePointer defaultValue,
                    Pointer<COMObject> returnValue)>()(
        ptr.ref.lpVtbl, name.toHString(), defaultValue.lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  double getNamedNumberOrDefault(String name, double defaultValue) {
    final returnValue = calloc<Double>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(10)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr name,
                                  Double defaultValue,
                                  Pointer<Double> returnValue)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int name,
                          double defaultValue, Pointer<Double> returnValue)>()(
              ptr.ref.lpVtbl, name.toHString(), defaultValue, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getNamedBooleanOrDefault(String name, bool defaultValue) {
    final returnValue = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                              Bool defaultValue, Pointer<Bool> returnValue)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int name,
                      bool defaultValue, Pointer<Bool> returnValue)>()(
          ptr.ref.lpVtbl, name.toHString(), defaultValue, returnValue);

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
