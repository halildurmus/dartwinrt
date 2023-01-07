// devicepickerfilter.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'idevicepickerfilter.dart';

/// Represents the filter used to determine which devices to show in the
/// device picker. The filter parameters are OR-ed together to build the
/// resulting filter.
///
/// {@category Class}
/// {@category winrt}
class DevicePickerFilter extends IInspectable implements IDevicePickerFilter {
  DevicePickerFilter.fromRawPointer(super.ptr);

  // IDevicePickerFilter methods
  late final _iDevicePickerFilter = IDevicePickerFilter.from(this);

  @override
  IVector<DeviceClass> get supportedDeviceClasses =>
      _iDevicePickerFilter.supportedDeviceClasses;

  @override
  IVector<String> get supportedDeviceSelectors =>
      _iDevicePickerFilter.supportedDeviceSelectors;
}
