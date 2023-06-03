// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'iclockidentifiersstatics.dart';

/// Contains the clock identifiers for the supported clocks, as static
/// properties.
class ClockIdentifiers extends IInspectable {
  ClockIdentifiers.fromPtr(super.ptr);

  static const _className = 'Windows.Globalization.ClockIdentifiers';

  static String get twelveHour => createActivationFactory(
          IClockIdentifiersStatics.fromPtr,
          _className,
          IID_IClockIdentifiersStatics)
      .twelveHour;

  static String get twentyFourHour => createActivationFactory(
          IClockIdentifiersStatics.fromPtr,
          _className,
          IID_IClockIdentifiersStatics)
      .twentyFourHour;
}
