// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Contains values that describe the result of a web account enumeration
/// operation (see the FindAllAccountsAsync method).
///
/// {@category enum}
enum FindAllWebAccountsStatus implements WinRTEnum {
  success(0),
  notAllowedByProvider(1),
  notSupportedByProvider(2),
  providerError(3);

  @override
  final int value;

  const FindAllWebAccountsStatus(this.value);

  factory FindAllWebAccountsStatus.from(int value) =>
      FindAllWebAccountsStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
