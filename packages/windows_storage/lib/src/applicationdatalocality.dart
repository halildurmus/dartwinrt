// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the type of an application data store.
enum ApplicationDataLocality implements WinRTEnum {
  local(0),
  roaming(1),
  temporary(2),
  localCache(3),
  sharedLocal(4);

  @override
  final int value;

  const ApplicationDataLocality(this.value);

  factory ApplicationDataLocality.from(int value) =>
      ApplicationDataLocality.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
