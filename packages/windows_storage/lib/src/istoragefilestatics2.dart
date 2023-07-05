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
import 'package:windows_system/windows_system.dart';

import 'storagefile.dart';

/// @nodoc
const IID_IStorageFileStatics2 = '{5c76a781-212e-4af9-8f04-740cae108974}';

class IStorageFileStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFileStatics2.fromPtr(super.ptr);

  factory IStorageFileStatics2.from(IInspectable interface) =>
      IStorageFileStatics2.fromPtr(
          interface.toInterface(IID_IStorageFileStatics2));

  Future<StorageFile?> getFileFromPathForUserAsync(User? user, String path) {
    final operation = calloc<COMObject>();
    final pathHString = path.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                IntPtr path,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int path, Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl,
            user == null ? nullptr : user.ptr.ref.lpVtbl,
            pathHString,
            operation);

    WindowsDeleteString(pathHString);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
