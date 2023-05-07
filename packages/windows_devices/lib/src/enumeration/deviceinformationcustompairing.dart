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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'devicepairingkinds.dart';
import 'devicepairingprotectionlevel.dart';
import 'devicepairingresult.dart';
import 'ideviceinformationcustompairing.dart';
import 'idevicepairingsettings.dart';

/// Represents a custom pairing for a DeviceInformation object.
///
/// {@category class}
class DeviceInformationCustomPairing extends IInspectable
    implements IDeviceInformationCustomPairing {
  DeviceInformationCustomPairing.fromPtr(super.ptr);

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
  int add_PairingRequested(Pointer<COMObject> handler) =>
      _iDeviceInformationCustomPairing.add_PairingRequested(handler);

  @override
  void remove_PairingRequested(int token) =>
      _iDeviceInformationCustomPairing.remove_PairingRequested(token);
}
