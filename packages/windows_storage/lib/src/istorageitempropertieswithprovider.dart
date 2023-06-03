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
import 'storageprovider.dart';

/// @nodoc
const IID_IStorageItemPropertiesWithProvider =
    '{861bf39b-6368-4dee-b40e-74684a5ce714}';

class IStorageItemPropertiesWithProvider extends IInspectable
    implements IStorageItemProperties {
  // vtable begins at 6, is 1 entries long.
  IStorageItemPropertiesWithProvider.fromPtr(super.ptr);

  factory IStorageItemPropertiesWithProvider.from(IInspectable interface) =>
      IStorageItemPropertiesWithProvider.fromPtr(
          interface.toInterface(IID_IStorageItemPropertiesWithProvider));

  StorageProvider? get provider {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageProvider.fromPtr(retValuePtr);
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
