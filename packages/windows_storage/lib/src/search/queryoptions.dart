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

import '../fileproperties/propertyprefetchoptions.dart';
import '../fileproperties/thumbnailmode.dart';
import '../fileproperties/thumbnailoptions.dart';
import 'commonfilequery.dart';
import 'commonfolderquery.dart';
import 'datestackoption.dart';
import 'folderdepth.dart';
import 'indexeroption.dart';
import 'iqueryoptions.dart';
import 'iqueryoptionsfactory.dart';
import 'iqueryoptionswithproviderfilter.dart';
import 'sortentry.dart';

/// Specifies the parameters of a search query for enumerating the contents
/// of storage folders.
///
/// {@category class}
class QueryOptions extends IInspectable
    implements IQueryOptions, IQueryOptionsWithProviderFilter {
  QueryOptions() : super(activateClass(_className));
  QueryOptions.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Search.QueryOptions';

  factory QueryOptions.createCommonFileQuery(
          CommonFileQuery query, IIterable<String> fileTypeFilter) =>
      createActivationFactory(IQueryOptionsFactory.fromPtr, _className,
              IID_IQueryOptionsFactory)
          .createCommonFileQuery(query, fileTypeFilter);

  factory QueryOptions.createCommonFolderQuery(CommonFolderQuery query) =>
      createActivationFactory(IQueryOptionsFactory.fromPtr, _className,
              IID_IQueryOptionsFactory)
          .createCommonFolderQuery(query);

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

  late final _iQueryOptionsWithProviderFilter =
      IQueryOptionsWithProviderFilter.from(this);

  @override
  IVector<String> get storageProviderIdFilter =>
      _iQueryOptionsWithProviderFilter.storageProviderIdFilter;
}
