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

import 'storagefolder.dart';

/// @nodoc
const IID_IStorageFolderStatics = '{08f327ff-85d5-48b9-aee9-28511e339f9f}';

/// {@category interface}
class IStorageFolderStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolderStatics.fromRawPointer(super.ptr);

  factory IStorageFolderStatics.from(IInspectable interface) =>
      IStorageFolderStatics.fromRawPointer(
          interface.toInterface(IID_IStorageFolderStatics));

  Future<StorageFolder?> getFolderFromPathAsync(String path) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final pathHString = convertToHString(path);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr path, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int path, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, pathHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(pathHString);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
