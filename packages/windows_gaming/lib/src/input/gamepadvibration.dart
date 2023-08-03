// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Describes the gamepad motor speed.
final class GamepadVibration implements WinRTStruct {
  const GamepadVibration(
      this.leftMotor, this.rightMotor, this.leftTrigger, this.rightTrigger);

  final double leftMotor;
  final double rightMotor;
  final double leftTrigger;
  final double rightTrigger;

  @override
  Pointer<NativeGamepadVibration> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeGamepadVibration>();
    nativeStructPtr.ref
      ..leftMotor = leftMotor
      ..rightMotor = rightMotor
      ..leftTrigger = leftTrigger
      ..rightTrigger = rightTrigger;
    return nativeStructPtr;
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

/// @nodoc
extension GamepadVibrationListToNativeGamepadVibrationArrayConversion
    on List<GamepadVibration> {
  /// Creates an array of [NativeGamepadVibration]s from a List of
  /// [GamepadVibration]s.
  Pointer<NativeGamepadVibration> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeGamepadVibration>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeGamepadVibrationConversion on NativeGamepadVibration {
  /// Converts this [NativeGamepadVibration] into a Dart [GamepadVibration].
  GamepadVibration toDart() =>
      GamepadVibration(leftMotor, rightMotor, leftTrigger, rightTrigger);
}

/// @nodoc
extension PointerNativeGamepadVibrationConversion
    on Pointer<NativeGamepadVibration> {
  /// Converts the referenced [NativeGamepadVibration] into a Dart
  /// [GamepadVibration].
  GamepadVibration toDart() {
    final ref = this.ref;
    return GamepadVibration(
        ref.leftMotor, ref.rightMotor, ref.leftTrigger, ref.rightTrigger);
  }

  /// Creates a `List<GamepadVibration>` from `Pointer<NativeGamepadVibration>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeGamepadVibration>`.
  List<GamepadVibration> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
