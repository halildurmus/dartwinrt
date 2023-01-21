// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the desired accuracy to use when converting latitude and
/// longitude coordinates to a physical location like a city or address.
///
/// {@category enum}
enum MapLocationDesiredAccuracy implements WinRTEnum {
  high(0),
  low(1);

  @override
  final int value;

  const MapLocationDesiredAccuracy(this.value);

  factory MapLocationDesiredAccuracy.from(int value) =>
      MapLocationDesiredAccuracy.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
