// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values for types of media categories.
enum MediaCategory implements WinRTEnum {
  other(0),
  communications(1),
  media(2),
  gameChat(3),
  speech(4),
  farFieldSpeech(5),
  uniformSpeech(6),
  voiceTyping(7);

  @override
  final int value;

  const MediaCategory(this.value);

  factory MediaCategory.from(int value) => MediaCategory.values.byValue(value);
}
