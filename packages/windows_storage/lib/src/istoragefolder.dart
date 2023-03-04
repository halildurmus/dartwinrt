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

/// {@category interface}
class IStorageFolder extends IInspectable implements IStorageItem {
  // vtable begins at 6, is 10 entries long.
  IStorageFolder.fromRawPointer(super.ptr);

  factory IStorageFolder.from(IInspectable interface) =>
      IStorageFolder.fromRawPointer(interface.toInterface(IID_IStorageFolder));

  Future<StorageFile?> createFileAsyncOverloadDefaultOptions(
      String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final desiredNameHString = desiredName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr desiredName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int desiredName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, desiredNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> createFileAsync(
      String desiredName, CreationCollisionOption options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final desiredNameHString = desiredName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr desiredName,
                            Int32 options, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int desiredName, int options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, desiredNameHString, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFolder?> createFolderAsyncOverloadDefaultOptions(
      String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final desiredNameHString = desiredName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr desiredName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int desiredName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, desiredNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHString);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFolder?> createFolderAsync(
      String desiredName, CreationCollisionOption options) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final desiredNameHString = desiredName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr desiredName,
                            Int32 options, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int desiredName, int options,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, desiredNameHString, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(desiredNameHString);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFile?> getFileAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFile?>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    final asyncOperation = IAsyncOperation<StorageFile?>.fromRawPointer(
        retValuePtr,
        creator: StorageFile.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<StorageFolder?> getFolderAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<IStorageItem?> getItemAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IStorageItem?>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromRawPointer(
        retValuePtr,
        creator: IStorageItem.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<List<StorageFile>> getFilesAsyncOverloadDefaultOptionsStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFile>>();

    final hr = ptr.ref.vtable
            .elementAt(13)
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
        IAsyncOperation<IVectorView<StorageFile>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: StorageFile.fromRawPointer,
                iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<StorageFolder>>
      getFoldersAsyncOverloadDefaultOptionsStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageFolder>>();

    final hr = ptr.ref.vtable
            .elementAt(14)
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
        IAsyncOperation<IVectorView<StorageFolder>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: StorageFolder.fromRawPointer,
                iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<IStorageItem>> getItemsAsyncOverloadDefaultStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<IStorageItem>>();

    final hr = ptr.ref.vtable
            .elementAt(15)
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
        IAsyncOperation<IVectorView<IStorageItem>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: IStorageItem.fromRawPointer,
                iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

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
}
