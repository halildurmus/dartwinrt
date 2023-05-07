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
import 'package:windows_system/windows_system.dart';

import 'ibatteryreport.dart';

/// Provides properties that indicate the charge, capacity, and status of
/// the battery.
///
/// {@category class}
class BatteryReport extends IInspectable implements IBatteryReport {
  BatteryReport.fromPtr(super.ptr);

  late final _iBatteryReport = IBatteryReport.from(this);

  @override
  int? get chargeRateInMilliwatts => _iBatteryReport.chargeRateInMilliwatts;

  @override
  int? get designCapacityInMilliwattHours =>
      _iBatteryReport.designCapacityInMilliwattHours;

  @override
  int? get fullChargeCapacityInMilliwattHours =>
      _iBatteryReport.fullChargeCapacityInMilliwattHours;

  @override
  int? get remainingCapacityInMilliwattHours =>
      _iBatteryReport.remainingCapacityInMilliwattHours;

  @override
  BatteryStatus get status => _iBatteryReport.status;
}
