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

import 'deviceinformationcustompairing.dart';
import 'devicepairingkinds.dart';
import 'devicepairingprotectionlevel.dart';
import 'devicepairingresult.dart';
import 'deviceunpairingresult.dart';
import 'ideviceinformationpairing.dart';
import 'ideviceinformationpairing2.dart';
import 'ideviceinformationpairingstatics.dart';
import 'ideviceinformationpairingstatics2.dart';
import 'idevicepairingsettings.dart';

/// Contains information and enables pairing for a device.
///
/// {@category class}
class DeviceInformationPairing extends IInspectable
    implements IDeviceInformationPairing, IDeviceInformationPairing2 {
  DeviceInformationPairing.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Devices.Enumeration.DeviceInformationPairing';

  static bool tryRegisterForAllInboundPairingRequests(
          DevicePairingKinds pairingKindsSupported) =>
      createActivationFactory(IDeviceInformationPairingStatics.fromRawPointer,
              _className, IID_IDeviceInformationPairingStatics)
          .tryRegisterForAllInboundPairingRequests(pairingKindsSupported);

  static bool tryRegisterForAllInboundPairingRequestsWithProtectionLevel(
          DevicePairingKinds pairingKindsSupported,
          DevicePairingProtectionLevel minProtectionLevel) =>
      createActivationFactory(IDeviceInformationPairingStatics2.fromRawPointer,
              _className, IID_IDeviceInformationPairingStatics2)
          .tryRegisterForAllInboundPairingRequestsWithProtectionLevel(
              pairingKindsSupported, minProtectionLevel);

  late final _iDeviceInformationPairing = IDeviceInformationPairing.from(this);

  @override
  bool get isPaired => _iDeviceInformationPairing.isPaired;

  @override
  bool get canPair => _iDeviceInformationPairing.canPair;

  @override
  Future<DevicePairingResult?> pairAsync() =>
      _iDeviceInformationPairing.pairAsync();

  @override
  Future<DevicePairingResult?> pairWithProtectionLevelAsync(
          DevicePairingProtectionLevel minProtectionLevel) =>
      _iDeviceInformationPairing
          .pairWithProtectionLevelAsync(minProtectionLevel);

  late final _iDeviceInformationPairing2 =
      IDeviceInformationPairing2.from(this);

  @override
  DevicePairingProtectionLevel get protectionLevel =>
      _iDeviceInformationPairing2.protectionLevel;

  @override
  DeviceInformationCustomPairing? get custom =>
      _iDeviceInformationPairing2.custom;

  @override
  Future<DevicePairingResult?> pairWithProtectionLevelAndSettingsAsync(
          DevicePairingProtectionLevel minProtectionLevel,
          IDevicePairingSettings? devicePairingSettings) =>
      _iDeviceInformationPairing2.pairWithProtectionLevelAndSettingsAsync(
          minProtectionLevel, devicePairingSettings);

  @override
  Future<DeviceUnpairingResult?> unpairAsync() =>
      _iDeviceInformationPairing2.unpairAsync();
}
