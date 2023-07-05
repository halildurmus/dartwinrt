// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
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
  // vtable begins at 6, is 7 entries long.
  IJsonObject.fromPtr(super.ptr);

  factory IJsonObject.from(IInspectable interface) =>
      IJsonObject.fromPtr(interface.toInterface(IID_IJsonObject));

  JsonValue? getNamedValue(String name) {
    final returnValue = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> returnValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> returnValue)>()(
        ptr.ref.lpVtbl, nameHString, returnValue);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(returnValue);
      throw WindowsException(hr);
    }

    if (returnValue.isNull) {
      free(returnValue);
      return null;
    }

    return JsonValue.fromPtr(returnValue);
  }

  void setNamedValue(String name, IJsonValue? value) {
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int name, VTablePointer value)>()(
        ptr.ref.lpVtbl,
        nameHString,
        value == null ? nullptr : value.ptr.ref.lpVtbl);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  JsonObject getNamedObject(String name) {
    final returnValue = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> returnValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> returnValue)>()(
        ptr.ref.lpVtbl, nameHString, returnValue);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(returnValue);
      throw WindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }

  JsonArray getNamedArray(String name) {
    final returnValue = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> returnValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> returnValue)>()(
        ptr.ref.lpVtbl, nameHString, returnValue);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(returnValue);
      throw WindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  String getNamedString(String name) {
    final returnValue = calloc<IntPtr>();

    try {
      final nameHString = name.toHString();

      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                              Pointer<IntPtr> returnValue)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int name,
                      Pointer<IntPtr> returnValue)>()(
          ptr.ref.lpVtbl, nameHString, returnValue);

      WindowsDeleteString(nameHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return returnValue.toDartString();
    } finally {
      WindowsDeleteString(returnValue.value);
      free(returnValue);
    }
  }

  double getNamedNumber(String name) {
    final returnValue = calloc<Double>();

    try {
      final nameHString = name.toHString();

      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                              Pointer<Double> returnValue)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int name,
                      Pointer<Double> returnValue)>()(
          ptr.ref.lpVtbl, nameHString, returnValue);

      WindowsDeleteString(nameHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getNamedBoolean(String name) {
    final returnValue = calloc<Bool>();

    try {
      final nameHString = name.toHString();

      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                              Pointer<Bool> returnValue)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int name,
                      Pointer<Bool> returnValue)>()(
          ptr.ref.lpVtbl, nameHString, returnValue);

      WindowsDeleteString(nameHString);

      if (FAILED(hr)) throw WindowsException(hr);

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
