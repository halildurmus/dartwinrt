// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the state of a WebAccount object.
enum WebAccountState implements WinRTEnum {
  none(0),
  connected(1),
  error(2);

  @override
  final int value;

  const WebAccountState(this.value);

  factory WebAccountState.from(int value) =>
      WebAccountState.values.byValue(value);
}
