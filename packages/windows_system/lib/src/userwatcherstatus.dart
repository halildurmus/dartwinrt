// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the status of a user watcher.
enum UserWatcherStatus implements WinRTEnum {
  created(0),
  started(1),
  enumerationCompleted(2),
  stopping(3),
  stopped(4),
  aborted(5);

  @override
  final int value;

  const UserWatcherStatus(this.value);

  factory UserWatcherStatus.from(int value) =>
      UserWatcherStatus.values.byValue(value);
}
