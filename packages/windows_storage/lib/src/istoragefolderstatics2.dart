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
import 'package:windows_system/windows_system.dart';

import 'storagefolder.dart';

/// @nodoc
const IID_IStorageFolderStatics2 = '{b4656dc3-71d2-467d-8b29-371f0f62bf6f}';

class IStorageFolderStatics2 extends IInspectable {
  IStorageFolderStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFolderStatics2Vtbl>().ref;

  final _IStorageFolderStatics2Vtbl _vtable;

  factory IStorageFolderStatics2.from(IInspectable interface) => interface.cast(
      IStorageFolderStatics2.fromPtr, IID_IStorageFolderStatics2);

  Future<StorageFolder?> getFolderFromPathForUserAsync(
      User? user, String path) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFolderFromPathForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user, int path,
                Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, path.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageFolderStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              IntPtr path,
              Pointer<COMObject> operation)>> GetFolderFromPathForUserAsync;
}
