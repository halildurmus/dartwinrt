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

import 'istoragefile.dart';
import 'storagefile.dart';
import 'streams/irandomaccessstreamreference.dart';

/// @nodoc
const IID_IStorageFileStatics = '{5984c710-daf2-43c8-8bb4-a4d3eacfd03f}';

/// {@category interface}
class IStorageFileStatics extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IStorageFileStatics.fromPtr(super.ptr);

  factory IStorageFileStatics.from(IInspectable interface) =>
      IStorageFileStatics.fromPtr(
          interface.toInterface(IID_IStorageFileStatics));

  Future<StorageFile?> getFileFromPathAsync(String path) {
    final retValuePtr = calloc<COMObject>();
    final pathHString = path.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr path,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int path,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, pathHString, retValuePtr);

    WindowsDeleteString(pathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> getFileFromApplicationUriAsync(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = uri?.toWinRTUri();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
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

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createStreamedFileAsync(
      String displayNameWithExtension,
      Pointer<COMObject> dataRequested,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final displayNameWithExtensionHString =
        displayNameWithExtension.toHString();
    final thumbnailPtr = thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr displayNameWithExtension,
                            VTablePointer dataRequested,
                            VTablePointer thumbnail,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int displayNameWithExtension,
                    VTablePointer dataRequested,
                    VTablePointer thumbnail,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        displayNameWithExtensionHString,
        dataRequested.ref.lpVtbl,
        thumbnailPtr,
        retValuePtr);

    WindowsDeleteString(displayNameWithExtensionHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> replaceWithStreamedFileAsync(
      IStorageFile? fileToReplace,
      Pointer<COMObject> dataRequested,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final fileToReplacePtr =
        fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl;
    final thumbnailPtr = thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer fileToReplace,
                            VTablePointer dataRequested,
                            VTablePointer thumbnail,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer fileToReplace,
                    VTablePointer dataRequested,
                    VTablePointer thumbnail,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        fileToReplacePtr, dataRequested.ref.lpVtbl, thumbnailPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createStreamedFileFromUriAsync(
      String displayNameWithExtension,
      Uri? uri,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final displayNameWithExtensionHString =
        displayNameWithExtension.toHString();
    final uriUri = uri?.toWinRTUri();
    final thumbnailPtr = thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr displayNameWithExtension,
                            VTablePointer uri,
                            VTablePointer thumbnail,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int displayNameWithExtension,
                    VTablePointer uri,
                    VTablePointer thumbnail,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        displayNameWithExtensionHString,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
        thumbnailPtr,
        retValuePtr);

    WindowsDeleteString(displayNameWithExtensionHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> replaceWithStreamedFileFromUriAsync(
      IStorageFile? fileToReplace,
      Uri? uri,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final fileToReplacePtr =
        fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl;
    final uriUri = uri?.toWinRTUri();
    final thumbnailPtr = thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer fileToReplace,
                            VTablePointer uri,
                            VTablePointer thumbnail,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer fileToReplace,
                    VTablePointer uri,
                    VTablePointer thumbnail,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        fileToReplacePtr,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
        thumbnailPtr,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
