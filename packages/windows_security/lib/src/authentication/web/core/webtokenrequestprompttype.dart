// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the prompt type of a web token request.
enum WebTokenRequestPromptType implements WinRTEnum {
  default_(0),
  forceAuthentication(1);

  @override
  final int value;

  const WebTokenRequestPromptType(this.value);

  factory WebTokenRequestPromptType.from(int value) =>
      WebTokenRequestPromptType.values.byValue(value);
}
