// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
  IApplicationData3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IApplicationData3Vtbl>().ref;

  final _IApplicationData3Vtbl _vtable;

  factory IApplicationData3.from(IInspectable interface) =>
      interface.cast(IApplicationData3.fromPtr, IID_IApplicationData3);

  StorageFolder? getPublisherCacheFolder(String folderName) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetPublisherCacheFolder.asFunction<
        int Function(VTablePointer lpVtbl, int folderName,
            Pointer<COMObject> value)>()(lpVtbl, folderName.toHString(), value);

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

    final hr = _vtable.ClearPublisherCacheFolderAsync.asFunction<
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

    final hr = _vtable.get_SharedLocalFolder.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

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

final class _IApplicationData3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr folderName,
              Pointer<COMObject> value)>> GetPublisherCacheFolder;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr folderName,
                  Pointer<COMObject> clearOperation)>>
      ClearPublisherCacheFolderAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SharedLocalFolder;
}
