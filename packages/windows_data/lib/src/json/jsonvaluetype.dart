// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the JSON value type of a JsonValue object.
///
/// {@category enum}
enum JsonValueType implements WinRTEnum {
  null_(0),
  boolean(1),
  number(2),
  string(3),
  array(4),
  object(5);

  @override
  final int value;

  const JsonValueType(this.value);

  factory JsonValueType.from(int value) =>
      JsonValueType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
