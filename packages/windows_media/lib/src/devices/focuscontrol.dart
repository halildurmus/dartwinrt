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

import 'autofocusrange.dart';
import 'focusmode.dart';
import 'focuspreset.dart';
import 'focussettings.dart';
import 'ifocuscontrol.dart';
import 'ifocuscontrol2.dart';
import 'manualfocusdistance.dart';
import 'mediacapturefocusstate.dart';

/// Provides functionality for controlling the focus settings on a capture
/// device.
class FocusControl extends IInspectable
    implements IFocusControl, IFocusControl2 {
  FocusControl.fromPtr(super.ptr);

  late final _iFocusControl = IFocusControl.from(this);

  @override
  bool get supported => _iFocusControl.supported;

  @override
  List<FocusPreset>? get supportedPresets => _iFocusControl.supportedPresets;

  @override
  FocusPreset get preset => _iFocusControl.preset;

  @override
  Future<void> setPresetAsync(FocusPreset preset) =>
      _iFocusControl.setPresetAsync(preset);

  @override
  Future<void> setPresetWithCompletionOptionAsync(
          FocusPreset preset, bool completeBeforeFocus) =>
      _iFocusControl.setPresetWithCompletionOptionAsync(
          preset, completeBeforeFocus);

  @override
  int get min => _iFocusControl.min;

  @override
  int get max => _iFocusControl.max;

  @override
  int get step => _iFocusControl.step;

  @override
  int get value => _iFocusControl.value;

  @override
  Future<void> setValueAsync(int focus) => _iFocusControl.setValueAsync(focus);

  @override
  Future<void> focusAsync() => _iFocusControl.focusAsync();

  late final _iFocusControl2 = IFocusControl2.from(this);

  @override
  bool get focusChangedSupported => _iFocusControl2.focusChangedSupported;

  @override
  bool get waitForFocusSupported => _iFocusControl2.waitForFocusSupported;

  @override
  List<FocusMode>? get supportedFocusModes =>
      _iFocusControl2.supportedFocusModes;

  @override
  List<ManualFocusDistance>? get supportedFocusDistances =>
      _iFocusControl2.supportedFocusDistances;

  @override
  List<AutoFocusRange>? get supportedFocusRanges =>
      _iFocusControl2.supportedFocusRanges;

  @override
  FocusMode get mode => _iFocusControl2.mode;

  @override
  MediaCaptureFocusState get focusState => _iFocusControl2.focusState;

  @override
  Future<void> unlockAsync() => _iFocusControl2.unlockAsync();

  @override
  Future<void> lockAsync() => _iFocusControl2.lockAsync();

  @override
  void configure(FocusSettings? settings) =>
      _iFocusControl2.configure(settings);
}
