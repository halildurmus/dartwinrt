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

import 'multisourcemediaframereader.dart';
import 'multisourcemediaframereaderstartstatus.dart';
import 'multisourcemediaframereference.dart';

/// @nodoc
const IID_IMultiSourceMediaFrameReader =
    '{8d144402-f763-488d-98f2-b437bcf075e7}';

class IMultiSourceMediaFrameReader extends IInspectable implements IClosable {
  IMultiSourceMediaFrameReader.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMultiSourceMediaFrameReaderVtbl>().ref;

  final _IMultiSourceMediaFrameReaderVtbl _vtable;

  factory IMultiSourceMediaFrameReader.from(IInspectable interface) =>
      interface.cast(IMultiSourceMediaFrameReader.fromPtr,
          IID_IMultiSourceMediaFrameReader);

  int add_FrameArrived(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_FrameArrived.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_FrameArrived(int token) {
    final hr = _vtable.remove_FrameArrived
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MultiSourceMediaFrameReference? tryAcquireLatestFrame() {
    final value = calloc<COMObject>();

    final hr = _vtable.TryAcquireLatestFrame.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MultiSourceMediaFrameReference.fromPtr(value);
  }

  Future<MultiSourceMediaFrameReaderStartStatus> startAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.StartAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<MultiSourceMediaFrameReaderStartStatus>.fromPtr(
            operation,
            enumCreator: MultiSourceMediaFrameReaderStartStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> stopAsync() {
    final action = calloc<COMObject>();

    final hr = _vtable.StopAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> action)>()(lpVtbl, action);

    if (FAILED(hr)) {
      free(action);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(action).toFuture();
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IMultiSourceMediaFrameReaderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_FrameArrived;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_FrameArrived;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      TryAcquireLatestFrame;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> StartAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> action)>> StopAsync;
}
