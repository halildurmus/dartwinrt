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

import '../endpointpair.dart';
import '../hostname.dart';
import '../hostnamesortoptions.dart';
import 'connectionprofile.dart';
import 'connectionprofilefilter.dart';
import 'inetworkinformationstatics.dart';
import 'inetworkinformationstatics2.dart';
import 'lanidentifier.dart';
import 'proxyconfiguration.dart';

/// Provides access to network connection information for the local machine.
class NetworkInformation extends IInspectable {
  NetworkInformation.fromPtr(super.ptr);

  static const _className =
      'Windows.Networking.Connectivity.NetworkInformation';

  static List<ConnectionProfile?> getConnectionProfiles() =>
      createActivationFactory(INetworkInformationStatics.fromPtr, _className,
              IID_INetworkInformationStatics)
          .getConnectionProfiles();

  static ConnectionProfile? getInternetConnectionProfile() =>
      createActivationFactory(INetworkInformationStatics.fromPtr, _className,
              IID_INetworkInformationStatics)
          .getInternetConnectionProfile();

  static List<LanIdentifier?> getLanIdentifiers() => createActivationFactory(
          INetworkInformationStatics.fromPtr,
          _className,
          IID_INetworkInformationStatics)
      .getLanIdentifiers();

  static List<HostName?> getHostNames() => createActivationFactory(
          INetworkInformationStatics.fromPtr,
          _className,
          IID_INetworkInformationStatics)
      .getHostNames();

  static Future<ProxyConfiguration?> getProxyConfigurationAsync(Uri? uri) =>
      createActivationFactory(INetworkInformationStatics.fromPtr, _className,
              IID_INetworkInformationStatics)
          .getProxyConfigurationAsync(uri);

  static List<EndpointPair?> getSortedEndpointPairs(
          IIterable<EndpointPair?>? destinationList,
          HostNameSortOptions sortOptions) =>
      createActivationFactory(INetworkInformationStatics.fromPtr, _className,
              IID_INetworkInformationStatics)
          .getSortedEndpointPairs(destinationList, sortOptions);

  static int add_NetworkStatusChanged(
          Pointer<COMObject> networkStatusHandler) =>
      createActivationFactory(INetworkInformationStatics.fromPtr, _className,
              IID_INetworkInformationStatics)
          .add_NetworkStatusChanged(networkStatusHandler);

  static void remove_NetworkStatusChanged(int eventCookie) =>
      createActivationFactory(INetworkInformationStatics.fromPtr, _className,
              IID_INetworkInformationStatics)
          .remove_NetworkStatusChanged(eventCookie);

  static Future<List<ConnectionProfile?>> findConnectionProfilesAsync(
          ConnectionProfileFilter? pProfileFilter) =>
      createActivationFactory(INetworkInformationStatics2.fromPtr, _className,
              IID_INetworkInformationStatics2)
          .findConnectionProfilesAsync(pProfileFilter);
}
