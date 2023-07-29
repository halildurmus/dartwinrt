// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies whether the query should use the system index of the file
/// system when enumerating content in the folder being queried. The indexer
/// can retrieve results faster but is not available in all file locations.
enum IndexerOption implements WinRTEnum {
  useIndexerWhenAvailable(0),
  onlyUseIndexer(1),
  doNotUseIndexer(2),
  onlyUseIndexerAndOptimizeForIndexedProperties(3);

  @override
  final int value;

  const IndexerOption(this.value);

  factory IndexerOption.from(int value) => IndexerOption.values.byValue(value);
}
