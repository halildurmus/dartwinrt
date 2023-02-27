// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_ui/windows_ui.dart';

import 'deviceinformation.dart';
import 'devicepickerappearance.dart';
import 'devicepickerfilter.dart';
import 'enums.g.dart';
import 'idevicepicker.dart';

/// Represents a picker flyout that contains a list of devices for the user
/// to choose from.
///
/// {@category class}
class DevicePicker extends IInspectable implements IDevicePicker {
  DevicePicker() : super(activateClass(_className));
  DevicePicker.fromRawPointer(super.ptr);

  static const _className = 'Windows.Devices.Enumeration.DevicePicker';

  // IDevicePicker methods
  late final _iDevicePicker = IDevicePicker.from(this);

  @override
  DevicePickerFilter? get filter => _iDevicePicker.filter;

  @override
  DevicePickerAppearance? get appearance => _iDevicePicker.appearance;

  @override
  IVector<String> get requestedProperties => _iDevicePicker.requestedProperties;

  @override
  int add_DeviceSelected(Pointer<COMObject> handler) =>
      _iDevicePicker.add_DeviceSelected(handler);

  @override
  void remove_DeviceSelected(int token) =>
      _iDevicePicker.remove_DeviceSelected(token);

  @override
  int add_DisconnectButtonClicked(Pointer<COMObject> handler) =>
      _iDevicePicker.add_DisconnectButtonClicked(handler);

  @override
  void remove_DisconnectButtonClicked(int token) =>
      _iDevicePicker.remove_DisconnectButtonClicked(token);

  @override
  int add_DevicePickerDismissed(Pointer<COMObject> handler) =>
      _iDevicePicker.add_DevicePickerDismissed(handler);

  @override
  void remove_DevicePickerDismissed(int token) =>
      _iDevicePicker.remove_DevicePickerDismissed(token);

  @override
  void show(Rect selection) => _iDevicePicker.show(selection);

  @override
  void showWithPlacement(Rect selection, Placement placement) =>
      _iDevicePicker.showWithPlacement(selection, placement);

  @override
  Future<DeviceInformation?> pickSingleDeviceAsync(Rect selection) =>
      _iDevicePicker.pickSingleDeviceAsync(selection);

  @override
  Future<DeviceInformation?> pickSingleDeviceAsyncWithPlacement(
          Rect selection, Placement placement) =>
      _iDevicePicker.pickSingleDeviceAsyncWithPlacement(selection, placement);

  @override
  void hide() => _iDevicePicker.hide();

  @override
  void setDisplayStatus(DeviceInformation? device, String status,
          DevicePickerDisplayStatusOptions options) =>
      _iDevicePicker.setDisplayStatus(device, status, options);
}
