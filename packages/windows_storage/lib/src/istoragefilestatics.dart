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

import 'istoragefile.dart';
import 'storagefile.dart';
import 'streams/irandomaccessstreamreference.dart';

/// @nodoc
const IID_IStorageFileStatics = '{5984c710-daf2-43c8-8bb4-a4d3eacfd03f}';

class IStorageFileStatics extends IInspectable {
  IStorageFileStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFileStaticsVtbl>().ref;

  final _IStorageFileStaticsVtbl _vtable;

  factory IStorageFileStatics.from(IInspectable interface) =>
      interface.cast(IStorageFileStatics.fromPtr, IID_IStorageFileStatics);

  Future<StorageFile?> getFileFromPathAsync(String path) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFileFromPathAsync.asFunction<
            int Function(VTablePointer lpVtbl, int path,
                Pointer<COMObject> operation)>()(
        lpVtbl, path.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> getFileFromApplicationUriAsync(Uri? uri) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFileFromApplicationUriAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                Pointer<COMObject> operation)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createStreamedFileAsync(
      String displayNameWithExtension,
      Pointer<COMObject> dataRequested,
      IRandomAccessStreamReference? thumbnail) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateStreamedFileAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int displayNameWithExtension,
                VTablePointer dataRequested,
                VTablePointer thumbnail,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        displayNameWithExtension.toHString(),
        dataRequested.ref.lpVtbl,
        thumbnail.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> replaceWithStreamedFileAsync(
      IStorageFile? fileToReplace,
      Pointer<COMObject> dataRequested,
      IRandomAccessStreamReference? thumbnail) {
    final operation = calloc<COMObject>();

    final hr = _vtable.ReplaceWithStreamedFileAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer fileToReplace,
                VTablePointer dataRequested,
                VTablePointer thumbnail,
                Pointer<COMObject> operation)>()(lpVtbl, fileToReplace.lpVtbl,
        dataRequested.ref.lpVtbl, thumbnail.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createStreamedFileFromUriAsync(
      String displayNameWithExtension,
      Uri? uri,
      IRandomAccessStreamReference? thumbnail) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateStreamedFileFromUriAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int displayNameWithExtension,
                VTablePointer uri,
                VTablePointer thumbnail,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        displayNameWithExtension.toHString(),
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        thumbnail.lpVtbl,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> replaceWithStreamedFileFromUriAsync(
      IStorageFile? fileToReplace,
      Uri? uri,
      IRandomAccessStreamReference? thumbnail) {
    final operation = calloc<COMObject>();

    final hr = _vtable.ReplaceWithStreamedFileFromUriAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer fileToReplace,
                VTablePointer uri,
                VTablePointer thumbnail,
                Pointer<COMObject> operation)>()(lpVtbl, fileToReplace.lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr, thumbnail.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageFileStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr path,
              Pointer<COMObject> operation)>> GetFileFromPathAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
              Pointer<COMObject> operation)>> GetFileFromApplicationUriAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr displayNameWithExtension,
              VTablePointer dataRequested,
              VTablePointer thumbnail,
              Pointer<COMObject> operation)>> CreateStreamedFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer fileToReplace,
              VTablePointer dataRequested,
              VTablePointer thumbnail,
              Pointer<COMObject> operation)>> ReplaceWithStreamedFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr displayNameWithExtension,
              VTablePointer uri,
              VTablePointer thumbnail,
              Pointer<COMObject> operation)>> CreateStreamedFileFromUriAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer fileToReplace,
                  VTablePointer uri,
                  VTablePointer thumbnail,
                  Pointer<COMObject> operation)>>
      ReplaceWithStreamedFileFromUriAsync;
}
