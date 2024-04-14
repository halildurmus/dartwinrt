// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines errors encountered while parsing JSON data.
enum JsonErrorStatus implements WinRTEnum {
  unknown(0),
  invalidJsonString(1),
  invalidJsonNumber(2),
  jsonValueNotFound(3),
  implementationLimit(4);

  @override
  final int value;

  const JsonErrorStatus(this.value);

  factory JsonErrorStatus.from(int value) =>
      JsonErrorStatus.values.byValue(value);
}
