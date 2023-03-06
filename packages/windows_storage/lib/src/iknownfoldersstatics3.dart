// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

import 'knownfolderid.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersStatics3 = '{c5194341-9742-4ed5-823d-fc1401148764}';

/// {@category interface}
class IKnownFoldersStatics3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IKnownFoldersStatics3.fromRawPointer(super.ptr);

  factory IKnownFoldersStatics3.from(IInspectable interface) =>
      IKnownFoldersStatics3.fromRawPointer(
          interface.toInterface(IID_IKnownFoldersStatics3));

  Future<StorageFolder?> getFolderForUserAsync(
      User? user, KnownFolderId folderId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL user, Int32 folderId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL user, int folderId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, userPtr, folderId.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
