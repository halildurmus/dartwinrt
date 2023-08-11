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

import 'fileattributes.dart';
import 'fileproperties/basicproperties.dart';
import 'istorageitem.dart';
import 'namecollisionoption.dart';
import 'storagedeleteoption.dart';
import 'storagefolder.dart';
import 'storageitemtypes.dart';

/// @nodoc
const IID_IStorageItem2 = '{53f926d2-083c-4283-b45b-81c007237e44}';

class IStorageItem2 extends IInspectable implements IStorageItem {
  // vtable begins at 6, is 2 entries long.
  IStorageItem2.fromPtr(super.ptr);

  factory IStorageItem2.from(IInspectable interface) =>
      interface.cast(IStorageItem2.fromPtr, IID_IStorageItem2);

  Future<StorageFolder?> getParentAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  bool isEqual(IStorageItem? item) {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, VTablePointer item,
                          Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer item,
                  Pointer<Bool> value)>()(ptr.ref.lpVtbl, item.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
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
