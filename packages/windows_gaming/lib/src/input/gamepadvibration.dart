// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Describes the gamepad motor speed.
///
/// {@category struct}
final class GamepadVibration implements WinRTStruct {
  GamepadVibration(
      this.leftMotor, this.rightMotor, this.leftTrigger, this.rightTrigger);

  final double leftMotor;
  final double rightMotor;
  final double leftTrigger;
  final double rightTrigger;

  @override
  Pointer<NativeGamepadVibration> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeGamepadVibration>();
    ptr.ref.leftMotor = leftMotor;
    ptr.ref.rightMotor = rightMotor;
    ptr.ref.leftTrigger = leftTrigger;
    ptr.ref.rightTrigger = rightTrigger;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GamepadVibration &&
        leftMotor == other.leftMotor &&
        rightMotor == other.rightMotor &&
        leftTrigger == other.leftTrigger &&
        rightTrigger == other.rightTrigger;
  }

  @override
  int get hashCode =>
      leftMotor.hashCode ^
      rightMotor.hashCode ^
      leftTrigger.hashCode ^
      rightTrigger.hashCode;
}

extension PointerNativeGamepadVibrationConversion
    on Pointer<NativeGamepadVibration> {
  /// Converts this [NativeGamepadVibration] to a Dart [GamepadVibration].
  GamepadVibration toDart() => GamepadVibration(
      ref.leftMotor, ref.rightMotor, ref.leftTrigger, ref.rightTrigger);
}
