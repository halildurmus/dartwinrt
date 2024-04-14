// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes a known folder's access to a single capability.
enum KnownFoldersAccessStatus implements WinRTEnum {
  deniedBySystem(0),
  notDeclaredByApp(1),
  deniedByUser(2),
  userPromptRequired(3),
  allowed(4),
  allowedPerAppFolder(5);

  @override
  final int value;

  const KnownFoldersAccessStatus(this.value);

  factory KnownFoldersAccessStatus.from(int value) =>
      KnownFoldersAccessStatus.values.byValue(value);
}
