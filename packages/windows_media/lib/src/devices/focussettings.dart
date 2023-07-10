// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'autofocusrange.dart';
import 'focusmode.dart';
import 'ifocussettings.dart';
import 'manualfocusdistance.dart';

/// Represents settings for a FocusControl object.
class FocusSettings extends IInspectable implements IFocusSettings {
  FocusSettings() : super(activateClass(_className));
  FocusSettings.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Devices.FocusSettings';

  late final _iFocusSettings = IFocusSettings.from(this);

  @override
  FocusMode get mode => _iFocusSettings.mode;

  @override
  set mode(FocusMode value) => _iFocusSettings.mode = value;

  @override
  AutoFocusRange get autoFocusRange => _iFocusSettings.autoFocusRange;

  @override
  set autoFocusRange(AutoFocusRange value) =>
      _iFocusSettings.autoFocusRange = value;

  @override
  int? get value => _iFocusSettings.value;

  @override
  set value(int? value) => _iFocusSettings.value = value;

  @override
  ManualFocusDistance? get distance => _iFocusSettings.distance;

  @override
  set distance(ManualFocusDistance? value) => _iFocusSettings.distance = value;

  @override
  bool get waitForFocus => _iFocusSettings.waitForFocus;

  @override
  set waitForFocus(bool value) => _iFocusSettings.waitForFocus = value;

  @override
  bool get disableDriverFallback => _iFocusSettings.disableDriverFallback;

  @override
  set disableDriverFallback(bool value) =>
      _iFocusSettings.disableDriverFallback = value;
}
