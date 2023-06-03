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

import 'fileaccessmode.dart';
import 'storageopenoptions.dart';
import 'storagestreamtransaction.dart';
import 'streams/irandomaccessstream.dart';

/// @nodoc
const IID_IStorageFile2 = '{954e4bcf-0a77-42fb-b777-c2ed58a52e44}';

class IStorageFile2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IStorageFile2.fromPtr(super.ptr);

  factory IStorageFile2.from(IInspectable interface) =>
      IStorageFile2.fromPtr(interface.toInterface(IID_IStorageFile2));

  Future<IRandomAccessStream?> openWithOptionsAsync(
      FileAccessMode accessMode, StorageOpenOptions options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 accessMode,
                            Uint32 options, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int accessMode, int options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, accessMode.value, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        retValuePtr,
        creator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageStreamTransaction?> openTransactedWriteWithOptionsAsync(
      StorageOpenOptions options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageStreamTransaction?>.fromPtr(
        retValuePtr,
        creator: StorageStreamTransaction.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
