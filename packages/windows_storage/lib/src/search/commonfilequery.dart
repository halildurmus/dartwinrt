// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

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
