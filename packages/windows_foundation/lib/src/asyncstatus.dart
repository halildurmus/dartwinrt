// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'winrt_enum.dart';

/// Specifies the status of an asynchronous operation.
///
/// {@category enum}
enum AsyncStatus implements WinRTEnum {
  started(0),
  completed(1),
  canceled(2),
  error(3);

  @override
  final int value;

  const AsyncStatus(this.value);

  factory AsyncStatus.from(int value) =>
      AsyncStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
