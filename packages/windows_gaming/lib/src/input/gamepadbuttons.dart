// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the button type.
///
/// {@category enum}
final class GamepadButtons extends WinRTFlagsEnum<GamepadButtons> {
  const GamepadButtons(super.value, {super.name});

  factory GamepadButtons.from(int value) => GamepadButtons.values
      .firstWhere((e) => e.value == value, orElse: () => GamepadButtons(value));

  static const none = GamepadButtons(0, name: 'none');
  static const menu = GamepadButtons(1, name: 'menu');
  static const view = GamepadButtons(2, name: 'view');
  static const a = GamepadButtons(4, name: 'a');
  static const b = GamepadButtons(8, name: 'b');
  static const x = GamepadButtons(16, name: 'x');
  static const y = GamepadButtons(32, name: 'y');
  static const dpadUp = GamepadButtons(64, name: 'dpadUp');
  static const dpadDown = GamepadButtons(128, name: 'dpadDown');
  static const dpadLeft = GamepadButtons(256, name: 'dpadLeft');
  static const dpadRight = GamepadButtons(512, name: 'dpadRight');
  static const leftShoulder = GamepadButtons(1024, name: 'leftShoulder');
  static const rightShoulder = GamepadButtons(2048, name: 'rightShoulder');
  static const leftThumbstick = GamepadButtons(4096, name: 'leftThumbstick');
  static const rightThumbstick = GamepadButtons(8192, name: 'rightThumbstick');
  static const paddle1 = GamepadButtons(16384, name: 'paddle1');
  static const paddle2 = GamepadButtons(32768, name: 'paddle2');
  static const paddle3 = GamepadButtons(65536, name: 'paddle3');
  static const paddle4 = GamepadButtons(131072, name: 'paddle4');

  static const List<GamepadButtons> values = [
    none,
    menu,
    view,
    a,
    b,
    x,
    y,
    dpadUp,
    dpadDown,
    dpadLeft,
    dpadRight,
    leftShoulder,
    rightShoulder,
    leftThumbstick,
    rightThumbstick,
    paddle1,
    paddle2,
    paddle3,
    paddle4
  ];

  @override
  GamepadButtons operator &(GamepadButtons other) =>
      GamepadButtons(value & other.value);

  @override
  GamepadButtons operator |(GamepadButtons other) =>
      GamepadButtons(value | other.value);
}
