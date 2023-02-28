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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'storagefile.dart';

/// @nodoc
const IID_IStorageFileStatics2 = '{5c76a781-212e-4af9-8f04-740cae108974}';

/// {@category interface}
class IStorageFileStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFileStatics2.fromRawPointer(super.ptr);

  factory IStorageFileStatics2.from(IInspectable interface) =>
      IStorageFileStatics2.fromRawPointer(
          interface.toInterface(IID_IStorageFileStatics2));

  Future<StorageFile?> getFileFromPathForUserAsync(User? user, String path) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final pathHString = path.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL user, IntPtr path,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL user, int path,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, userPtr, pathHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(pathHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
