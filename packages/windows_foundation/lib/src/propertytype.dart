// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'winrt_enum.dart';

/// Specifies property value types.
///
/// {@category enum}
enum PropertyType implements WinRTEnum {
  empty(0),
  uint8(1),
  int16(2),
  uint16(3),
  int32(4),
  uint32(5),
  int64(6),
  uint64(7),
  single(8),
  double_(9),
  char16(10),
  boolean(11),
  string(12),
  inspectable(13),
  dateTime(14),
  timeSpan(15),
  guid(16),
  point(17),
  size(18),
  rect(19),
  otherType(20),
  uint8Array(1025),
  int16Array(1026),
  uint16Array(1027),
  int32Array(1028),
  uint32Array(1029),
  int64Array(1030),
  uint64Array(1031),
  singleArray(1032),
  doubleArray(1033),
  char16Array(1034),
  booleanArray(1035),
  stringArray(1036),
  inspectableArray(1037),
  dateTimeArray(1038),
  timeSpanArray(1039),
  guidArray(1040),
  pointArray(1041),
  sizeArray(1042),
  rectArray(1043),
  otherTypeArray(1044);

  @override
  final int value;

  const PropertyType(this.value);

  factory PropertyType.from(int value) =>
      PropertyType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
