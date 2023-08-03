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

import 'attributednetworkusage.dart';
import 'connectioncost.dart';
import 'connectionprofiledeletestatus.dart';
import 'connectivityinterval.dart';
import 'dataplanstatus.dart';
import 'datausage.dart';
import 'datausagegranularity.dart';
import 'domainauthenticationkind.dart';
import 'domainconnectivitylevel.dart';
import 'iconnectionprofile.dart';
import 'iconnectionprofile2.dart';
import 'iconnectionprofile3.dart';
import 'iconnectionprofile4.dart';
import 'iconnectionprofile5.dart';
import 'iconnectionprofile6.dart';
import 'networkadapter.dart';
import 'networkconnectivitylevel.dart';
import 'networksecuritysettings.dart';
import 'networkusage.dart';
import 'networkusagestates.dart';
import 'providernetworkusage.dart';
import 'roamingstates.dart';
import 'wlanconnectionprofiledetails.dart';
import 'wwanconnectionprofiledetails.dart';

/// Represents a network connection, which includes either the currently
/// connected network or prior network connections. Provides information about
/// the connection status and connectivity statistics.
class ConnectionProfile extends IInspectable
    implements
        IConnectionProfile,
        IConnectionProfile2,
        IConnectionProfile3,
        IConnectionProfile4,
        IConnectionProfile5,
        IConnectionProfile6 {
  ConnectionProfile.fromPtr(super.ptr);

  late final _iConnectionProfile = IConnectionProfile.from(this);

  @override
  String get profileName => _iConnectionProfile.profileName;

  @override
  NetworkConnectivityLevel getNetworkConnectivityLevel() =>
      _iConnectionProfile.getNetworkConnectivityLevel();

  @override
  List<String> getNetworkNames() => _iConnectionProfile.getNetworkNames();

  @override
  ConnectionCost? getConnectionCost() =>
      _iConnectionProfile.getConnectionCost();

  @override
  DataPlanStatus? getDataPlanStatus() =>
      _iConnectionProfile.getDataPlanStatus();

  @override
  NetworkAdapter? get networkAdapter => _iConnectionProfile.networkAdapter;

  @Deprecated(
      "GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
  @override
  DataUsage? getLocalUsage(DateTime startTime, DateTime endTime) =>
      _iConnectionProfile.getLocalUsage(startTime, endTime);

  @Deprecated(
      "GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
  @override
  DataUsage? getLocalUsagePerRoamingStates(
          DateTime startTime, DateTime endTime, RoamingStates states) =>
      _iConnectionProfile.getLocalUsagePerRoamingStates(
          startTime, endTime, states);

  @override
  NetworkSecuritySettings? get networkSecuritySettings =>
      _iConnectionProfile.networkSecuritySettings;

  late final _iConnectionProfile2 = IConnectionProfile2.from(this);

  @override
  bool get isWwanConnectionProfile =>
      _iConnectionProfile2.isWwanConnectionProfile;

  @override
  bool get isWlanConnectionProfile =>
      _iConnectionProfile2.isWlanConnectionProfile;

  @override
  WwanConnectionProfileDetails? get wwanConnectionProfileDetails =>
      _iConnectionProfile2.wwanConnectionProfileDetails;

  @override
  WlanConnectionProfileDetails? get wlanConnectionProfileDetails =>
      _iConnectionProfile2.wlanConnectionProfileDetails;

  @override
  Guid? get serviceProviderGuid => _iConnectionProfile2.serviceProviderGuid;

  @override
  int? getSignalBars() => _iConnectionProfile2.getSignalBars();

  @override
  DomainConnectivityLevel getDomainConnectivityLevel() =>
      _iConnectionProfile2.getDomainConnectivityLevel();

  @override
  Future<List<NetworkUsage?>> getNetworkUsageAsync(
          DateTime startTime,
          DateTime endTime,
          DataUsageGranularity granularity,
          NetworkUsageStates states) =>
      _iConnectionProfile2.getNetworkUsageAsync(
          startTime, endTime, granularity, states);

  @override
  Future<List<ConnectivityInterval?>> getConnectivityIntervalsAsync(
          DateTime startTime, DateTime endTime, NetworkUsageStates states) =>
      _iConnectionProfile2.getConnectivityIntervalsAsync(
          startTime, endTime, states);

  late final _iConnectionProfile3 = IConnectionProfile3.from(this);

  @override
  Future<List<AttributedNetworkUsage?>> getAttributedNetworkUsageAsync(
          DateTime startTime, DateTime endTime, NetworkUsageStates states) =>
      _iConnectionProfile3.getAttributedNetworkUsageAsync(
          startTime, endTime, states);

  late final _iConnectionProfile4 = IConnectionProfile4.from(this);

  @override
  Future<List<ProviderNetworkUsage?>> getProviderNetworkUsageAsync(
          DateTime startTime, DateTime endTime, NetworkUsageStates states) =>
      _iConnectionProfile4.getProviderNetworkUsageAsync(
          startTime, endTime, states);

  late final _iConnectionProfile5 = IConnectionProfile5.from(this);

  @override
  bool get canDelete => _iConnectionProfile5.canDelete;

  @override
  Future<ConnectionProfileDeleteStatus> tryDeleteAsync() =>
      _iConnectionProfile5.tryDeleteAsync();

  late final _iConnectionProfile6 = IConnectionProfile6.from(this);

  @override
  bool isDomainAuthenticatedBy(DomainAuthenticationKind kind) =>
      _iConnectionProfile6.isDomainAuthenticatedBy(kind);
}
