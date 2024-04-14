// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the gender preferences available for speech synthesis (if
/// supported by the specified speech synthesis engine).
enum VoiceGender implements WinRTEnum {
  male(0),
  female(1);

  @override
  final int value;

  const VoiceGender(this.value);

  factory VoiceGender.from(int value) => VoiceGender.values.byValue(value);
}
