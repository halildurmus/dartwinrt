// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Provides information about the package's signature and the kind of
/// certificate used to create it.
enum PackageSignatureKind implements WinRTEnum {
  none(0),
  developer(1),
  enterprise(2),
  store(3),
  system(4);

  @override
  final int value;

  const PackageSignatureKind(this.value);

  factory PackageSignatureKind.from(int value) =>
      PackageSignatureKind.values.byValue(value);
}
