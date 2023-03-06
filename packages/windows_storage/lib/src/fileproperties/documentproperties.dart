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

import 'idocumentproperties.dart';
import 'istorageitemextraproperties.dart';

/// Provides access to the document-related properties of an item (like a
/// file or folder).
///
/// {@category class}
class DocumentProperties extends IInspectable
    implements IDocumentProperties, IStorageItemExtraProperties {
  DocumentProperties.fromRawPointer(super.ptr);

  late final _iDocumentProperties = IDocumentProperties.from(this);

  @override
  IVector<String> get author => _iDocumentProperties.author;

  @override
  String get title => _iDocumentProperties.title;

  @override
  set title(String value) => _iDocumentProperties.title = value;

  @override
  IVector<String> get keywords => _iDocumentProperties.keywords;

  @override
  String get comment => _iDocumentProperties.comment;

  @override
  set comment(String value) => _iDocumentProperties.comment = value;

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
