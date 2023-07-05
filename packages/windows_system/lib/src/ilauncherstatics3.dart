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
import 'package:windows_storage/windows_storage.dart';

import 'folderlauncheroptions.dart';

/// @nodoc
const IID_ILauncherStatics3 = '{234261a8-9db3-4683-aa42-dc6f51d33847}';

class ILauncherStatics3 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ILauncherStatics3.fromPtr(super.ptr);

  factory ILauncherStatics3.from(IInspectable interface) =>
      ILauncherStatics3.fromPtr(interface.toInterface(IID_ILauncherStatics3));

  Future<bool> launchFolderAsync(IStorageFolder? folder) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer folder,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer folder,
                        Pointer<COMObject> operation)>()(ptr.ref.lpVtbl,
            folder == null ? nullptr : folder.ptr.ref.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchFolderWithOptionsAsync(
      IStorageFolder? folder, FolderLauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer folder,
                            VTablePointer options,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer folder,
                    VTablePointer options, Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl,
        folder == null ? nullptr : folder.ptr.ref.lpVtbl,
        options == null ? nullptr : options.ptr.ref.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
