// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Options for how a list of EndpointPair objects is sorted.
///
/// {@category enum}
class HostNameSortOptions extends WinRTFlagsEnum<HostNameSortOptions> {
  const HostNameSortOptions(super.value, {super.name});

  factory HostNameSortOptions.from(int value) =>
      HostNameSortOptions.values.firstWhere((e) => e.value == value,
          orElse: () => HostNameSortOptions(value));

  static const none = HostNameSortOptions(0, name: 'none');
  static const optimizeForLongConnections =
      HostNameSortOptions(2, name: 'optimizeForLongConnections');

  static const List<HostNameSortOptions> values = [
    none,
    optimizeForLongConnections
  ];

  @override
  HostNameSortOptions operator &(HostNameSortOptions other) =>
      HostNameSortOptions(value & other.value);

  @override
  HostNameSortOptions operator |(HostNameSortOptions other) =>
      HostNameSortOptions(value | other.value);
}
