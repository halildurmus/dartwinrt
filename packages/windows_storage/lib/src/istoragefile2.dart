// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'fileaccessmode.dart';
import 'storageopenoptions.dart';
import 'storagestreamtransaction.dart';
import 'streams/irandomaccessstream.dart';

/// @nodoc
const IID_IStorageFile2 = '{954e4bcf-0a77-42fb-b777-c2ed58a52e44}';

/// {@category interface}
class IStorageFile2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IStorageFile2.fromRawPointer(super.ptr);

  factory IStorageFile2.from(IInspectable interface) =>
      IStorageFile2.fromRawPointer(interface.toInterface(IID_IStorageFile2));

  Future<IRandomAccessStream?> openWithOptionsAsync(
      FileAccessMode accessMode, StorageOpenOptions options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IRandomAccessStream?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 accessMode,
                            Uint32 options, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int accessMode, int options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, accessMode.value, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromRawPointer(
        retValuePtr,
        creator: IRandomAccessStream.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageStreamTransaction?> openTransactedWriteWithOptionsAsync(
      StorageOpenOptions options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageStreamTransaction?>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint32 options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<StorageStreamTransaction?>.fromRawPointer(retValuePtr,
            creator: StorageStreamTransaction.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
