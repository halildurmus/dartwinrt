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
  // vtable begins at 6, is 5 entries long.
  IMultiSourceMediaFrameReader.fromPtr(super.ptr);

  factory IMultiSourceMediaFrameReader.from(IInspectable interface) =>
      interface.cast(IMultiSourceMediaFrameReader.fromPtr,
          IID_IMultiSourceMediaFrameReader);

  int add_FrameArrived(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer handler, Pointer<IntPtr> token)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer handler,
                      Pointer<IntPtr> token)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_FrameArrived(int token) {
    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MultiSourceMediaFrameReference? tryAcquireLatestFrame() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

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

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> action)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> action)>()(ptr.ref.lpVtbl, action);

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
