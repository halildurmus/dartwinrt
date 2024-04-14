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
import 'package:windows_storage/windows_storage.dart';

import 'folderlauncheroptions.dart';

/// @nodoc
const IID_ILauncherStatics3 = '{234261a8-9db3-4683-aa42-dc6f51d33847}';

class ILauncherStatics3 extends IInspectable {
  ILauncherStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherStatics3Vtbl>().ref;

  final _ILauncherStatics3Vtbl _vtable;

  factory ILauncherStatics3.from(IInspectable interface) =>
      interface.cast(ILauncherStatics3.fromPtr, IID_ILauncherStatics3);

  Future<bool> launchFolderAsync(IStorageFolder? folder) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFolderAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer folder,
            Pointer<COMObject> operation)>()(lpVtbl, folder.lpVtbl, operation);

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

    final hr = _vtable.LaunchFolderWithOptionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer folder,
                VTablePointer options, Pointer<COMObject> operation)>()(
        lpVtbl, folder.lpVtbl, options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _ILauncherStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer folder,
              Pointer<COMObject> operation)>> LaunchFolderAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer folder,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchFolderWithOptionsAsync;
}
