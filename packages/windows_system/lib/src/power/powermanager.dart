// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'batterystatus.dart';
import 'energysaverstatus.dart';
import 'ipowermanagerstatics.dart';
import 'powersupplystatus.dart';

/// Provides access to information about a device's battery and power supply
/// status.
///
/// {@category class}
class PowerManager extends IInspectable {
  PowerManager.fromRawPointer(super.ptr);

  static const _className = 'Windows.System.Power.PowerManager';

  // IPowerManagerStatics methods
  static EnergySaverStatus get energySaverStatus {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.energySaverStatus;
    } finally {
      object.release();
    }
  }

  static int add_EnergySaverStatusChanged(Pointer<COMObject> handler) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_EnergySaverStatusChanged(handler);
    } finally {
      object.release();
    }
  }

  static void remove_EnergySaverStatusChanged(int token) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_EnergySaverStatusChanged(token);
    } finally {
      object.release();
    }
  }

  static BatteryStatus get batteryStatus {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.batteryStatus;
    } finally {
      object.release();
    }
  }

  static int add_BatteryStatusChanged(Pointer<COMObject> handler) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_BatteryStatusChanged(handler);
    } finally {
      object.release();
    }
  }

  static void remove_BatteryStatusChanged(int token) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_BatteryStatusChanged(token);
    } finally {
      object.release();
    }
  }

  static PowerSupplyStatus get powerSupplyStatus {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.powerSupplyStatus;
    } finally {
      object.release();
    }
  }

  static int add_PowerSupplyStatusChanged(Pointer<COMObject> handler) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_PowerSupplyStatusChanged(handler);
    } finally {
      object.release();
    }
  }

  static void remove_PowerSupplyStatusChanged(int token) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_PowerSupplyStatusChanged(token);
    } finally {
      object.release();
    }
  }

  static int get remainingChargePercent {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remainingChargePercent;
    } finally {
      object.release();
    }
  }

  static int add_RemainingChargePercentChanged(Pointer<COMObject> handler) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_RemainingChargePercentChanged(handler);
    } finally {
      object.release();
    }
  }

  static void remove_RemainingChargePercentChanged(int token) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_RemainingChargePercentChanged(token);
    } finally {
      object.release();
    }
  }

  static Duration get remainingDischargeTime {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remainingDischargeTime;
    } finally {
      object.release();
    }
  }

  static int add_RemainingDischargeTimeChanged(Pointer<COMObject> handler) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_RemainingDischargeTimeChanged(handler);
    } finally {
      object.release();
    }
  }

  static void remove_RemainingDischargeTimeChanged(int token) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPowerManagerStatics);
    final object = IPowerManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_RemainingDischargeTimeChanged(token);
    } finally {
      object.release();
    }
  }
}
