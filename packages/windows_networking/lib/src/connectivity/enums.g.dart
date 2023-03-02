// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values that indicate the result of an attempt to delete a
/// connection profile.
///
/// {@category enum}
enum ConnectionProfileDeleteStatus implements WinRTEnum {
  success(0),
  deniedByUser(1),
  deniedBySystem(2),
  unknownError(3);

  @override
  final int value;

  const ConnectionProfileDeleteStatus(this.value);

  factory ConnectionProfileDeleteStatus.from(int value) =>
      ConnectionProfileDeleteStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines levels of granularity used when retrieving data usage statistics
/// with GetNetworkUsageAsync.
///
/// {@category enum}
enum DataUsageGranularity implements WinRTEnum {
  perMinute(0),
  perHour(1),
  perDay(2),
  total(3);

  @override
  final int value;

  const DataUsageGranularity(this.value);

  factory DataUsageGranularity.from(int value) =>
      DataUsageGranularity.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines constants that specify a domain authentication method.
///
/// {@category enum}
enum DomainAuthenticationKind implements WinRTEnum {
  none(0),
  ldap(1),
  tls(2);

  @override
  final int value;

  const DomainAuthenticationKind(this.value);

  factory DomainAuthenticationKind.from(int value) =>
      DomainAuthenticationKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the domain authentication status for a network connection.
///
/// {@category enum}
enum DomainConnectivityLevel implements WinRTEnum {
  none(0),
  unauthenticated(1),
  authenticated(2);

  @override
  final int value;

  const DomainConnectivityLevel(this.value);

  factory DomainConnectivityLevel.from(int value) =>
      DomainConnectivityLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines values that indicate the type of authentication used by the
/// network.
///
/// {@category enum}
enum NetworkAuthenticationType implements WinRTEnum {
  none(0),
  unknown(1),
  open80211(2),
  sharedKey80211(3),
  wpa(4),
  wpaPsk(5),
  wpaNone(6),
  rsna(7),
  rsnaPsk(8),
  ihv(9),
  wpa3(10),
  wpa3Enterprise192Bits(10),
  wpa3Sae(11),
  owe(12),
  wpa3Enterprise(13);

  @override
  final int value;

  const NetworkAuthenticationType(this.value);

  factory NetworkAuthenticationType.from(int value) =>
      NetworkAuthenticationType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the level of connectivity currently available.
///
/// {@category enum}
enum NetworkConnectivityLevel implements WinRTEnum {
  none(0),
  localAccess(1),
  constrainedInternetAccess(2),
  internetAccess(3);

  @override
  final int value;

  const NetworkConnectivityLevel(this.value);

  factory NetworkConnectivityLevel.from(int value) =>
      NetworkConnectivityLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the network cost types.
///
/// {@category enum}
enum NetworkCostType implements WinRTEnum {
  unknown(0),
  unrestricted(1),
  fixed(2),
  variable(3);

  @override
  final int value;

  const NetworkCostType(this.value);

  factory NetworkCostType.from(int value) =>
      NetworkCostType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines values that indicate the type of encryption used for
/// authentication.
///
/// {@category enum}
enum NetworkEncryptionType implements WinRTEnum {
  none(0),
  unknown(1),
  wep(2),
  wep40(3),
  wep104(4),
  tkip(5),
  ccmp(6),
  wpaUseGroup(7),
  rsnUseGroup(8),
  ihv(9),
  gcmp(10),
  gcmp256(11);

  @override
  final int value;

  const NetworkEncryptionType(this.value);

  factory NetworkEncryptionType.from(int value) =>
      NetworkEncryptionType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the network connection types.
///
/// {@category enum}
class NetworkTypes extends WinRTFlagsEnum<NetworkTypes> {
  const NetworkTypes(super.value, {super.name});

  factory NetworkTypes.from(int value) => NetworkTypes.values
      .firstWhere((e) => e.value == value, orElse: () => NetworkTypes(value));

  static const none = NetworkTypes(0, name: 'none');
  static const internet = NetworkTypes(1, name: 'internet');
  static const privateNetwork = NetworkTypes(2, name: 'privateNetwork');

  static const List<NetworkTypes> values = [none, internet, privateNetwork];

  @override
  NetworkTypes operator &(NetworkTypes other) =>
      NetworkTypes(value & other.value);

  @override
  NetworkTypes operator |(NetworkTypes other) =>
      NetworkTypes(value | other.value);
}

/// Defines the roaming states.
///
/// {@category enum}
class RoamingStates extends WinRTFlagsEnum<RoamingStates> {
  const RoamingStates(super.value, {super.name});

  factory RoamingStates.from(int value) => RoamingStates.values
      .firstWhere((e) => e.value == value, orElse: () => RoamingStates(value));

  static const none = RoamingStates(0, name: 'none');
  static const notRoaming = RoamingStates(1, name: 'notRoaming');
  static const roaming = RoamingStates(2, name: 'roaming');

  static const List<RoamingStates> values = [none, notRoaming, roaming];

  @override
  RoamingStates operator &(RoamingStates other) =>
      RoamingStates(value & other.value);

  @override
  RoamingStates operator |(RoamingStates other) =>
      RoamingStates(value | other.value);
}

/// Defines values used to indicate the class of data service provided by a
/// WWAN network connection.
///
/// {@category enum}
class WwanDataClass extends WinRTFlagsEnum<WwanDataClass> {
  const WwanDataClass(super.value, {super.name});

  factory WwanDataClass.from(int value) => WwanDataClass.values
      .firstWhere((e) => e.value == value, orElse: () => WwanDataClass(value));

  static const none = WwanDataClass(0, name: 'none');
  static const gprs = WwanDataClass(1, name: 'gprs');
  static const edge = WwanDataClass(2, name: 'edge');
  static const umts = WwanDataClass(4, name: 'umts');
  static const hsdpa = WwanDataClass(8, name: 'hsdpa');
  static const hsupa = WwanDataClass(16, name: 'hsupa');
  static const lteAdvanced = WwanDataClass(32, name: 'lteAdvanced');
  static const cdma1xRtt = WwanDataClass(65536, name: 'cdma1xRtt');
  static const cdma1xEvdo = WwanDataClass(131072, name: 'cdma1xEvdo');
  static const cdma1xEvdoRevA = WwanDataClass(262144, name: 'cdma1xEvdoRevA');
  static const cdma1xEvdv = WwanDataClass(524288, name: 'cdma1xEvdv');
  static const cdma3xRtt = WwanDataClass(1048576, name: 'cdma3xRtt');
  static const cdma1xEvdoRevB = WwanDataClass(2097152, name: 'cdma1xEvdoRevB');
  static const cdmaUmb = WwanDataClass(4194304, name: 'cdmaUmb');
  static const custom = WwanDataClass(2147483648, name: 'custom');

  static const List<WwanDataClass> values = [
    none,
    gprs,
    edge,
    umts,
    hsdpa,
    hsupa,
    lteAdvanced,
    cdma1xRtt,
    cdma1xEvdo,
    cdma1xEvdoRevA,
    cdma1xEvdv,
    cdma3xRtt,
    cdma1xEvdoRevB,
    cdmaUmb,
    custom
  ];

  @override
  WwanDataClass operator &(WwanDataClass other) =>
      WwanDataClass(value & other.value);

  @override
  WwanDataClass operator |(WwanDataClass other) =>
      WwanDataClass(value | other.value);
}

/// Defines constants that describe a level of supported IP. The values
/// reflect the WWAN_IP_TYPE enumeration. You can use these values to
/// determine which cellular profile to use (for example, to choose between
/// IMS and SUPL).
///
/// {@category enum}
enum WwanNetworkIPKind implements WinRTEnum {
  none(0),
  ipv4(1),
  ipv6(2),
  ipv4v6(3),
  ipv4v6v4Xlat(4);

  @override
  final int value;

  const WwanNetworkIPKind(this.value);

  factory WwanNetworkIPKind.from(int value) =>
      WwanNetworkIPKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Defines the network registration states for a WWAN connection.
///
/// {@category enum}
enum WwanNetworkRegistrationState implements WinRTEnum {
  none(0),
  deregistered(1),
  searching(2),
  home(3),
  roaming(4),
  partner(5),
  denied(6);

  @override
  final int value;

  const WwanNetworkRegistrationState(this.value);

  factory WwanNetworkRegistrationState.from(int value) =>
      WwanNetworkRegistrationState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
