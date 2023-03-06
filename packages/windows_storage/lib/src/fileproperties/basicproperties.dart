// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ibasicproperties.dart';
import 'istorageitemextraproperties.dart';

/// Provides access to the basic properties, like the size of the item or
/// the date the item was last modified, of the item (like a file or
/// folder).
///
/// {@category class}
class BasicProperties extends IInspectable
    implements IBasicProperties, IStorageItemExtraProperties {
  BasicProperties.fromPtr(super.ptr);

  late final _iBasicProperties = IBasicProperties.from(this);

  @override
  int get size => _iBasicProperties.size;

  @override
  DateTime get dateModified => _iBasicProperties.dateModified;

  @override
  DateTime get itemDate => _iBasicProperties.itemDate;

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
