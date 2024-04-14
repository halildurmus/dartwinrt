// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'documentproperties.dart';
import 'imageproperties.dart';
import 'istorageitemcontentproperties.dart';
import 'istorageitemextraproperties.dart';
import 'musicproperties.dart';
import 'videoproperties.dart';

/// Provides access to the content-related properties of an item (like a file or
/// folder).
class StorageItemContentProperties extends IInspectable
    implements IStorageItemContentProperties, IStorageItemExtraProperties {
  StorageItemContentProperties.fromPtr(super.ptr);

  late final _iStorageItemContentProperties =
      IStorageItemContentProperties.from(this);

  @override
  Future<MusicProperties?> getMusicPropertiesAsync() =>
      _iStorageItemContentProperties.getMusicPropertiesAsync();

  @override
  Future<VideoProperties?> getVideoPropertiesAsync() =>
      _iStorageItemContentProperties.getVideoPropertiesAsync();

  @override
  Future<ImageProperties?> getImagePropertiesAsync() =>
      _iStorageItemContentProperties.getImagePropertiesAsync();

  @override
  Future<DocumentProperties?> getDocumentPropertiesAsync() =>
      _iStorageItemContentProperties.getDocumentPropertiesAsync();

  late final _iStorageItemExtraProperties =
      IStorageItemExtraProperties.from(this);

  @override
  Future<IMap<String, Object?>> retrievePropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iStorageItemExtraProperties
          .retrievePropertiesAsync(propertiesToRetrieve);

  @override
  Future<void> savePropertiesAsync(
          IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) =>
      _iStorageItemExtraProperties.savePropertiesAsync(propertiesToSave);

  @override
  Future<void> savePropertiesAsyncOverloadDefault() =>
      _iStorageItemExtraProperties.savePropertiesAsyncOverloadDefault();
}
