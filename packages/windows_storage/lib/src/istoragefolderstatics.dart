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
const IID_IStorageFolderStatics = '{08f327ff-85d5-48b9-aee9-28511e339f9f}';

class IStorageFolderStatics extends IInspectable {
  IStorageFolderStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFolderStaticsVtbl>().ref;

  final _IStorageFolderStaticsVtbl _vtable;

  factory IStorageFolderStatics.from(IInspectable interface) =>
      interface.cast(IStorageFolderStatics.fromPtr, IID_IStorageFolderStatics);

  Future<StorageFolder?> getFolderFromPathAsync(String path) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFolderFromPathAsync.asFunction<
            int Function(VTablePointer lpVtbl, int path,
                Pointer<COMObject> operation)>()(
        lpVtbl, path.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageFolderStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr path,
              Pointer<COMObject> operation)>> GetFolderFromPathAsync;
}
