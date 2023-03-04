// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values that indicate the type of authentication used by the
/// network.
///
/// {@category enum}
enum NetworkAuthenticationType implements WinRTEnum {
  none(0),
  unknown(1),
  open80211(2),
  sharedKey80211(3),
  wpa(4),
  wpaPsk(5),
  wpaNone(6),
  rsna(7),
  rsnaPsk(8),
  ihv(9),
  wpa3(10),
  wpa3Enterprise192Bits(10),
  wpa3Sae(11),
  owe(12),
  wpa3Enterprise(13);

  @override
  final int value;

  const NetworkAuthenticationType(this.value);

  factory NetworkAuthenticationType.from(int value) =>
      NetworkAuthenticationType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
