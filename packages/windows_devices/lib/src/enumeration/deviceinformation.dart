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

import 'deviceinformationcollection.dart';
import 'deviceinformationpairing.dart';
import 'deviceinformationupdate.dart';
import 'devicethumbnail.dart';
import 'devicewatcher.dart';
import 'enclosurelocation.dart';
import 'enums.g.dart';
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
  DeviceInformation.fromRawPointer(super.ptr);

  static const _className = 'Windows.Devices.Enumeration.DeviceInformation';

  // IDeviceInformationStatics methods
  static Future<DeviceInformation?> createFromIdAsync(String deviceId) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createFromIdAsync(deviceId);
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformation?> createFromIdAsyncAdditionalProperties(
      String deviceId, IIterable<String>? additionalProperties) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createFromIdAsyncAdditionalProperties(
          deviceId, additionalProperties);
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformationCollection?> findAllAsync() {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.findAllAsync();
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformationCollection?> findAllAsyncDeviceClass(
      DeviceClass deviceClass) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.findAllAsyncDeviceClass(deviceClass);
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformationCollection?> findAllAsyncAqsFilter(
      String aqsFilter) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.findAllAsyncAqsFilter(aqsFilter);
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformationCollection?>
      findAllAsyncAqsFilterAndAdditionalProperties(
          String aqsFilter, IIterable<String>? additionalProperties) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.findAllAsyncAqsFilterAndAdditionalProperties(
          aqsFilter, additionalProperties);
    } finally {
      object.release();
    }
  }

  static DeviceWatcher? createWatcher() {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWatcher();
    } finally {
      object.release();
    }
  }

  static DeviceWatcher? createWatcherDeviceClass(DeviceClass deviceClass) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWatcherDeviceClass(deviceClass);
    } finally {
      object.release();
    }
  }

  static DeviceWatcher? createWatcherAqsFilter(String aqsFilter) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWatcherAqsFilter(aqsFilter);
    } finally {
      object.release();
    }
  }

  static DeviceWatcher? createWatcherAqsFilterAndAdditionalProperties(
      String aqsFilter, IIterable<String>? additionalProperties) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics);
    final object =
        IDeviceInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWatcherAqsFilterAndAdditionalProperties(
          aqsFilter, additionalProperties);
    } finally {
      object.release();
    }
  }

  // IDeviceInformationStatics2 methods
  static String getAqsFilterFromDeviceClass(DeviceClass deviceClass) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics2);
    final object =
        IDeviceInformationStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.getAqsFilterFromDeviceClass(deviceClass);
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformation?>
      createFromIdAsyncWithKindAndAdditionalProperties(String deviceId,
          IIterable<String>? additionalProperties, DeviceInformationKind kind) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics2);
    final object =
        IDeviceInformationStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.createFromIdAsyncWithKindAndAdditionalProperties(
          deviceId, additionalProperties, kind);
    } finally {
      object.release();
    }
  }

  static Future<DeviceInformationCollection?>
      findAllAsyncWithKindAqsFilterAndAdditionalProperties(String aqsFilter,
          IIterable<String>? additionalProperties, DeviceInformationKind kind) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics2);
    final object =
        IDeviceInformationStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.findAllAsyncWithKindAqsFilterAndAdditionalProperties(
          aqsFilter, additionalProperties, kind);
    } finally {
      object.release();
    }
  }

  static DeviceWatcher? createWatcherWithKindAqsFilterAndAdditionalProperties(
      String aqsFilter,
      IIterable<String>? additionalProperties,
      DeviceInformationKind kind) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IDeviceInformationStatics2);
    final object =
        IDeviceInformationStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWatcherWithKindAqsFilterAndAdditionalProperties(
          aqsFilter, additionalProperties, kind);
    } finally {
      object.release();
    }
  }

  // IDeviceInformation methods
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

  // IDeviceInformation2 methods
  late final _iDeviceInformation2 = IDeviceInformation2.from(this);

  @override
  DeviceInformationKind get kind => _iDeviceInformation2.kind;

  @override
  DeviceInformationPairing? get pairing => _iDeviceInformation2.pairing;
}
