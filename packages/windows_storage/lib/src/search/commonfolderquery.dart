// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies how to group files into folders in the query results and
/// determines whether the query is shallow or deep. Query results for deep
/// queries include all files in all of the subfolders of the current folder,
/// grouped into folders according to the specified option.
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
      CommonFolderQuery.values.byValue(value);
}
