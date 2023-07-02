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

import 'storagelibrarychange.dart';

/// @nodoc
const IID_IStorageLibraryChangeReader =
    '{f205bc83-fca2-41f9-8954-ee2e991eb96f}';

class IStorageLibraryChangeReader extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IStorageLibraryChangeReader.fromPtr(super.ptr);

  factory IStorageLibraryChangeReader.from(IInspectable interface) =>
      IStorageLibraryChangeReader.fromPtr(
          interface.toInterface(IID_IStorageLibraryChangeReader));

  Future<List<StorageLibraryChange?>> readBatchAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
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

    final asyncOperation =
        IAsyncOperation<IVectorView<StorageLibraryChange?>>.fromPtr(retValuePtr,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: StorageLibraryChange.fromPtr,
                iterableIid: '{87c15dfc-0c5e-518b-9206-97d3d9823c61}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<void> acceptChangesAsync() {
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

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }
}
