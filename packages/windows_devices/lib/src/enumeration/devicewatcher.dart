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
import 'package:windows_applicationmodel/windows_applicationmodel.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'deviceinformation.dart';
import 'deviceinformationupdate.dart';
import 'devicewatchereventkind.dart';
import 'devicewatcherstatus.dart';
import 'idevicewatcher.dart';
import 'idevicewatcher2.dart';

/// Enumerates devices dynamically, so that the app receives notifications
/// if devices are added, removed, or changed after the initial enumeration
/// is complete.
///
/// {@category class}
class DeviceWatcher extends IInspectable
    implements IDeviceWatcher, IDeviceWatcher2 {
  DeviceWatcher.fromPtr(super.ptr);

  late final _iDeviceWatcher = IDeviceWatcher.from(this);

  @override
  int add_Added(Pointer<COMObject> handler) =>
      _iDeviceWatcher.add_Added(handler);

  @override
  void remove_Added(int token) => _iDeviceWatcher.remove_Added(token);

  @override
  int add_Updated(Pointer<COMObject> handler) =>
      _iDeviceWatcher.add_Updated(handler);

  @override
  void remove_Updated(int token) => _iDeviceWatcher.remove_Updated(token);

  @override
  int add_Removed(Pointer<COMObject> handler) =>
      _iDeviceWatcher.add_Removed(handler);

  @override
  void remove_Removed(int token) => _iDeviceWatcher.remove_Removed(token);

  @override
  int add_EnumerationCompleted(Pointer<COMObject> handler) =>
      _iDeviceWatcher.add_EnumerationCompleted(handler);

  @override
  void remove_EnumerationCompleted(int token) =>
      _iDeviceWatcher.remove_EnumerationCompleted(token);

  @override
  int add_Stopped(Pointer<COMObject> handler) =>
      _iDeviceWatcher.add_Stopped(handler);

  @override
  void remove_Stopped(int token) => _iDeviceWatcher.remove_Stopped(token);

  @override
  DeviceWatcherStatus get status => _iDeviceWatcher.status;

  @override
  void start() => _iDeviceWatcher.start();

  @override
  void stop() => _iDeviceWatcher.stop();

  late final _iDeviceWatcher2 = IDeviceWatcher2.from(this);

  @override
  DeviceWatcherTrigger? getBackgroundTrigger(
          IIterable<DeviceWatcherEventKind>? requestedEventKinds) =>
      _iDeviceWatcher2.getBackgroundTrigger(requestedEventKinds);
}
