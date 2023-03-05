// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_ui/windows_ui.dart';

import 'idevicepickerappearance.dart';

/// Represents the appearance of a device picker.
///
/// {@category class}
class DevicePickerAppearance extends IInspectable
    implements IDevicePickerAppearance {
  DevicePickerAppearance.fromRawPointer(super.ptr);

  late final _iDevicePickerAppearance = IDevicePickerAppearance.from(this);

  @override
  String get title => _iDevicePickerAppearance.title;

  @override
  set title(String value) => _iDevicePickerAppearance.title = value;

  @override
  Color get foregroundColor => _iDevicePickerAppearance.foregroundColor;

  @override
  set foregroundColor(Color value) =>
      _iDevicePickerAppearance.foregroundColor = value;

  @override
  Color get backgroundColor => _iDevicePickerAppearance.backgroundColor;

  @override
  set backgroundColor(Color value) =>
      _iDevicePickerAppearance.backgroundColor = value;

  @override
  Color get accentColor => _iDevicePickerAppearance.accentColor;

  @override
  set accentColor(Color value) => _iDevicePickerAppearance.accentColor = value;

  @override
  Color get selectedForegroundColor =>
      _iDevicePickerAppearance.selectedForegroundColor;

  @override
  set selectedForegroundColor(Color value) =>
      _iDevicePickerAppearance.selectedForegroundColor = value;

  @override
  Color get selectedBackgroundColor =>
      _iDevicePickerAppearance.selectedBackgroundColor;

  @override
  set selectedBackgroundColor(Color value) =>
      _iDevicePickerAppearance.selectedBackgroundColor = value;

  @override
  Color get selectedAccentColor => _iDevicePickerAppearance.selectedAccentColor;

  @override
  set selectedAccentColor(Color value) =>
      _iDevicePickerAppearance.selectedAccentColor = value;
}
