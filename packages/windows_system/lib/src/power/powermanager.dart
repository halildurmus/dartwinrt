// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'batterystatus.dart';
import 'energysaverstatus.dart';
import 'ipowermanagerstatics.dart';
import 'powersupplystatus.dart';

/// Provides access to information about a device's battery and power supply
/// status.
class PowerManager extends IInspectable {
  PowerManager.fromPtr(super.ptr);

  static const _className = 'Windows.System.Power.PowerManager';

  static EnergySaverStatus get energySaverStatus => createActivationFactory(
          IPowerManagerStatics.fromPtr, _className, IID_IPowerManagerStatics)
      .energySaverStatus;

  static int add_EnergySaverStatusChanged(Pointer<COMObject> handler) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .add_EnergySaverStatusChanged(handler);

  static void remove_EnergySaverStatusChanged(int token) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .remove_EnergySaverStatusChanged(token);

  static BatteryStatus get batteryStatus => createActivationFactory(
          IPowerManagerStatics.fromPtr, _className, IID_IPowerManagerStatics)
      .batteryStatus;

  static int add_BatteryStatusChanged(Pointer<COMObject> handler) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .add_BatteryStatusChanged(handler);

  static void remove_BatteryStatusChanged(int token) => createActivationFactory(
          IPowerManagerStatics.fromPtr, _className, IID_IPowerManagerStatics)
      .remove_BatteryStatusChanged(token);

  static PowerSupplyStatus get powerSupplyStatus => createActivationFactory(
          IPowerManagerStatics.fromPtr, _className, IID_IPowerManagerStatics)
      .powerSupplyStatus;

  static int add_PowerSupplyStatusChanged(Pointer<COMObject> handler) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .add_PowerSupplyStatusChanged(handler);

  static void remove_PowerSupplyStatusChanged(int token) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .remove_PowerSupplyStatusChanged(token);

  static int get remainingChargePercent => createActivationFactory(
          IPowerManagerStatics.fromPtr, _className, IID_IPowerManagerStatics)
      .remainingChargePercent;

  static int add_RemainingChargePercentChanged(Pointer<COMObject> handler) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .add_RemainingChargePercentChanged(handler);

  static void remove_RemainingChargePercentChanged(int token) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .remove_RemainingChargePercentChanged(token);

  static Duration get remainingDischargeTime => createActivationFactory(
          IPowerManagerStatics.fromPtr, _className, IID_IPowerManagerStatics)
      .remainingDischargeTime;

  static int add_RemainingDischargeTimeChanged(Pointer<COMObject> handler) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .add_RemainingDischargeTimeChanged(handler);

  static void remove_RemainingDischargeTimeChanged(int token) =>
      createActivationFactory(IPowerManagerStatics.fromPtr, _className,
              IID_IPowerManagerStatics)
          .remove_RemainingDischargeTimeChanged(token);
}
