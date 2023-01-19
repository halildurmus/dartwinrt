// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the gender preferences available for speech synthesis (if
/// supported by the specified speech synthesis engine).
///
/// {@category enum}
enum VoiceGender implements WinRTEnum {
  male(0),
  female(1);

  @override
  final int value;

  const VoiceGender(this.value);

  factory VoiceGender.from(int value) =>
      VoiceGender.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
