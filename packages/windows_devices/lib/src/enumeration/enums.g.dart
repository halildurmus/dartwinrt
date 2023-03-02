// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the type of devices that the user wants to enumerate.
///
/// {@category enum}
enum DeviceClass implements WinRTEnum {
  all(0),
  audioCapture(1),
  audioRender(2),
  portableStorageDevice(3),
  videoCapture(4),
  imageScanner(5),
  location(6);

  @override
  final int value;

  const DeviceClass(this.value);

  factory DeviceClass.from(int value) =>
      DeviceClass.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the kind of DeviceInformation object.
///
/// {@category enum}
enum DeviceInformationKind implements WinRTEnum {
  unknown(0),
  deviceInterface(1),
  deviceContainer(2),
  device(3),
  deviceInterfaceClass(4),
  associationEndpoint(5),
  associationEndpointContainer(6),
  associationEndpointService(7),
  devicePanel(8);

  @override
  final int value;

  const DeviceInformationKind(this.value);

  factory DeviceInformationKind.from(int value) =>
      DeviceInformationKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates the kinds of pairing supported by your application or
/// requested by the system. As an input value, use this value to indicate
/// what kinds of pairing your application supports. When this datatype is
/// received as an output value, it indicates the kind of pairing requested
/// by the system. In this case, your code will need to respond accordingly.
///
/// {@category enum}
class DevicePairingKinds extends WinRTFlagsEnum<DevicePairingKinds> {
  const DevicePairingKinds(super.value, {super.name});

  factory DevicePairingKinds.from(int value) =>
      DevicePairingKinds.values.firstWhere((e) => e.value == value,
          orElse: () => DevicePairingKinds(value));

  static const none = DevicePairingKinds(0, name: 'none');
  static const confirmOnly = DevicePairingKinds(1, name: 'confirmOnly');
  static const displayPin = DevicePairingKinds(2, name: 'displayPin');
  static const providePin = DevicePairingKinds(4, name: 'providePin');
  static const confirmPinMatch = DevicePairingKinds(8, name: 'confirmPinMatch');
  static const providePasswordCredential =
      DevicePairingKinds(16, name: 'providePasswordCredential');

  static const List<DevicePairingKinds> values = [
    none,
    confirmOnly,
    displayPin,
    providePin,
    confirmPinMatch,
    providePasswordCredential
  ];

  @override
  DevicePairingKinds operator &(DevicePairingKinds other) =>
      DevicePairingKinds(value & other.value);

  @override
  DevicePairingKinds operator |(DevicePairingKinds other) =>
      DevicePairingKinds(value | other.value);
}

/// The level of protection for pairing.
///
/// {@category enum}
enum DevicePairingProtectionLevel implements WinRTEnum {
  default_(0),
  none(1),
  encryption(2),
  encryptionAndAuthentication(3);

  @override
  final int value;

  const DevicePairingProtectionLevel(this.value);

  factory DevicePairingProtectionLevel.from(int value) =>
      DevicePairingProtectionLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// The result of the pairing action with an Association Endpoint (AEP)
/// device object. For more information about AEP objects, see
/// DeviceInformationKind.
///
/// {@category enum}
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
      DevicePairingResultStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates what you'd like the device picker to show about a given
/// device. Used with the SetDisplayStatus method on the DevicePicker
/// object.
///
/// {@category enum}
class DevicePickerDisplayStatusOptions
    extends WinRTFlagsEnum<DevicePickerDisplayStatusOptions> {
  const DevicePickerDisplayStatusOptions(super.value, {super.name});

  factory DevicePickerDisplayStatusOptions.from(int value) =>
      DevicePickerDisplayStatusOptions.values.firstWhere(
          (e) => e.value == value,
          orElse: () => DevicePickerDisplayStatusOptions(value));

  static const none = DevicePickerDisplayStatusOptions(0, name: 'none');
  static const showProgress =
      DevicePickerDisplayStatusOptions(1, name: 'showProgress');
  static const showDisconnectButton =
      DevicePickerDisplayStatusOptions(2, name: 'showDisconnectButton');
  static const showRetryButton =
      DevicePickerDisplayStatusOptions(4, name: 'showRetryButton');

  static const List<DevicePickerDisplayStatusOptions> values = [
    none,
    showProgress,
    showDisconnectButton,
    showRetryButton
  ];

  @override
  DevicePickerDisplayStatusOptions operator &(
          DevicePickerDisplayStatusOptions other) =>
      DevicePickerDisplayStatusOptions(value & other.value);

  @override
  DevicePickerDisplayStatusOptions operator |(
          DevicePickerDisplayStatusOptions other) =>
      DevicePickerDisplayStatusOptions(value | other.value);
}

/// The result of the unpairing action.
///
/// {@category enum}
enum DeviceUnpairingResultStatus implements WinRTEnum {
  unpaired(0),
  alreadyUnpaired(1),
  operationAlreadyInProgress(2),
  accessDenied(3),
  failed(4);

  @override
  final int value;

  const DeviceUnpairingResultStatus(this.value);

  factory DeviceUnpairingResultStatus.from(int value) =>
      DeviceUnpairingResultStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// The type of event.
///
/// {@category enum}
enum DeviceWatcherEventKind implements WinRTEnum {
  add(0),
  update(1),
  remove(2);

  @override
  final int value;

  const DeviceWatcherEventKind(this.value);

  factory DeviceWatcherEventKind.from(int value) =>
      DeviceWatcherEventKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes the state of a DeviceWatcher object.
///
/// {@category enum}
enum DeviceWatcherStatus implements WinRTEnum {
  created(0),
  started(1),
  enumerationCompleted(2),
  stopping(3),
  stopped(4),
  aborted(5);

  @override
  final int value;

  const DeviceWatcherStatus(this.value);

  factory DeviceWatcherStatus.from(int value) =>
      DeviceWatcherStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates the location of a panel on a computer. This enumeration is
/// used for indicating the physical location of a device.
///
/// {@category enum}
enum Panel implements WinRTEnum {
  unknown(0),
  front(1),
  back(2),
  top(3),
  bottom(4),
  left(5),
  right(6);

  @override
  final int value;

  const Panel(this.value);

  factory Panel.from(int value) =>
      Panel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
