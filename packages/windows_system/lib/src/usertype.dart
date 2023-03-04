// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents user types.
///
/// {@category enum}
enum UserType implements WinRTEnum {
  localUser(0),
  remoteUser(1),
  localGuest(2),
  remoteGuest(3),
  systemManaged(4);

  @override
  final int value;

  const UserType(this.value);

  factory UserType.from(int value) =>
      UserType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
