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

import 'folderlauncheroptions.dart';
import 'user.dart';

/// @nodoc
const IID_ILauncherStatics5 = '{5b24ef84-d895-5fea-9153-1ac49aed9ba9}';

class ILauncherStatics5 extends IInspectable {
  ILauncherStatics5.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherStatics5Vtbl>().ref;

  final _ILauncherStatics5Vtbl _vtable;

  factory ILauncherStatics5.from(IInspectable interface) =>
      interface.cast(ILauncherStatics5.fromPtr, IID_ILauncherStatics5);

  Future<bool> launchFolderPathAsync(String path) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFolderPathAsync.asFunction<
            int Function(VTablePointer lpVtbl, int path,
                Pointer<COMObject> operation)>()(
        lpVtbl, path.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchFolderPathWithOptionsAsync(
      String path, FolderLauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFolderPathWithOptionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, int path, VTablePointer options,
                Pointer<COMObject> operation)>()(
        lpVtbl, path.toHString(), options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchFolderPathForUserAsync(User? user, String path) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFolderPathForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user, int path,
                Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, path.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchFolderPathWithOptionsForUserAsync(
      User? user, String path, FolderLauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFolderPathWithOptionsForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user, int path,
                VTablePointer options, Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, path.toHString(), options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _ILauncherStatics5Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr path,
              Pointer<COMObject> operation)>> LaunchFolderPathAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr path,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchFolderPathWithOptionsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              IntPtr path,
              Pointer<COMObject> operation)>> LaunchFolderPathForUserAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer user,
                  IntPtr path,
                  VTablePointer options,
                  Pointer<COMObject> operation)>>
      LaunchFolderPathWithOptionsForUserAsync;
}
