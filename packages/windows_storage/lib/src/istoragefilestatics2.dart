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
import 'package:windows_system/windows_system.dart';

import 'storagefile.dart';

/// @nodoc
const IID_IStorageFileStatics2 = '{5c76a781-212e-4af9-8f04-740cae108974}';

class IStorageFileStatics2 extends IInspectable {
  IStorageFileStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFileStatics2Vtbl>().ref;

  final _IStorageFileStatics2Vtbl _vtable;

  factory IStorageFileStatics2.from(IInspectable interface) =>
      interface.cast(IStorageFileStatics2.fromPtr, IID_IStorageFileStatics2);

  Future<StorageFile?> getFileFromPathForUserAsync(User? user, String path) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFileFromPathForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user, int path,
                Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, path.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageFileStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              IntPtr path,
              Pointer<COMObject> operation)>> GetFileFromPathForUserAsync;
}
