// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the status of a MultiSourceMediaFrameReader start operation. A
/// value from this enumeration is returned by the
/// MultiSourceMediaFrameReader.StartAsync method.
enum MultiSourceMediaFrameReaderStartStatus implements WinRTEnum {
  success(0),
  notSupported(1),
  insufficientResources(2),
  deviceNotAvailable(3),
  unknownFailure(4);

  @override
  final int value;

  const MultiSourceMediaFrameReaderStartStatus(this.value);

  factory MultiSourceMediaFrameReaderStartStatus.from(int value) =>
      MultiSourceMediaFrameReaderStartStatus.values.byValue(value);
}
