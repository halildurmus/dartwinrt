// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates which video streams are independent of each other.
enum VideoDeviceCharacteristic implements WinRTEnum {
  allStreamsIndependent(0),
  previewRecordStreamsIdentical(1),
  previewPhotoStreamsIdentical(2),
  recordPhotoStreamsIdentical(3),
  allStreamsIdentical(4);

  @override
  final int value;

  const VideoDeviceCharacteristic(this.value);

  factory VideoDeviceCharacteristic.from(int value) =>
      VideoDeviceCharacteristic.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
