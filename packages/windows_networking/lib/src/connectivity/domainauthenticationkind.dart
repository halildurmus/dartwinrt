// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that specify a domain authentication method.
///
/// {@category enum}
enum DomainAuthenticationKind implements WinRTEnum {
  none(0),
  ldap(1),
  tls(2);

  @override
  final int value;

  const DomainAuthenticationKind(this.value);

  factory DomainAuthenticationKind.from(int value) =>
      DomainAuthenticationKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
