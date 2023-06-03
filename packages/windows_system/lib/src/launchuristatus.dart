// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the result of activating an application for a URI.
enum LaunchUriStatus implements WinRTEnum {
  success(0),
  appUnavailable(1),
  protocolUnavailable(2),
  unknown(3);

  @override
  final int value;

  const LaunchUriStatus(this.value);

  factory LaunchUriStatus.from(int value) =>
      LaunchUriStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
