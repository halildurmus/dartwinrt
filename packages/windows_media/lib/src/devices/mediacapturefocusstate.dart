// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the different focus states the capture device can be in.
enum MediaCaptureFocusState implements WinRTEnum {
  uninitialized(0),
  lost(1),
  searching(2),
  focused(3),
  failed(4);

  @override
  final int value;

  const MediaCaptureFocusState(this.value);

  factory MediaCaptureFocusState.from(int value) =>
      MediaCaptureFocusState.values.byValue(value);
}
