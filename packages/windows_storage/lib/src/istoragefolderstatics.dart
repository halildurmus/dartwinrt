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

import 'storagefolder.dart';

/// @nodoc
const IID_IStorageFolderStatics = '{08f327ff-85d5-48b9-aee9-28511e339f9f}';

class IStorageFolderStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolderStatics.fromPtr(super.ptr);

  factory IStorageFolderStatics.from(IInspectable interface) =>
      IStorageFolderStatics.fromPtr(
          interface.toInterface(IID_IStorageFolderStatics));

  Future<StorageFolder?> getFolderFromPathAsync(String path) {
    final operation = calloc<COMObject>();
    final pathHString = path.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr path,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int path,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, pathHString, operation);

    WindowsDeleteString(pathHString);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
