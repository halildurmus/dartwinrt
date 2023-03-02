// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies how to sort the files in the query results and determines
/// whether the query is shallow or deep. Query results for deep queries
/// include all files in all of the subfolders of the current folder, sorted
/// according to the specified option.
///
/// {@category enum}
enum CommonFileQuery implements WinRTEnum {
  defaultQuery(0),
  orderByName(1),
  orderByTitle(2),
  orderByMusicProperties(3),
  orderBySearchRank(4),
  orderByDate(5);

  @override
  final int value;

  const CommonFileQuery(this.value);

  factory CommonFileQuery.from(int value) =>
      CommonFileQuery.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies how to group files into folders in the query results and
/// determines whether the query is shallow or deep. Query results for deep
/// queries include all files in all of the subfolders of the current
/// folder, grouped into folders according to the specified option.
///
/// {@category enum}
enum CommonFolderQuery implements WinRTEnum {
  defaultQuery(0),
  groupByYear(100),
  groupByMonth(101),
  groupByArtist(102),
  groupByAlbum(103),
  groupByAlbumArtist(104),
  groupByComposer(105),
  groupByGenre(106),
  groupByPublishedYear(107),
  groupByRating(108),
  groupByTag(109),
  groupByAuthor(110),
  groupByType(111);

  @override
  final int value;

  const CommonFolderQuery(this.value);

  factory CommonFolderQuery.from(int value) =>
      CommonFolderQuery.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates the unit of time used to group files into folders if a
/// CommonFolderQuery based on date is used to create a QueryOptions object.
///
/// {@category enum}
enum DateStackOption implements WinRTEnum {
  none(0),
  year(1),
  month(2);

  @override
  final int value;

  const DateStackOption(this.value);

  factory DateStackOption.from(int value) =>
      DateStackOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates whether all files and subfolders of the folder being queried
/// will be enumerated or if only the top-level files and subfolders will be
/// enumerated.
///
/// {@category enum}
enum FolderDepth implements WinRTEnum {
  shallow(0),
  deep(1);

  @override
  final int value;

  const FolderDepth(this.value);

  factory FolderDepth.from(int value) =>
      FolderDepth.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates whether a StorageFolder is included in the system index.
///
/// {@category enum}
enum IndexedState implements WinRTEnum {
  unknown(0),
  notIndexed(1),
  partiallyIndexed(2),
  fullyIndexed(3);

  @override
  final int value;

  const IndexedState(this.value);

  factory IndexedState.from(int value) =>
      IndexedState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies whether the query should use the system index of the file
/// system when enumerating content in the folder being queried. The indexer
/// can retrieve results faster but is not available in all file locations.
///
/// {@category enum}
enum IndexerOption implements WinRTEnum {
  useIndexerWhenAvailable(0),
  onlyUseIndexer(1),
  doNotUseIndexer(2),
  onlyUseIndexerAndOptimizeForIndexedProperties(3);

  @override
  final int value;

  const IndexerOption(this.value);

  factory IndexerOption.from(int value) =>
      IndexerOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
