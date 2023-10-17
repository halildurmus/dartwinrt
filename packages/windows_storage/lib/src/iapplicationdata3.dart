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

import 'storagefolder.dart';

/// @nodoc
const IID_IApplicationData3 = '{dc222cf4-2772-4c1d-aa2c-c9f743ade8d1}';

class IApplicationData3 extends IInspectable {
  IApplicationData3.fromPtr(super.ptr);

  factory IApplicationData3.from(IInspectable interface) =>
      interface.cast(IApplicationData3.fromPtr, IID_IApplicationData3);

  StorageFolder? getPublisherCacheFolder(String folderName) {
    final value = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, IntPtr folderName,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int folderName,
                Pointer<COMObject>
                    value)>()(lpVtbl, folderName.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolder.fromPtr(value);
  }

  Future<void> clearPublisherCacheFolderAsync(String folderName) {
    final clearOperation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr folderName,
                                Pointer<COMObject> clearOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int folderName,
                        Pointer<COMObject> clearOperation)>()(
            lpVtbl, folderName.toHString(), clearOperation);

    if (FAILED(hr)) {
      free(clearOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(clearOperation).toFuture();
  }

  StorageFolder? get sharedLocalFolder {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolder.fromPtr(value);
  }
}
