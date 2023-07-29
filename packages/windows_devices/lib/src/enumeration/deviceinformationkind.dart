// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the kind of DeviceInformation object.
enum DeviceInformationKind implements WinRTEnum {
  unknown(0),
  deviceInterface(1),
  deviceContainer(2),
  device(3),
  deviceInterfaceClass(4),
  associationEndpoint(5),
  associationEndpointContainer(6),
  associationEndpointService(7),
  devicePanel(8);

  @override
  final int value;

  const DeviceInformationKind(this.value);

  factory DeviceInformationKind.from(int value) =>
      DeviceInformationKind.values.byValue(value);
}
