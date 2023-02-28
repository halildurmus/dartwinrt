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
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'fileproperties/basicproperties.dart';
import 'istoragefolder.dart';
import 'istorageitem.dart';
import 'storagefile.dart';
import 'storagestreamtransaction.dart';
import 'streams/iinputstream.dart';
import 'streams/iinputstreamreference.dart';
import 'streams/irandomaccessstream.dart';
import 'streams/irandomaccessstreamreference.dart';
import 'streams/irandomaccessstreamwithcontenttype.dart';

/// @nodoc
const IID_IStorageFile = '{fa3f6186-4214-428c-a64c-14c9ac7315ea}';

/// {@category interface}
class IStorageFile extends IInspectable
    implements
        IStorageItem,
        IRandomAccessStreamReference,
        IInputStreamReference {
  // vtable begins at 6, is 12 entries long.
  IStorageFile.fromRawPointer(super.ptr);

  factory IStorageFile.from(IInspectable interface) =>
      IStorageFile.fromRawPointer(interface.toInterface(IID_IStorageFile));

  String get fileType {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get contentType {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  Future<IRandomAccessStream?> openAsync(FileAccessMode accessMode) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IRandomAccessStream?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 accessMode,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int accessMode,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, accessMode.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromRawPointer(
        retValuePtr,
        creator: IRandomAccessStream.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageStreamTransaction?> openTransactedWriteAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageStreamTransaction?>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<StorageStreamTransaction?>.fromRawPointer(retValuePtr,
            creator: StorageStreamTransaction.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> copyOverloadDefaultNameAndOptions(
      IStorageFolder? destinationFolder) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final destinationFolderPtr =
        destinationFolder == null ? nullptr : destinationFolder.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL destinationFolder,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL destinationFolder,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, destinationFolderPtr, retValuePtr);

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

  Future<StorageFile?> copyOverloadDefaultOptions(
      IStorageFolder? destinationFolder, String desiredNewName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final destinationFolderPtr =
        destinationFolder == null ? nullptr : destinationFolder.ptr.ref.lpVtbl;
    final desiredNewNameHString = desiredNewName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL destinationFolder,
                            IntPtr desiredNewName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL destinationFolder,
                    int desiredNewName, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        destinationFolderPtr,
        desiredNewNameHString,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNewNameHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> copyOverload(IStorageFolder? destinationFolder,
      String desiredNewName, NameCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final destinationFolderPtr =
        destinationFolder == null ? nullptr : destinationFolder.ptr.ref.lpVtbl;
    final desiredNewNameHString = desiredNewName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL destinationFolder,
                            IntPtr desiredNewName,
                            Int32 option,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    LPVTBL destinationFolder,
                    int desiredNewName,
                    int option,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        destinationFolderPtr, desiredNewNameHString, option.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNewNameHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<void> copyAndReplaceAsync(IStorageFile? fileToReplace) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final fileToReplacePtr =
        fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL fileToReplace,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL fileToReplace,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, fileToReplacePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> moveOverloadDefaultNameAndOptions(
      IStorageFolder? destinationFolder) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final destinationFolderPtr =
        destinationFolder == null ? nullptr : destinationFolder.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(14)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL destinationFolder,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL destinationFolder,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, destinationFolderPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> moveOverloadDefaultOptions(
      IStorageFolder? destinationFolder, String desiredNewName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final destinationFolderPtr =
        destinationFolder == null ? nullptr : destinationFolder.ptr.ref.lpVtbl;
    final desiredNewNameHString = desiredNewName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL destinationFolder,
                            IntPtr desiredNewName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL destinationFolder,
                    int desiredNewName, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        destinationFolderPtr,
        desiredNewNameHString,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNewNameHString);

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> moveOverload(IStorageFolder? destinationFolder,
      String desiredNewName, NameCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final destinationFolderPtr =
        destinationFolder == null ? nullptr : destinationFolder.ptr.ref.lpVtbl;
    final desiredNewNameHString = desiredNewName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL destinationFolder,
                            IntPtr desiredNewName,
                            Int32 option,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    LPVTBL destinationFolder,
                    int desiredNewName,
                    int option,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        destinationFolderPtr, desiredNewNameHString, option.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNewNameHString);

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> moveAndReplaceAsync(IStorageFile? fileToReplace) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final fileToReplacePtr =
        fileToReplace == null ? nullptr : fileToReplace.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL fileToReplace,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL fileToReplace,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, fileToReplacePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  // IStorageItem methods
  late final _iStorageItem = IStorageItem.from(this);

  @override
  Future<void> renameAsyncOverloadDefaultOptions(String desiredName) =>
      _iStorageItem.renameAsyncOverloadDefaultOptions(desiredName);

  @override
  Future<void> renameAsync(String desiredName, NameCollisionOption option) =>
      _iStorageItem.renameAsync(desiredName, option);

  @override
  Future<void> deleteAsyncOverloadDefaultOptions() =>
      _iStorageItem.deleteAsyncOverloadDefaultOptions();

  @override
  Future<void> deleteAsync(StorageDeleteOption option) =>
      _iStorageItem.deleteAsync(option);

  @override
  Future<BasicProperties?> getBasicPropertiesAsync() =>
      _iStorageItem.getBasicPropertiesAsync();

  @override
  String get name => _iStorageItem.name;

  @override
  String get path => _iStorageItem.path;

  @override
  FileAttributes get attributes => _iStorageItem.attributes;

  @override
  DateTime get dateCreated => _iStorageItem.dateCreated;

  @override
  bool isOfType(StorageItemTypes type) => _iStorageItem.isOfType(type);

  // IRandomAccessStreamReference methods
  late final _iRandomAccessStreamReference =
      IRandomAccessStreamReference.from(this);

  @override
  Future<IRandomAccessStreamWithContentType?> openReadAsync() =>
      _iRandomAccessStreamReference.openReadAsync();

  // IInputStreamReference methods
  late final _iInputStreamReference = IInputStreamReference.from(this);

  @override
  Future<IInputStream?> openSequentialReadAsync() =>
      _iInputStreamReference.openSequentialReadAsync();
}
