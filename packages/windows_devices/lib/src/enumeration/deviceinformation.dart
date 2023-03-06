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

import 'deviceclass.dart';
import 'deviceinformationcollection.dart';
import 'deviceinformationkind.dart';
import 'deviceinformationpairing.dart';
import 'deviceinformationupdate.dart';
import 'devicethumbnail.dart';
import 'devicewatcher.dart';
import 'enclosurelocation.dart';
import 'ideviceinformation.dart';
import 'ideviceinformation2.dart';
import 'ideviceinformationstatics.dart';
import 'ideviceinformationstatics2.dart';

/// Represents a device. This class allows access to well-known device
/// properties as well as additional properties specified during device
/// enumeration.
///
/// {@category class}
class DeviceInformation extends IInspectable
    implements IDeviceInformation, IDeviceInformation2 {
  DeviceInformation.fromPtr(super.ptr);

  static const _className = 'Windows.Devices.Enumeration.DeviceInformation';

  static Future<DeviceInformation?> createFromIdAsync(String deviceId) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .createFromIdAsync(deviceId);

  static Future<DeviceInformation?> createFromIdAsyncAdditionalProperties(
          String deviceId, IIterable<String>? additionalProperties) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .createFromIdAsyncAdditionalProperties(
              deviceId, additionalProperties);

  static Future<DeviceInformationCollection?> findAllAsync() =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .findAllAsync();

  static Future<DeviceInformationCollection?> findAllAsyncDeviceClass(
          DeviceClass deviceClass) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .findAllAsyncDeviceClass(deviceClass);

  static Future<DeviceInformationCollection?> findAllAsyncAqsFilter(
          String aqsFilter) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .findAllAsyncAqsFilter(aqsFilter);

  static Future<DeviceInformationCollection?>
      findAllAsyncAqsFilterAndAdditionalProperties(
              String aqsFilter, IIterable<String>? additionalProperties) =>
          createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
                  IID_IDeviceInformationStatics)
              .findAllAsyncAqsFilterAndAdditionalProperties(
                  aqsFilter, additionalProperties);

  static DeviceWatcher? createWatcher() => createActivationFactory(
          IDeviceInformationStatics.fromPtr,
          _className,
          IID_IDeviceInformationStatics)
      .createWatcher();

  static DeviceWatcher? createWatcherDeviceClass(DeviceClass deviceClass) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .createWatcherDeviceClass(deviceClass);

  static DeviceWatcher? createWatcherAqsFilter(String aqsFilter) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .createWatcherAqsFilter(aqsFilter);

  static DeviceWatcher? createWatcherAqsFilterAndAdditionalProperties(
          String aqsFilter, IIterable<String>? additionalProperties) =>
      createActivationFactory(IDeviceInformationStatics.fromPtr, _className,
              IID_IDeviceInformationStatics)
          .createWatcherAqsFilterAndAdditionalProperties(
              aqsFilter, additionalProperties);

  static String getAqsFilterFromDeviceClass(DeviceClass deviceClass) =>
      createActivationFactory(IDeviceInformationStatics2.fromPtr, _className,
              IID_IDeviceInformationStatics2)
          .getAqsFilterFromDeviceClass(deviceClass);

  static Future<DeviceInformation?>
      createFromIdAsyncWithKindAndAdditionalProperties(
              String deviceId,
              IIterable<String>? additionalProperties,
              DeviceInformationKind kind) =>
          createActivationFactory(IDeviceInformationStatics2.fromPtr,
                  _className, IID_IDeviceInformationStatics2)
              .createFromIdAsyncWithKindAndAdditionalProperties(
                  deviceId, additionalProperties, kind);

  static Future<DeviceInformationCollection?>
      findAllAsyncWithKindAqsFilterAndAdditionalProperties(
              String aqsFilter,
              IIterable<String>? additionalProperties,
              DeviceInformationKind kind) =>
          createActivationFactory(IDeviceInformationStatics2.fromPtr,
                  _className, IID_IDeviceInformationStatics2)
              .findAllAsyncWithKindAqsFilterAndAdditionalProperties(
                  aqsFilter, additionalProperties, kind);

  static DeviceWatcher? createWatcherWithKindAqsFilterAndAdditionalProperties(
          String aqsFilter,
          IIterable<String>? additionalProperties,
          DeviceInformationKind kind) =>
      createActivationFactory(IDeviceInformationStatics2.fromPtr, _className,
              IID_IDeviceInformationStatics2)
          .createWatcherWithKindAqsFilterAndAdditionalProperties(
              aqsFilter, additionalProperties, kind);

  late final _iDeviceInformation = IDeviceInformation.from(this);

  @override
  String get id => _iDeviceInformation.id;

  @override
  String get name => _iDeviceInformation.name;

  @override
  bool get isEnabled => _iDeviceInformation.isEnabled;

  @override
  bool get isDefault => _iDeviceInformation.isDefault;

  @override
  EnclosureLocation? get enclosureLocation =>
      _iDeviceInformation.enclosureLocation;

  @override
  Map<String, Object?> get properties => _iDeviceInformation.properties;

  @override
  void update(DeviceInformationUpdate? updateInfo) =>
      _iDeviceInformation.update(updateInfo);

  @override
  Future<DeviceThumbnail?> getThumbnailAsync() =>
      _iDeviceInformation.getThumbnailAsync();

  @override
  Future<DeviceThumbnail?> getGlyphThumbnailAsync() =>
      _iDeviceInformation.getGlyphThumbnailAsync();

  late final _iDeviceInformation2 = IDeviceInformation2.from(this);

  @override
  DeviceInformationKind get kind => _iDeviceInformation2.kind;

  @override
  DeviceInformationPairing? get pairing => _iDeviceInformation2.pairing;
}
