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

import 'jsonarray.dart';
import 'jsonobject.dart';
import 'jsonvaluetype.dart';

/// @nodoc
const IID_IJsonValue = '{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}';

class IJsonValue extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IJsonValue.fromPtr(super.ptr);

  factory IJsonValue.from(IInspectable interface) =>
      IJsonValue.fromPtr(interface.toInterface(IID_IJsonValue));

  JsonValueType get valueType {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return JsonValueType.from(value.value);
    } finally {
      free(value);
    }
  }

  String stringify() {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> returnValue)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> returnValue)>()(ptr.ref.lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  String getString() {
    final returnValue = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> returnValue)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> returnValue)>()(ptr.ref.lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.toDartString();
    } finally {
      free(returnValue);
    }
  }

  double getNumber() {
    final returnValue = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Double> returnValue)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Double> returnValue)>()(ptr.ref.lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  bool getBoolean() {
    final returnValue = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> returnValue)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> returnValue)>()(ptr.ref.lpVtbl, returnValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return returnValue.value;
    } finally {
      free(returnValue);
    }
  }

  JsonArray getArray() {
    final returnValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> returnValue)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> returnValue)>()(ptr.ref.lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonArray.fromPtr(returnValue);
  }

  JsonObject getObject() {
    final returnValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> returnValue)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> returnValue)>()(ptr.ref.lpVtbl, returnValue);

    if (FAILED(hr)) {
      free(returnValue);
      throwWindowsException(hr);
    }

    return JsonObject.fromPtr(returnValue);
  }
}
