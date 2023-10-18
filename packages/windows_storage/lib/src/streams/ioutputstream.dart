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

import 'ibuffer.dart';

/// @nodoc
const IID_IOutputStream = '{905a0fe6-bc53-11df-8c49-001e4fc686da}';

class IOutputStream extends IInspectable implements IClosable {
  IOutputStream.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IOutputStreamVtbl>().ref;

  final _IOutputStreamVtbl _vtable;

  factory IOutputStream.from(IInspectable interface) =>
      interface.cast(IOutputStream.fromPtr, IID_IOutputStream);

  Pointer<COMObject> writeAsync(IBuffer? buffer) {
    final operation = calloc<COMObject>();

    final hr = _vtable.WriteAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer buffer,
            Pointer<COMObject> operation)>()(lpVtbl, buffer.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return operation;
  }

  Future<bool> flushAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.FlushAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IOutputStreamVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer,
              Pointer<COMObject> operation)>> WriteAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> FlushAsync;
}
