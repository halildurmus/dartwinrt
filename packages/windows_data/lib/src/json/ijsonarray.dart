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

import 'ijsonvalue.dart';
import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvaluetype.dart';

/// @nodoc
const IID_IJsonArray = '{08c1ddb6-0cbd-4a9a-b5d3-2f852dc37e81}';

class IJsonArray extends IInspectable implements IJsonValue {
  // vtable begins at 6, is 5 entries long.
  IJsonArray.fromPtr(super.ptr);

  factory IJsonArray.from(IInspectable interface) =>
      interface.cast(IJsonArray.fromPtr, IID_IJsonArray);

  JsonObject getObjectAt(int index) {
    final returnValue = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                        Pointer<COMObject> returnValue)>>>()
        .value
        .asFunction<
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

    final hr = vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                        Pointer<COMObject> returnValue)>>>()
        .value
        .asFunction<
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
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                          Pointer<IntPtr> returnValue)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                          Pointer<Double> returnValue)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                          Pointer<Bool> returnValue)>>>()
          .value
          .asFunction<
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
