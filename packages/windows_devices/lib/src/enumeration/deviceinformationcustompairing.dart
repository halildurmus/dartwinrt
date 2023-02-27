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

import 'devicepairingresult.dart';
import 'enums.g.dart';
import 'ideviceinformationcustompairing.dart';
import 'idevicepairingsettings.dart';

/// Represents a custom pairing for a DeviceInformation object.
///
/// {@category class}
class DeviceInformationCustomPairing extends IInspectable
    implements IDeviceInformationCustomPairing {
  DeviceInformationCustomPairing.fromRawPointer(super.ptr);

  // IDeviceInformationCustomPairing methods
  late final _iDeviceInformationCustomPairing =
      IDeviceInformationCustomPairing.from(this);

  @override
  Future<DevicePairingResult?> pairAsync(
          DevicePairingKinds pairingKindsSupported) =>
      _iDeviceInformationCustomPairing.pairAsync(pairingKindsSupported);

  @override
  Future<DevicePairingResult?> pairWithProtectionLevelAsync(
          DevicePairingKinds pairingKindsSupported,
          DevicePairingProtectionLevel minProtectionLevel) =>
      _iDeviceInformationCustomPairing.pairWithProtectionLevelAsync(
          pairingKindsSupported, minProtectionLevel);

  @override
  Future<DevicePairingResult?> pairWithProtectionLevelAndSettingsAsync(
          DevicePairingKinds pairingKindsSupported,
          DevicePairingProtectionLevel minProtectionLevel,
          IDevicePairingSettings? devicePairingSettings) =>
      _iDeviceInformationCustomPairing.pairWithProtectionLevelAndSettingsAsync(
          pairingKindsSupported, minProtectionLevel, devicePairingSettings);

  @override
  int add_PairingRequested(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iDeviceInformationCustomPairing.add_PairingRequested(handler);

  @override
  void remove_PairingRequested(int token) =>
      _iDeviceInformationCustomPairing.remove_PairingRequested(token);
}
