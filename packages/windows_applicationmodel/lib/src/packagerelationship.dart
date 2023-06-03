// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the relationship between packages to be retrieved.
enum PackageRelationship implements WinRTEnum {
  dependencies(0),
  dependents(1),
  all(2);

  @override
  final int value;

  const PackageRelationship(this.value);

  factory PackageRelationship.from(int value) =>
      PackageRelationship.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
