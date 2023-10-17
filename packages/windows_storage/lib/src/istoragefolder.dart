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

import 'creationcollisionoption.dart';
import 'fileattributes.dart';
import 'fileproperties/basicproperties.dart';
import 'istorageitem.dart';
import 'namecollisionoption.dart';
import 'storagedeleteoption.dart';
import 'storagefile.dart';
import 'storagefolder.dart';
import 'storageitemtypes.dart';

/// @nodoc
const IID_IStorageFolder = '{72d1cb78-b3ef-4f75-a80b-6fd9dae2944b}';

class IStorageFolder extends IInspectable implements IStorageItem {
  IStorageFolder.fromPtr(super.ptr);

  factory IStorageFolder.from(IInspectable interface) =>
      interface.cast(IStorageFolder.fromPtr, IID_IStorageFolder);

  Future<StorageFile?> createFileAsyncOverloadDefaultOptions(
      String desiredName) {
    final operation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        Pointer<COMObject> operation)>()(
            lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createFileAsync(
      String desiredName, CreationCollisionOption options) {
    final operation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Int32 options,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        int options, Pointer<COMObject> operation)>()(
            lpVtbl, desiredName.toHString(), options.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderAsyncOverloadDefaultOptions(
      String desiredName) {
    final operation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        Pointer<COMObject> operation)>()(
            lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderAsync(
      String desiredName, CreationCollisionOption options) {
    final operation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Int32 options,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        int options, Pointer<COMObject> operation)>()(
            lpVtbl, desiredName.toHString(), options.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> getFileAsync(String name) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> operation)>()(
        lpVtbl, name.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> getFolderAsync(String name) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> operation)>()(
        lpVtbl, name.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IStorageItem?> getItemAsync(String name) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> operation)>()(
        lpVtbl, name.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromPtr(operation,
        creator: IStorageItem.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<List<StorageFile?>>
      getFilesAsyncOverloadDefaultOptionsStartAndCount() {
    final operation = calloc<COMObject>();

    final hr = vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>>
      getFoldersAsyncOverloadDefaultOptionsStartAndCount() {
    final operation = calloc<COMObject>();

    final hr = vtable
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFolder.fromPtr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<IStorageItem?>> getItemsAsyncOverloadDefaultStartAndCount() {
    final operation = calloc<COMObject>();

    final hr = vtable
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<IStorageItem?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: IStorageItem.fromPtr,
            iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

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
}
