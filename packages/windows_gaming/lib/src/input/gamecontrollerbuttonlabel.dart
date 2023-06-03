// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Label that appears on the physical controller button.
enum GameControllerButtonLabel implements WinRTEnum {
  none(0),
  xboxBack(1),
  xboxStart(2),
  xboxMenu(3),
  xboxView(4),
  xboxUp(5),
  xboxDown(6),
  xboxLeft(7),
  xboxRight(8),
  xboxA(9),
  xboxB(10),
  xboxX(11),
  xboxY(12),
  xboxLeftBumper(13),
  xboxLeftTrigger(14),
  xboxLeftStickButton(15),
  xboxRightBumper(16),
  xboxRightTrigger(17),
  xboxRightStickButton(18),
  xboxPaddle1(19),
  xboxPaddle2(20),
  xboxPaddle3(21),
  xboxPaddle4(22),
  mode(23),
  select(24),
  menu(25),
  view(26),
  back(27),
  start(28),
  options(29),
  share(30),
  up(31),
  down(32),
  left(33),
  right(34),
  letterA(35),
  letterB(36),
  letterC(37),
  letterL(38),
  letterR(39),
  letterX(40),
  letterY(41),
  letterZ(42),
  cross(43),
  circle(44),
  square(45),
  triangle(46),
  leftBumper(47),
  leftTrigger(48),
  leftStickButton(49),
  left1(50),
  left2(51),
  left3(52),
  rightBumper(53),
  rightTrigger(54),
  rightStickButton(55),
  right1(56),
  right2(57),
  right3(58),
  paddle1(59),
  paddle2(60),
  paddle3(61),
  paddle4(62),
  plus(63),
  minus(64),
  downLeftArrow(65),
  dialLeft(66),
  dialRight(67),
  suspension(68);

  @override
  final int value;

  const GameControllerButtonLabel(this.value);

  factory GameControllerButtonLabel.from(int value) =>
      GameControllerButtonLabel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
