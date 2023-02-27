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
import 'istorageitem.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IStorageItem2 = '{53f926d2-083c-4283-b45b-81c007237e44}';

/// {@category interface}
class IStorageItem2 extends IInspectable implements IStorageItem {
  // vtable begins at 6, is 2 entries long.
  IStorageItem2.fromRawPointer(super.ptr);

  factory IStorageItem2.from(IInspectable interface) =>
      IStorageItem2.fromRawPointer(interface.toInterface(IID_IStorageItem2));

  Future<StorageFolder?> getParentAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<StorageFolder?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromRawPointer(
        retValuePtr,
        creator: StorageFolder.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  bool isEqual(IStorageItem? item) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL item,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, LPVTBL item, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl,
          item == null ? nullptr : item.ptr.ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
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
