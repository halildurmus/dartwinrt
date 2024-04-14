// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines levels of granularity used when retrieving data usage statistics
/// with GetNetworkUsageAsync.
enum DataUsageGranularity implements WinRTEnum {
  perMinute(0),
  perHour(1),
  perDay(2),
  total(3);

  @override
  final int value;

  const DataUsageGranularity(this.value);

  factory DataUsageGranularity.from(int value) =>
      DataUsageGranularity.values.byValue(value);
}
