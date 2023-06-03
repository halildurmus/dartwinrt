// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the use of symbols or codes when currency is formatted.
enum CurrencyFormatterMode implements WinRTEnum {
  useSymbol(0),
  useCurrencyCode(1);

  @override
  final int value;

  const CurrencyFormatterMode(this.value);

  factory CurrencyFormatterMode.from(int value) =>
      CurrencyFormatterMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
