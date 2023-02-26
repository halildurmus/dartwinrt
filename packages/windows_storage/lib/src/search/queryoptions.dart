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

import '../fileproperties/enums.g.dart';
import 'enums.g.dart';
import 'iqueryoptions.dart';
import 'iqueryoptionsfactory.dart';
import 'iqueryoptionswithproviderfilter.dart';
import 'structs.g.dart';

/// Specifies the parameters of a search query for enumerating the contents
/// of storage folders.
///
/// {@category class}
class QueryOptions extends IInspectable
    implements IQueryOptions, IQueryOptionsWithProviderFilter {
  QueryOptions() : super(activateClass(_className));
  QueryOptions.fromRawPointer(super.ptr);

  static const _className = 'Windows.Storage.Search.QueryOptions';

  // IQueryOptionsFactory methods
  factory QueryOptions.createCommonFileQuery(
      CommonFileQuery query, IIterable<String> fileTypeFilter) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IQueryOptionsFactory);
    final object = IQueryOptionsFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createCommonFileQuery(query, fileTypeFilter);
    } finally {
      object.release();
    }
  }

  factory QueryOptions.createCommonFolderQuery(CommonFolderQuery query) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IQueryOptionsFactory);
    final object = IQueryOptionsFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createCommonFolderQuery(query);
    } finally {
      object.release();
    }
  }

  // IQueryOptions methods
  late final _iQueryOptions = IQueryOptions.from(this);

  @override
  IVector<String> get fileTypeFilter => _iQueryOptions.fileTypeFilter;

  @override
  FolderDepth get folderDepth => _iQueryOptions.folderDepth;

  @override
  set folderDepth(FolderDepth value) => _iQueryOptions.folderDepth = value;

  @override
  String get applicationSearchFilter => _iQueryOptions.applicationSearchFilter;

  @override
  set applicationSearchFilter(String value) =>
      _iQueryOptions.applicationSearchFilter = value;

  @override
  String get userSearchFilter => _iQueryOptions.userSearchFilter;

  @override
  set userSearchFilter(String value) => _iQueryOptions.userSearchFilter = value;

  @override
  String get language => _iQueryOptions.language;

  @override
  set language(String value) => _iQueryOptions.language = value;

  @override
  IndexerOption get indexerOption => _iQueryOptions.indexerOption;

  @override
  set indexerOption(IndexerOption value) =>
      _iQueryOptions.indexerOption = value;

  @override
  IVector<SortEntry> get sortOrder => _iQueryOptions.sortOrder;

  @override
  String get groupPropertyName => _iQueryOptions.groupPropertyName;

  @override
  DateStackOption get dateStackOption => _iQueryOptions.dateStackOption;

  @override
  String saveToString() => _iQueryOptions.saveToString();

  @override
  void loadFromString(String value) => _iQueryOptions.loadFromString(value);

  @override
  void setThumbnailPrefetch(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iQueryOptions.setThumbnailPrefetch(mode, requestedSize, options);

  @override
  void setPropertyPrefetch(PropertyPrefetchOptions options,
          IIterable<String>? propertiesToRetrieve) =>
      _iQueryOptions.setPropertyPrefetch(options, propertiesToRetrieve);

  // IQueryOptionsWithProviderFilter methods
  late final _iQueryOptionsWithProviderFilter =
      IQueryOptionsWithProviderFilter.from(this);

  @override
  IVector<String> get storageProviderIdFilter =>
      _iQueryOptionsWithProviderFilter.storageProviderIdFilter;
}
