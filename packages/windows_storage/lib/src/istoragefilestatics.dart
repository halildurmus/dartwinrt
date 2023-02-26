// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

import 'istoragefile.dart';
import 'storagefile.dart';
import 'streams/irandomaccessstreamreference.dart';

/// @nodoc
const IID_IStorageFileStatics = '{5984c710-daf2-43c8-8bb4-a4d3eacfd03f}';

/// {@category interface}
class IStorageFileStatics extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IStorageFileStatics.fromRawPointer(super.ptr);

  factory IStorageFileStatics.from(IInspectable interface) =>
      IStorageFileStatics.fromRawPointer(
          interface.toInterface(IID_IStorageFileStatics));

  Future<StorageFile?> getFileFromPathAsync(String path) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final pathHString = convertToHString(path);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr path, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int path, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, pathHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(pathHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> getFileFromApplicationUriAsync(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final uriUri = uri == null ? null : winrt_uri.Uri.createUri(uri.toString());

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL uri, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL uri, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    uriUri?.release();

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> createStreamedFileAsync(
      String displayNameWithExtension,
      Pointer<NativeFunction<StreamedFileDataRequestedHandler>> dataRequested,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final displayNameWithExtensionHString =
        convertToHString(displayNameWithExtension);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL,
                            IntPtr displayNameWithExtension,
                            Pointer<
                                    NativeFunction<
                                        StreamedFileDataRequestedHandler>>
                                dataRequested,
                            LPVTBL thumbnail,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL,
                    int displayNameWithExtension,
                    Pointer<NativeFunction<StreamedFileDataRequestedHandler>>
                        dataRequested,
                    LPVTBL thumbnail,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        displayNameWithExtensionHString,
        dataRequested,
        thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(displayNameWithExtensionHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> replaceWithStreamedFileAsync(
      IStorageFile? fileToReplace,
      Pointer<NativeFunction<StreamedFileDataRequestedHandler>> dataRequested,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL,
                            LPVTBL fileToReplace,
                            Pointer<
                                    NativeFunction<
                                        StreamedFileDataRequestedHandler>>
                                dataRequested,
                            LPVTBL thumbnail,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL,
                    LPVTBL fileToReplace,
                    Pointer<NativeFunction<StreamedFileDataRequestedHandler>>
                        dataRequested,
                    LPVTBL thumbnail,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl,
        dataRequested,
        thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> createStreamedFileFromUriAsync(
      String displayNameWithExtension,
      Uri? uri,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final displayNameWithExtensionHString =
        convertToHString(displayNameWithExtension);
    final uriUri = uri == null ? null : winrt_uri.Uri.createUri(uri.toString());

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL,
                                IntPtr displayNameWithExtension,
                                LPVTBL uri,
                                LPVTBL thumbnail,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, int displayNameWithExtension,
                        LPVTBL uri, LPVTBL thumbnail, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            displayNameWithExtensionHString,
            uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
            thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(displayNameWithExtensionHString);
    uriUri?.release();

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> replaceWithStreamedFileFromUriAsync(
      IStorageFile? fileToReplace,
      Uri? uri,
      IRandomAccessStreamReference? thumbnail) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();

    final uriUri = uri == null ? null : winrt_uri.Uri.createUri(uri.toString());

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL,
                                LPVTBL fileToReplace,
                                LPVTBL uri,
                                LPVTBL thumbnail,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, LPVTBL fileToReplace, LPVTBL uri,
                        LPVTBL thumbnail, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl,
            uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
            thumbnail == null ? nullptr : thumbnail.ptr.ref.lpVtbl,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    uriUri?.release();

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
