// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_ui/windows_ui.dart';

void main() {
  // Create a UISettings object
  final uiSettings = UISettings();

  print('Hand preference: ${uiSettings.handPreference.name}');
  final cursorSize = uiSettings.cursorSize;
  print('Cursor size: ${cursorSize.width} x ${cursorSize.height}');
  final scrollBarSize = uiSettings.scrollBarSize;
  print('Scrollbar size: ${scrollBarSize.width} x ${scrollBarSize.height}');
  final scrollBarArrowSize = uiSettings.scrollBarArrowSize;
  print('Scrollbar arrow size: ${scrollBarArrowSize.width} x '
      '${scrollBarArrowSize.height}');
  final scrollBarThumbBoxSize = uiSettings.scrollBarThumbBoxSize;
  print('Scrollbar thumb box size: ${scrollBarThumbBoxSize.width} x '
      '${scrollBarThumbBoxSize.height}');
  print('Message duration: ${uiSettings.messageDuration}s');
  print('Animations enabled: ${uiSettings.animationsEnabled}');
  print('Caret browsing enabled: ${uiSettings.caretBrowsingEnabled}');
  print('Caret blink rate: ${uiSettings.caretBlinkRate}ms');
  print('Caret width: ${uiSettings.caretWidth}px');
  print('Double click time: ${uiSettings.doubleClickTime}ms');
  print('Mouse hover time: ${uiSettings.mouseHoverTime}ms');
  print('Text scale factor: ${uiSettings.textScaleFactor}');

  final backgroundColor = uiSettings.getColorValue(UIColorType.background);
  print('Background color: ${backgroundColor.prettify()}');
  final foregroundColor = uiSettings.getColorValue(UIColorType.foreground);
  print('Foreground color: ${foregroundColor.prettify()}');
  print('Theme mode: ${foregroundColor.isLightColor ? 'Dark' : 'Light'}');
}

extension on Color {
  // The formula for determining if a color is light is taken from
  // https://learn.microsoft.com/windows/apps/desktop/modernize/apply-windows-themes
  bool get isLightColor => ((5 * g) + (2 * r) + b) > (8 * 128);

  String prettify() => 'argb($a,$r,$g,$b)';
}
