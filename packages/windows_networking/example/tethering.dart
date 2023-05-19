// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_networking/windows_networking.dart';

Future<void> startTethering(NetworkOperatorTetheringManager manager) async {
  final result = await manager.startTetheringAsync();
  if (result?.status == TetheringOperationStatus.success) {
    print('Tethering started successfully.');
  } else {
    print('Could not start tethering.');
  }
}

Future<void> stopTethering(NetworkOperatorTetheringManager manager) async {
  final result = await manager.stopTetheringAsync();
  if (result?.status == TetheringOperationStatus.success) {
    print('Tethering stopped successfully.');
  } else {
    print('Could not stop tethering.');
  }
}

void printTetheringManagerInformation(NetworkOperatorTetheringManager manager) {
  print('Client count: ${manager.clientCount}');
  print('Max client count: ${manager.maxClientCount}');
  final configuration = manager.getCurrentAccessPointConfiguration();
  if (configuration != null) {
    final band = switch (configuration.band) {
      TetheringWiFiBand.twoPointFourGigahertz => '2.4 GHz',
      TetheringWiFiBand.fiveGigahertz => '5 GHz',
      TetheringWiFiBand.auto => 'Auto',
    };
    print('Band: $band');
    print('SSID: ${configuration.ssid}');
    print('Passphrase: ${configuration.passphrase}');
  }
}

void main() async {
  final connectionProfile = NetworkInformation.getInternetConnectionProfile();
  if (connectionProfile != null) {
    final tetheringCapability = NetworkOperatorTetheringManager
        .getTetheringCapabilityFromConnectionProfile(connectionProfile);
    print('Tethering capability is ${tetheringCapability.name}');

    if (tetheringCapability == TetheringCapability.enabled) {
      final tetheringManager =
          NetworkOperatorTetheringManager.createFromConnectionProfile(
              connectionProfile);
      if (tetheringManager != null) {
        printTetheringManagerInformation(tetheringManager);
        switch (tetheringManager.tetheringOperationalState) {
          case TetheringOperationalState.off:
            print('Tethering is off. Starting tethering...');
            await startTethering(tetheringManager);
          case TetheringOperationalState.on:
            print('Tethering is on. Stopping tethering...');
            await stopTethering(tetheringManager);
          case TetheringOperationalState.inTransition:
            print('Tethering is in transition between the on and off states.');
          case TetheringOperationalState.unknown:
            print('Current operational state is unknown.');
        }
      }
    }
  }
}
