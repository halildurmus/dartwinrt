// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the result of a MediaFrameSourceController.SetPropertyAsync
/// operation.
enum MediaFrameSourceSetPropertyStatus implements WinRTEnum {
  success(0),
  unknownFailure(1),
  notSupported(2),
  invalidValue(3),
  deviceNotAvailable(4),
  notInControl(5);

  @override
  final int value;

  const MediaFrameSourceSetPropertyStatus(this.value);

  factory MediaFrameSourceSetPropertyStatus.from(int value) =>
      MediaFrameSourceSetPropertyStatus.values.byValue(value);
}
