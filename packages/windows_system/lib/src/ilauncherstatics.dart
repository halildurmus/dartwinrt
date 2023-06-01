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

import 'launcheroptions.dart';

/// @nodoc
const IID_ILauncherStatics = '{277151c3-9e3e-42f6-91a4-5dfdeb232451}';

/// {@category interface}
class ILauncherStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ILauncherStatics.fromPtr(super.ptr);

  factory ILauncherStatics.from(IInspectable interface) =>
      ILauncherStatics.fromPtr(interface.toInterface(IID_ILauncherStatics));

  Future<bool> launchFileAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchFileWithOptionsAsync(
      IStorageFile? file, LauncherOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final optionsPtr = options == null ? nullptr : options.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer file,
                    VTablePointer options, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, optionsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchUriAsync(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = uri?.toWinRTUri();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer uri,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer uri,
                        Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
            uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> launchUriWithOptionsAsync(Uri? uri, LauncherOptions? options) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = uri?.toWinRTUri();
    final optionsPtr = options == null ? nullptr : options.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer uri,
                            VTablePointer options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer uri,
                    VTablePointer options, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
        optionsPtr,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
