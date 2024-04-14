// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import '../color.dart';
import 'handpreference.dart';
import 'iuisettings.dart';
import 'iuisettings2.dart';
import 'iuisettings3.dart';
import 'iuisettings4.dart';
import 'iuisettings5.dart';
import 'iuisettings6.dart';
import 'uicolortype.dart';
import 'uielementtype.dart';

/// Contains a set of common app user interface settings and operations.
class UISettings extends IInspectable
    implements
        IUISettings,
        IUISettings2,
        IUISettings3,
        IUISettings4,
        IUISettings5,
        IUISettings6 {
  UISettings() : super(activateClass(_className));
  UISettings.fromPtr(super.ptr);

  static const _className = 'Windows.UI.ViewManagement.UISettings';

  late final _iUISettings = IUISettings.from(this);

  @override
  HandPreference get handPreference => _iUISettings.handPreference;

  @override
  Size get cursorSize => _iUISettings.cursorSize;

  @override
  Size get scrollBarSize => _iUISettings.scrollBarSize;

  @override
  Size get scrollBarArrowSize => _iUISettings.scrollBarArrowSize;

  @override
  Size get scrollBarThumbBoxSize => _iUISettings.scrollBarThumbBoxSize;

  @override
  int get messageDuration => _iUISettings.messageDuration;

  @override
  bool get animationsEnabled => _iUISettings.animationsEnabled;

  @override
  bool get caretBrowsingEnabled => _iUISettings.caretBrowsingEnabled;

  @override
  int get caretBlinkRate => _iUISettings.caretBlinkRate;

  @override
  int get caretWidth => _iUISettings.caretWidth;

  @override
  int get doubleClickTime => _iUISettings.doubleClickTime;

  @override
  int get mouseHoverTime => _iUISettings.mouseHoverTime;

  @override
  Color uiElementColor(UIElementType desiredElement) =>
      _iUISettings.uiElementColor(desiredElement);

  late final _iUISettings2 = IUISettings2.from(this);

  @override
  double get textScaleFactor => _iUISettings2.textScaleFactor;

  @override
  int add_TextScaleFactorChanged(Pointer<COMObject> handler) =>
      _iUISettings2.add_TextScaleFactorChanged(handler);

  @override
  void remove_TextScaleFactorChanged(int cookie) =>
      _iUISettings2.remove_TextScaleFactorChanged(cookie);

  late final _iUISettings3 = IUISettings3.from(this);

  @override
  Color getColorValue(UIColorType desiredColor) =>
      _iUISettings3.getColorValue(desiredColor);

  @override
  int add_ColorValuesChanged(Pointer<COMObject> handler) =>
      _iUISettings3.add_ColorValuesChanged(handler);

  @override
  void remove_ColorValuesChanged(int cookie) =>
      _iUISettings3.remove_ColorValuesChanged(cookie);

  late final _iUISettings4 = IUISettings4.from(this);

  @override
  bool get advancedEffectsEnabled => _iUISettings4.advancedEffectsEnabled;

  @override
  int add_AdvancedEffectsEnabledChanged(Pointer<COMObject> handler) =>
      _iUISettings4.add_AdvancedEffectsEnabledChanged(handler);

  @override
  void remove_AdvancedEffectsEnabledChanged(int cookie) =>
      _iUISettings4.remove_AdvancedEffectsEnabledChanged(cookie);

  late final _iUISettings5 = IUISettings5.from(this);

  @override
  bool get autoHideScrollBars => _iUISettings5.autoHideScrollBars;

  @override
  int add_AutoHideScrollBarsChanged(Pointer<COMObject> handler) =>
      _iUISettings5.add_AutoHideScrollBarsChanged(handler);

  @override
  void remove_AutoHideScrollBarsChanged(int token) =>
      _iUISettings5.remove_AutoHideScrollBarsChanged(token);

  late final _iUISettings6 = IUISettings6.from(this);

  @override
  int add_AnimationsEnabledChanged(Pointer<COMObject> handler) =>
      _iUISettings6.add_AnimationsEnabledChanged(handler);

  @override
  void remove_AnimationsEnabledChanged(int token) =>
      _iUISettings6.remove_AnimationsEnabledChanged(token);

  @override
  int add_MessageDurationChanged(Pointer<COMObject> handler) =>
      _iUISettings6.add_MessageDurationChanged(handler);

  @override
  void remove_MessageDurationChanged(int token) =>
      _iUISettings6.remove_MessageDurationChanged(token);
}
