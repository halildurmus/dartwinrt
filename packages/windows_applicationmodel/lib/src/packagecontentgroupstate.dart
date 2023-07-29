// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the staging state of the package content group.
enum PackageContentGroupState implements WinRTEnum {
  notStaged(0),
  queued(1),
  staging(2),
  staged(3);

  @override
  final int value;

  const PackageContentGroupState(this.value);

  factory PackageContentGroupState.from(int value) =>
      PackageContentGroupState.values.byValue(value);
}
