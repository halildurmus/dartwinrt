// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// The result of the pairing action with an Association Endpoint (AEP) device
/// object. For more information about AEP objects, see DeviceInformationKind.
enum DevicePairingResultStatus implements WinRTEnum {
  paired(0),
  notReadyToPair(1),
  notPaired(2),
  alreadyPaired(3),
  connectionRejected(4),
  tooManyConnections(5),
  hardwareFailure(6),
  authenticationTimeout(7),
  authenticationNotAllowed(8),
  authenticationFailure(9),
  noSupportedProfiles(10),
  protectionLevelCouldNotBeMet(11),
  accessDenied(12),
  invalidCeremonyData(13),
  pairingCanceled(14),
  operationAlreadyInProgress(15),
  requiredHandlerNotRegistered(16),
  rejectedByHandler(17),
  remoteDeviceHasAssociation(18),
  failed(19);

  @override
  final int value;

  const DevicePairingResultStatus(this.value);

  factory DevicePairingResultStatus.from(int value) =>
      DevicePairingResultStatus.values.byValue(value);
}
