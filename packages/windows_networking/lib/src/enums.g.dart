// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// The type of a HostName object.
///
/// {@category enum}
enum HostNameType implements WinRTEnum {
  domainName(0),
  ipv4(1),
  ipv6(2),
  bluetooth(3);

  @override
  final int value;

  const HostNameType(this.value);

  factory HostNameType.from(int value) =>
      HostNameType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
