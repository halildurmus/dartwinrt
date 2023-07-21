// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Used with the NetworkUsageStates structure to define the desired roaming
/// state and shared state of a network connection.
enum TriStates implements WinRTEnum {
  doNotCare(0),
  no(1),
  yes(2);

  @override
  final int value;

  const TriStates(this.value);

  factory TriStates.from(int value) =>
      TriStates.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
