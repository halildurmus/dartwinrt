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
const IID_IApplicationData3 = '{dc222cf4-2772-4c1d-aa2c-c9f743ade8d1}';

class IApplicationData3 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IApplicationData3.fromPtr(super.ptr);

  factory IApplicationData3.from(IInspectable interface) =>
      IApplicationData3.fromPtr(interface.toInterface(IID_IApplicationData3));

  StorageFolder? getPublisherCacheFolder(String folderName) {
    final retValuePtr = calloc<COMObject>();
    final folderNameHString = folderName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr folderName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int folderName,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, folderNameHString, retValuePtr);

    WindowsDeleteString(folderNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolder.fromPtr(retValuePtr);
  }

  Future<void> clearPublisherCacheFolderAsync(String folderName) {
    final retValuePtr = calloc<COMObject>();
    final folderNameHString = folderName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr folderName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int folderName,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, folderNameHString, retValuePtr);

    WindowsDeleteString(folderNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  StorageFolder? get sharedLocalFolder {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolder.fromPtr(retValuePtr);
  }
}
