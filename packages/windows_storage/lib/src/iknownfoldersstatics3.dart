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

import 'knownfolderid.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersStatics3 = '{c5194341-9742-4ed5-823d-fc1401148764}';

class IKnownFoldersStatics3 extends IInspectable {
  IKnownFoldersStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IKnownFoldersStatics3Vtbl>().ref;

  final _IKnownFoldersStatics3Vtbl _vtable;

  factory IKnownFoldersStatics3.from(IInspectable interface) =>
      interface.cast(IKnownFoldersStatics3.fromPtr, IID_IKnownFoldersStatics3);

  Future<StorageFolder?> getFolderForUserAsync(
      User? user, KnownFolderId folderId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFolderForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user, int folderId,
                Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, folderId.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IKnownFoldersStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              Int32 folderId,
              Pointer<COMObject> operation)>> GetFolderForUserAsync;
}
