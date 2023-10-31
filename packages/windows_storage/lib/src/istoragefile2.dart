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

import 'fileaccessmode.dart';
import 'storageopenoptions.dart';
import 'storagestreamtransaction.dart';
import 'streams/irandomaccessstream.dart';

/// @nodoc
const IID_IStorageFile2 = '{954e4bcf-0a77-42fb-b777-c2ed58a52e44}';

class IStorageFile2 extends IInspectable {
  IStorageFile2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFile2Vtbl>().ref;

  final _IStorageFile2Vtbl _vtable;

  factory IStorageFile2.from(IInspectable interface) =>
      interface.cast(IStorageFile2.fromPtr, IID_IStorageFile2);

  Future<IRandomAccessStream?> openWithOptionsAsync(
      FileAccessMode accessMode, StorageOpenOptions options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.OpenWithOptionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, int accessMode, int options,
                Pointer<COMObject> operation)>()(
        lpVtbl, accessMode.value, options.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        operation,
        tResultObjectCreator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageStreamTransaction?> openTransactedWriteWithOptionsAsync(
      StorageOpenOptions options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.OpenTransactedWriteWithOptionsAsync.asFunction<
        int Function(VTablePointer lpVtbl, int options,
            Pointer<COMObject> operation)>()(lpVtbl, options.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageStreamTransaction?>.fromPtr(
        operation,
        tResultObjectCreator: StorageStreamTransaction.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageFile2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 accessMode,
              Uint32 options,
              Pointer<COMObject> operation)>> OpenWithOptionsAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Uint32 options,
                  Pointer<COMObject> operation)>>
      OpenTransactedWriteWithOptionsAsync;
}
