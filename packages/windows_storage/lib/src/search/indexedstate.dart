// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

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
