// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Values indicating priority or criticality of the MDM alert.
enum MdmAlertMark implements WinRTEnum {
  none(0),
  fatal(1),
  critical(2),
  warning(3),
  informational(4);

  @override
  final int value;

  const MdmAlertMark(this.value);

  factory MdmAlertMark.from(int value) => MdmAlertMark.values.byValue(value);
}
