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
import 'package:win32/win32.dart';

import '../internal.dart';
import 'callbacks.dart';
import 'collections/iiterator.dart';
import 'enums.g.dart';
import 'helpers.dart';
import 'iinspectable.dart';

/// @nodoc
const IID_IAsyncInfo = '{00000036-0000-0000-c000-000000000046}';

/// Supports asynchronous actions and operations. `IAsyncInfo` is a base
/// interface for `IAsyncAction`, `IAsyncActionWithProgress<TProgress>`,
/// `IAsyncOperation<TResult>` and
/// `IAsyncOperationWithProgress<TResult,TProgress>`, each of which support
/// combinations of return type and progress for an asynchronous method.
///
/// {@category interface}
class IAsyncInfo extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IAsyncInfo.fromRawPointer(super.ptr);

  factory IAsyncInfo.from(IInspectable interface) =>
      IAsyncInfo.fromRawPointer(interface.toInterface(IID_IAsyncInfo));

  int get id {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  AsyncStatus get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return AsyncStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int get errorCode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void cancel() {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL)>>>()
        .value
        .asFunction<int Function(LPVTBL)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void close() {
    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL)>>>()
        .value
        .asFunction<int Function(LPVTBL)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
