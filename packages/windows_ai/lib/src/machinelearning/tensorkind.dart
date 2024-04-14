// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the list of supported tensor data types.
enum TensorKind implements WinRTEnum {
  undefined(0),
  float(1),
  uint8(2),
  int8(3),
  uint16(4),
  int16(5),
  int32(6),
  int64(7),
  string(8),
  boolean(9),
  float16(10),
  double_(11),
  uint32(12),
  uint64(13),
  complex64(14),
  complex128(15);

  @override
  final int value;

  const TensorKind(this.value);

  factory TensorKind.from(int value) => TensorKind.values.byValue(value);
}
