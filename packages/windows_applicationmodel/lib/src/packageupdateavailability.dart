// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// An enum that indicates if an application has an update, and if the
/// update is required.
enum PackageUpdateAvailability implements WinRTEnum {
  unknown(0),
  noUpdates(1),
  available(2),
  required(3),
  error(4);

  @override
  final int value;

  const PackageUpdateAvailability(this.value);

  factory PackageUpdateAvailability.from(int value) =>
      PackageUpdateAvailability.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
