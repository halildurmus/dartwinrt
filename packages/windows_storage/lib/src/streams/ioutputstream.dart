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

import 'ibuffer.dart';

/// @nodoc
const IID_IOutputStream = '{905a0fe6-bc53-11df-8c49-001e4fc686da}';

class IOutputStream extends IInspectable implements IClosable {
  // vtable begins at 6, is 2 entries long.
  IOutputStream.fromPtr(super.ptr);

  factory IOutputStream.from(IInspectable interface) =>
      IOutputStream.fromPtr(interface.toInterface(IID_IOutputStream));

  Pointer<COMObject> writeAsync(IBuffer? buffer) {
    final retValuePtr = calloc<COMObject>();
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer buffer,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer buffer,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, bufferPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Future<bool> flushAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
