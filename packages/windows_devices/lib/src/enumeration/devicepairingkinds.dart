// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the kinds of pairing supported by your application or
/// requested by the system. As an input value, use this value to indicate
/// what kinds of pairing your application supports. When this datatype is
/// received as an output value, it indicates the kind of pairing requested
/// by the system. In this case, your code will need to respond accordingly.
///
/// {@category enum}
class DevicePairingKinds extends WinRTFlagsEnum<DevicePairingKinds> {
  const DevicePairingKinds(super.value, {super.name});

  factory DevicePairingKinds.from(int value) =>
      DevicePairingKinds.values.firstWhere((e) => e.value == value,
          orElse: () => DevicePairingKinds(value));

  static const none = DevicePairingKinds(0, name: 'none');
  static const confirmOnly = DevicePairingKinds(1, name: 'confirmOnly');
  static const displayPin = DevicePairingKinds(2, name: 'displayPin');
  static const providePin = DevicePairingKinds(4, name: 'providePin');
  static const confirmPinMatch = DevicePairingKinds(8, name: 'confirmPinMatch');
  static const providePasswordCredential =
      DevicePairingKinds(16, name: 'providePasswordCredential');

  static const List<DevicePairingKinds> values = [
    none,
    confirmOnly,
    displayPin,
    providePin,
    confirmPinMatch,
    providePasswordCredential
  ];

  @override
  DevicePairingKinds operator &(DevicePairingKinds other) =>
      DevicePairingKinds(value & other.value);

  @override
  DevicePairingKinds operator |(DevicePairingKinds other) =>
      DevicePairingKinds(value | other.value);
}
