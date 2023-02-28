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
import 'ijsonvalue.dart';
import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvalue.dart';

/// @nodoc
const IID_IJsonObject = '{064e24dd-29c2-4f83-9ac1-9ee11578beb3}';

/// {@category interface}
class IJsonObject extends IInspectable implements IJsonValue {
  // vtable begins at 6, is 7 entries long.
  IJsonObject.fromRawPointer(super.ptr);

  factory IJsonObject.from(IInspectable interface) =>
      IJsonObject.fromRawPointer(interface.toInterface(IID_IJsonObject));

  JsonValue? getNamedValue(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

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

  void setNamedValue(String name, IJsonValue? value) {
    final nameHString = convertToHString(name);
    final valuePtr = value == null ? nullptr : value.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, IntPtr name, LPVTBL value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int name, LPVTBL value)>()(
        ptr.ref.lpVtbl, nameHString, valuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(nameHString);
  }

  JsonObject? getNamedObject(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

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

  JsonArray? getNamedArray(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

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

  String getNamedString(String name) {
    final retValuePtr = calloc<HSTRING>();
    final nameHString = convertToHString(name);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int name, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, nameHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(nameHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  double getNamedNumber(String name) {
    final retValuePtr = calloc<Double>();
    final nameHString = convertToHString(name);

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                              Pointer<Double> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int name, Pointer<Double> retValuePtr)>()(
          ptr.ref.lpVtbl, nameHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(nameHString);
      free(retValuePtr);
    }
  }

  bool getNamedBoolean(String name) {
    final retValuePtr = calloc<Bool>();
    final nameHString = convertToHString(name);

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int name, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, nameHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(nameHString);
      free(retValuePtr);
    }
  }

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
