// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the altitude reference system to be used in defining a
/// geographic shape.
enum AltitudeReferenceSystem implements WinRTEnum {
  unspecified(0),
  terrain(1),
  ellipsoid(2),
  geoid(3),
  surface(4);

  @override
  final int value;

  const AltitudeReferenceSystem(this.value);

  factory AltitudeReferenceSystem.from(int value) =>
      AltitudeReferenceSystem.values.byValue(value);
}
