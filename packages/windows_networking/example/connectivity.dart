// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_networking/windows_networking.dart';

void main() async {
  final connectionProfile = NetworkInformation.getInternetConnectionProfile();
  if (connectionProfile == null) {
    print('There is no connection profile with a suitable connection.');
    return;
  }

  print('Profile name: ${connectionProfile.profileName}');
  final connectivityLevel =
      switch (connectionProfile.getNetworkConnectivityLevel()) {
    NetworkConnectivityLevel.constrainedInternetAccess =>
      'Limited Internet access. \n\n'
          'This value indicates captive portal connectivity, where local'
          'access to a web portal is provided, but access to the Internet '
          'requires that specific credentials are provided via the portal.',
    NetworkConnectivityLevel.internetAccess => 'Local and Internet access.',
    NetworkConnectivityLevel.localAccess => 'Local network access only.',
    NetworkConnectivityLevel.none => 'No connectivity.',
  };
  print('Connectivity level: $connectivityLevel');

  if (connectionProfile.isWlanConnectionProfile) {
    final ssid =
        connectionProfile.wlanConnectionProfileDetails?.getConnectedSsid();
    print('Connected SSID: ${ssid ?? 'N/A'}');
  }
}
