// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the set of directional preferences for the user interface
/// presented by the app view.
///
/// {@category enum}
enum HandPreference implements WinRTEnum {
  leftHanded(0),
  rightHanded(1);

  @override
  final int value;

  const HandPreference(this.value);

  factory HandPreference.from(int value) =>
      HandPreference.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines constants that specify known system color values.
///
/// {@category enum}
enum UIColorType implements WinRTEnum {
  background(0),
  foreground(1),
  accentDark3(2),
  accentDark2(3),
  accentDark1(4),
  accent(5),
  accentLight1(6),
  accentLight2(7),
  accentLight3(8),
  complement(9);

  @override
  final int value;

  const UIColorType(this.value);

  factory UIColorType.from(int value) =>
      UIColorType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the set of user interface element types.
///
/// {@category enum}
enum UIElementType implements WinRTEnum {
  activeCaption(0),
  background(1),
  buttonFace(2),
  buttonText(3),
  captionText(4),
  grayText(5),
  highlight(6),
  highlightText(7),
  hotlight(8),
  inactiveCaption(9),
  inactiveCaptionText(10),
  window(11),
  windowText(12),
  accentColor(1000),
  textHigh(1001),
  textMedium(1002),
  textLow(1003),
  textContrastWithHigh(1004),
  nonTextHigh(1005),
  nonTextMediumHigh(1006),
  nonTextMedium(1007),
  nonTextMediumLow(1008),
  nonTextLow(1009),
  pageBackground(1010),
  popupBackground(1011),
  overlayOutsidePopup(1012);

  @override
  final int value;

  const UIElementType(this.value);

  factory UIElementType.from(int value) =>
      UIElementType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
