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

import '../internal.dart';
import 'asyncstatus.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';

/// @nodoc
const IID_IAsyncInfo = '{00000036-0000-0000-c000-000000000046}';

/// Supports asynchronous actions and operations. `IAsyncInfo` is a base
/// interface for `IAsyncAction`, `IAsyncActionWithProgress<TProgress>`,
/// `IAsyncOperation<TResult>` and
/// `IAsyncOperationWithProgress<TResult,TProgress>`, each of which support
/// combinations of return type and progress for an asynchronous method.
class IAsyncInfo extends IInspectable {
  IAsyncInfo.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAsyncInfoVtbl>().ref;

  final _IAsyncInfoVtbl _vtable;

  factory IAsyncInfo.from(IInspectable interface) =>
      interface.cast(IAsyncInfo.fromPtr, IID_IAsyncInfo);

  int get id {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  AsyncStatus get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return AsyncStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int get errorCode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.get_ErrorCode.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void cancel() {
    final hr =
        _vtable.Cancel.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void close() {
    final hr =
        _vtable.Close.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IAsyncInfoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> get_Id;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_Status;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> get_ErrorCode;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Cancel;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Close;
}
