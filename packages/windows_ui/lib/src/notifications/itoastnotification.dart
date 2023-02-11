// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
// import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotification = '{997e2675-059e-4e60-8b06-1760917c8b80}';

/// {@category interface}
class IToastNotification extends IInspectable {
  // vtable begins at 6, is 9 entries long.
  IToastNotification.fromRawPointer(super.ptr);

  factory IToastNotification.from(IInspectable interface) =>
      IToastNotification.fromRawPointer(
          interface.toInterface(IID_IToastNotification));

  // XmlDocument? get content {
  //   final retValuePtr = calloc<COMObject>();

  //   final hr = ptr.ref.vtable
  //           .elementAt(6)
  //           .cast<
  //               Pointer<
  //                   NativeFunction<
  //                       HRESULT Function(Pointer, Pointer<COMObject>)>>>()
  //           .value
  //           .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
  //       ptr.ref.lpVtbl, retValuePtr);

  //   if (FAILED(hr)) {
  //     free(retValuePtr);
  //     throw WindowsException(hr);
  //   }

  //   if (retValuePtr.ref.isNull) {
  //     free(retValuePtr);
  //     return null;
  //   }

  //   return XmlDocument.fromRawPointer(retValuePtr);
  // }

  set expirationTime(DateTime? value) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<Pointer<NativeFunction<HRESULT Function(Pointer, LPVTBL)>>>()
            .value
            .asFunction<int Function(Pointer, LPVTBL)>()(
        ptr.ref.lpVtbl,
        value == null
            ? nullptr
            : boxValue(value, convertToIReference: true).ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  DateTime? get expirationTime {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<DateTime>.fromRawPointer(retValuePtr,
        referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}');
    final value = reference.value;
    reference.release();

    return value;
  }

  int add_Dismissed(Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_Dismissed(int token) {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_Activated(Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_Activated(int token) {
    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_Failed(Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_Failed(int token) {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
