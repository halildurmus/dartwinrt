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
import 'package:windows_storage/windows_storage.dart';

import 'launcheroptions.dart';

/// @nodoc
const IID_ILauncherStatics = '{277151c3-9e3e-42f6-91a4-5dfdeb232451}';

class ILauncherStatics extends IInspectable {
  ILauncherStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherStaticsVtbl>().ref;

  final _ILauncherStaticsVtbl _vtable;

  factory ILauncherStatics.from(IInspectable interface) =>
      interface.cast(ILauncherStatics.fromPtr, IID_ILauncherStatics);

  Future<bool> launchFileAsync(IStorageFile? file) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFileAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer file,
            Pointer<COMObject> operation)>()(lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchFileWithOptionsAsync(
      IStorageFile? file, LauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchFileWithOptionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                VTablePointer options, Pointer<COMObject> operation)>()(
        lpVtbl, file.lpVtbl, options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchUriAsync(Uri? uri) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                Pointer<COMObject> operation)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchUriWithOptionsAsync(Uri? uri, LauncherOptions? options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LaunchUriWithOptionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                VTablePointer options, Pointer<COMObject> operation)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, options.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _ILauncherStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> operation)>> LaunchFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchFileWithOptionsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
              Pointer<COMObject> operation)>> LaunchUriAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer uri,
              VTablePointer options,
              Pointer<COMObject> operation)>> LaunchUriWithOptionsAsync;
}
