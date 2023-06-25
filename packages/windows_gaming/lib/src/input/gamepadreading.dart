// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents the current state of the gamepad.
final class GamepadReading implements WinRTStruct {
  GamepadReading(
      this.timestamp,
      this.buttons,
      this.leftTrigger,
      this.rightTrigger,
      this.leftThumbstickX,
      this.leftThumbstickY,
      this.rightThumbstickX,
      this.rightThumbstickY);

  final int timestamp;
  final int buttons;
  final double leftTrigger;
  final double rightTrigger;
  final double leftThumbstickX;
  final double leftThumbstickY;
  final double rightThumbstickX;
  final double rightThumbstickY;

  @override
  Pointer<NativeGamepadReading> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeGamepadReading>();
    nativeStructPtr.ref
      ..timestamp = timestamp
      ..buttons = buttons
      ..leftTrigger = leftTrigger
      ..rightTrigger = rightTrigger
      ..leftThumbstickX = leftThumbstickX
      ..leftThumbstickY = leftThumbstickY
      ..rightThumbstickX = rightThumbstickX
      ..rightThumbstickY = rightThumbstickY;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GamepadReading &&
        timestamp == other.timestamp &&
        buttons == other.buttons &&
        leftTrigger == other.leftTrigger &&
        rightTrigger == other.rightTrigger &&
        leftThumbstickX == other.leftThumbstickX &&
        leftThumbstickY == other.leftThumbstickY &&
        rightThumbstickX == other.rightThumbstickX &&
        rightThumbstickY == other.rightThumbstickY;
  }

  @override
  int get hashCode =>
      timestamp.hashCode ^
      buttons.hashCode ^
      leftTrigger.hashCode ^
      rightTrigger.hashCode ^
      leftThumbstickX.hashCode ^
      leftThumbstickY.hashCode ^
      rightThumbstickX.hashCode ^
      rightThumbstickY.hashCode;
}

/// @nodoc
extension PointerNativeGamepadReadingConversion
    on Pointer<NativeGamepadReading> {
  /// Converts this [NativeGamepadReading] to a Dart [GamepadReading].
  GamepadReading toDart() {
    final ref = this.ref;
    return GamepadReading(
        ref.timestamp,
        ref.buttons,
        ref.leftTrigger,
        ref.rightTrigger,
        ref.leftThumbstickX,
        ref.leftThumbstickY,
        ref.rightThumbstickX,
        ref.rightThumbstickY);
  }

  /// Creates a `List<GamepadReading>` from `Pointer<NativeGamepadReading>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeGamepadReading>`.
  List<GamepadReading> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
