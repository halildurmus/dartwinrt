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

import 'fileproperties/storageitemcontentproperties.dart';
import 'fileproperties/storageitemthumbnail.dart';
import 'fileproperties/thumbnailmode.dart';
import 'fileproperties/thumbnailoptions.dart';

/// @nodoc
const IID_IStorageItemProperties = '{86664478-8029-46fe-a789-1c2f3e2ffb5c}';

class IStorageItemProperties extends IInspectable {
  IStorageItemProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageItemPropertiesVtbl>().ref;

  final _IStorageItemPropertiesVtbl _vtable;

  factory IStorageItemProperties.from(IInspectable interface) => interface.cast(
      IStorageItemProperties.fromPtr, IID_IStorageItemProperties);

  Future<StorageItemThumbnail?>
      getThumbnailAsyncOverloadDefaultSizeDefaultOptions(ThumbnailMode mode) {
    final operation = calloc<COMObject>();

    final hr =
        _vtable.GetThumbnailAsyncOverloadDefaultSizeDefaultOptions.asFunction<
            int Function(VTablePointer lpVtbl, int mode,
                Pointer<COMObject> operation)>()(lpVtbl, mode.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        operation,
        tResultObjectCreator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageItemThumbnail?> getThumbnailAsyncOverloadDefaultOptions(
      ThumbnailMode mode, int requestedSize) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetThumbnailAsyncOverloadDefaultOptions.asFunction<
            int Function(VTablePointer lpVtbl, int mode, int requestedSize,
                Pointer<COMObject> operation)>()(
        lpVtbl, mode.value, requestedSize, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        operation,
        tResultObjectCreator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageItemThumbnail?> getThumbnailAsync(
      ThumbnailMode mode, int requestedSize, ThumbnailOptions options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetThumbnailAsync.asFunction<
            int Function(VTablePointer lpVtbl, int mode, int requestedSize,
                int options, Pointer<COMObject> operation)>()(
        lpVtbl, mode.value, requestedSize, options.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        operation,
        tResultObjectCreator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  String get displayName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayType {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get folderRelativeId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_FolderRelativeId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  StorageItemContentProperties? get properties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Properties.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageItemContentProperties.fromPtr(value);
  }
}

final class _IStorageItemPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 mode,
                  Pointer<COMObject> operation)>>
      GetThumbnailAsyncOverloadDefaultSizeDefaultOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 mode,
                  Uint32 requestedSize, Pointer<COMObject> operation)>>
      GetThumbnailAsyncOverloadDefaultOptions;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 mode,
              Uint32 requestedSize,
              Uint32 options,
              Pointer<COMObject> operation)>> GetThumbnailAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_FolderRelativeId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
}
