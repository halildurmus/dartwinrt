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

import 'fileproperties/storageitemcontentproperties.dart';
import 'fileproperties/storageitemthumbnail.dart';
import 'fileproperties/thumbnailmode.dart';
import 'fileproperties/thumbnailoptions.dart';
import 'istorageitemproperties.dart';

/// @nodoc
const IID_IStorageItemProperties2 = '{8e86a951-04b9-4bd2-929d-fef3f71621d0}';

/// {@category interface}
class IStorageItemProperties2 extends IInspectable
    implements IStorageItemProperties {
  // vtable begins at 6, is 3 entries long.
  IStorageItemProperties2.fromPtr(super.ptr);

  factory IStorageItemProperties2.from(IInspectable interface) =>
      IStorageItemProperties2.fromPtr(
          interface.toInterface(IID_IStorageItemProperties2));

  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(
          ThumbnailMode mode) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 mode,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mode,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, mode.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        retValuePtr,
        creator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultOptions(
          ThumbnailMode mode, int requestedSize) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mode,
                            Uint32 requestedSize,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mode, int requestedSize,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, mode.value, requestedSize, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        retValuePtr,
        creator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageItemThumbnail?> getScaledImageAsThumbnailAsync(
      ThumbnailMode mode, int requestedSize, ThumbnailOptions options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mode,
                            Uint32 requestedSize,
                            Uint32 options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mode, int requestedSize,
                    int options, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, mode.value, requestedSize, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        retValuePtr,
        creator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iStorageItemProperties = IStorageItemProperties.from(this);

  @override
  Future<StorageItemThumbnail?>
      getThumbnailAsyncOverloadDefaultSizeDefaultOptions(ThumbnailMode mode) =>
          _iStorageItemProperties
              .getThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode);

  @override
  Future<StorageItemThumbnail?> getThumbnailAsyncOverloadDefaultOptions(
          ThumbnailMode mode, int requestedSize) =>
      _iStorageItemProperties.getThumbnailAsyncOverloadDefaultOptions(
          mode, requestedSize);

  @override
  Future<StorageItemThumbnail?> getThumbnailAsync(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iStorageItemProperties.getThumbnailAsync(mode, requestedSize, options);

  @override
  String get displayName => _iStorageItemProperties.displayName;

  @override
  String get displayType => _iStorageItemProperties.displayType;

  @override
  String get folderRelativeId => _iStorageItemProperties.folderRelativeId;

  @override
  StorageItemContentProperties? get properties =>
      _iStorageItemProperties.properties;
}
