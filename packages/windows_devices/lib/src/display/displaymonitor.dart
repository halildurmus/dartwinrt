// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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
import 'package:windows_graphics/windows_graphics.dart';

import 'displaymonitorconnectionkind.dart';
import 'displaymonitordescriptorkind.dart';
import 'displaymonitorphysicalconnectorkind.dart';
import 'displaymonitorusagekind.dart';
import 'idisplaymonitor.dart';
import 'idisplaymonitor2.dart';
import 'idisplaymonitorstatics.dart';

/// Provides information about a display monitor device connected to the
/// system.
class DisplayMonitor extends IInspectable
    implements IDisplayMonitor, IDisplayMonitor2 {
  DisplayMonitor.fromPtr(super.ptr);

  static const _className = 'Windows.Devices.Display.DisplayMonitor';

  static String getDeviceSelector() => createActivationFactory(
          IDisplayMonitorStatics.fromPtr,
          _className,
          IID_IDisplayMonitorStatics)
      .getDeviceSelector();

  static Future<DisplayMonitor?> fromIdAsync(String deviceId) =>
      createActivationFactory(IDisplayMonitorStatics.fromPtr, _className,
              IID_IDisplayMonitorStatics)
          .fromIdAsync(deviceId);

  static Future<DisplayMonitor?> fromInterfaceIdAsync(
          String deviceInterfaceId) =>
      createActivationFactory(IDisplayMonitorStatics.fromPtr, _className,
              IID_IDisplayMonitorStatics)
          .fromInterfaceIdAsync(deviceInterfaceId);

  late final _iDisplayMonitor = IDisplayMonitor.from(this);

  @override
  String get deviceId => _iDisplayMonitor.deviceId;

  @override
  String get displayName => _iDisplayMonitor.displayName;

  @override
  DisplayMonitorConnectionKind get connectionKind =>
      _iDisplayMonitor.connectionKind;

  @override
  DisplayMonitorPhysicalConnectorKind get physicalConnector =>
      _iDisplayMonitor.physicalConnector;

  @override
  String get displayAdapterDeviceId => _iDisplayMonitor.displayAdapterDeviceId;

  @override
  DisplayAdapterId get displayAdapterId => _iDisplayMonitor.displayAdapterId;

  @override
  int get displayAdapterTargetId => _iDisplayMonitor.displayAdapterTargetId;

  @override
  DisplayMonitorUsageKind get usageKind => _iDisplayMonitor.usageKind;

  @override
  SizeInt32 get nativeResolutionInRawPixels =>
      _iDisplayMonitor.nativeResolutionInRawPixels;

  @override
  Size? get physicalSizeInInches => _iDisplayMonitor.physicalSizeInInches;

  @override
  double get rawDpiX => _iDisplayMonitor.rawDpiX;

  @override
  double get rawDpiY => _iDisplayMonitor.rawDpiY;

  @override
  Point get redPrimary => _iDisplayMonitor.redPrimary;

  @override
  Point get greenPrimary => _iDisplayMonitor.greenPrimary;

  @override
  Point get bluePrimary => _iDisplayMonitor.bluePrimary;

  @override
  Point get whitePoint => _iDisplayMonitor.whitePoint;

  @override
  double get maxLuminanceInNits => _iDisplayMonitor.maxLuminanceInNits;

  @override
  double get minLuminanceInNits => _iDisplayMonitor.minLuminanceInNits;

  @override
  double get maxAverageFullFrameLuminanceInNits =>
      _iDisplayMonitor.maxAverageFullFrameLuminanceInNits;

  @override
  List<int> getDescriptor(DisplayMonitorDescriptorKind descriptorKind) =>
      _iDisplayMonitor.getDescriptor(descriptorKind);

  late final _iDisplayMonitor2 = IDisplayMonitor2.from(this);

  @override
  bool get isDolbyVisionSupportedInHdrMode =>
      _iDisplayMonitor2.isDolbyVisionSupportedInHdrMode;
}
