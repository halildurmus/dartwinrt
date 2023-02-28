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

import '../endpointpair.dart';
import '../enums.g.dart';
import '../hostname.dart';
import 'connectionprofile.dart';
import 'connectionprofilefilter.dart';
import 'inetworkinformationstatics.dart';
import 'inetworkinformationstatics2.dart';
import 'lanidentifier.dart';
import 'proxyconfiguration.dart';

/// Provides access to network connection information for the local machine.
///
/// {@category class}
class NetworkInformation extends IInspectable {
  NetworkInformation.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Networking.Connectivity.NetworkInformation';

  // INetworkInformationStatics methods
  static List<ConnectionProfile> getConnectionProfiles() {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getConnectionProfiles();
    } finally {
      object.release();
    }
  }

  static ConnectionProfile? getInternetConnectionProfile() {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getInternetConnectionProfile();
    } finally {
      object.release();
    }
  }

  static List<LanIdentifier> getLanIdentifiers() {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getLanIdentifiers();
    } finally {
      object.release();
    }
  }

  static List<HostName> getHostNames() {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getHostNames();
    } finally {
      object.release();
    }
  }

  static Future<ProxyConfiguration?> getProxyConfigurationAsync(Uri? uri) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getProxyConfigurationAsync(uri);
    } finally {
      object.release();
    }
  }

  static List<EndpointPair> getSortedEndpointPairs(
      IIterable<EndpointPair>? destinationList,
      HostNameSortOptions sortOptions) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getSortedEndpointPairs(destinationList, sortOptions);
    } finally {
      object.release();
    }
  }

  static int add_NetworkStatusChanged(Pointer<COMObject> networkStatusHandler) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_NetworkStatusChanged(networkStatusHandler);
    } finally {
      object.release();
    }
  }

  static void remove_NetworkStatusChanged(int eventCookie) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics);
    final object =
        INetworkInformationStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_NetworkStatusChanged(eventCookie);
    } finally {
      object.release();
    }
  }

  // INetworkInformationStatics2 methods
  static Future<List<ConnectionProfile>> findConnectionProfilesAsync(
      ConnectionProfileFilter? pProfileFilter) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INetworkInformationStatics2);
    final object =
        INetworkInformationStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.findConnectionProfilesAsync(pProfileFilter);
    } finally {
      object.release();
    }
  }
}
