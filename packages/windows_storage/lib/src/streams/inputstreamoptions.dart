// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the read options for an input stream.
final class InputStreamOptions extends WinRTFlagsEnum<InputStreamOptions> {
  const InputStreamOptions(super.value, {super.name});

  factory InputStreamOptions.from(int value) =>
      InputStreamOptions.values.firstWhere((e) => e.value == value,
          orElse: () => InputStreamOptions(value));

  static const none = InputStreamOptions(0, name: 'none');
  static const partial = InputStreamOptions(1, name: 'partial');
  static const readAhead = InputStreamOptions(2, name: 'readAhead');

  static const List<InputStreamOptions> values = [none, partial, readAhead];

  @override
  InputStreamOptions operator &(InputStreamOptions other) =>
      InputStreamOptions(value & other.value);

  @override
  InputStreamOptions operator |(InputStreamOptions other) =>
      InputStreamOptions(value | other.value);
}
