// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_networking/windows_networking.dart';

void printConnectionInformation(ConnectionProfile? profile) {
  if (profile
      case ConnectionProfile(
        :final profileName,
        :final isWlanConnectionProfile,
        :final wlanConnectionProfileDetails
      )) {
    print('Profile name: $profileName');
    final connectivityLevel = switch (profile.getNetworkConnectivityLevel()) {
      NetworkConnectivityLevel.constrainedInternetAccess =>
        'Limited Internet access.',
      NetworkConnectivityLevel.internetAccess => 'Local and Internet access.',
      NetworkConnectivityLevel.localAccess => 'Local network access only.',
      NetworkConnectivityLevel.none => 'No connectivity.',
    };
    print('Connectivity level: $connectivityLevel');

    if (isWlanConnectionProfile) {
      final ssid = wlanConnectionProfileDetails?.getConnectedSsid();
      print('Connected SSID: ${ssid ?? 'N/A'}');
    }
  }
}

void main() async {
  final connectionProfile = NetworkInformation.getInternetConnectionProfile();
  printConnectionInformation(connectionProfile);
}
