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

  final tetheringCapability = NetworkOperatorTetheringManager
      .getTetheringCapabilityFromConnectionProfile(connectionProfile);
  switch (tetheringCapability) {
    case TetheringCapability.disabledByGroupPolicy:
      print('Tethering capability is disabled by group policy.');
      return;
    case TetheringCapability.disabledByHardwareLimitation:
      print('Tethering capability is disabled by hardware limitation.');
      return;
    case TetheringCapability.disabledByOperator:
      print('Tethering capability is disabled by operator.');
      return;
    case TetheringCapability.disabledByRequiredAppNotInstalled:
      print('Tethering capability is disabled by required app not installed.');
      return;
    case TetheringCapability.disabledBySku:
      print('Tethering capability is disabled by SKU.');
      return;
    case TetheringCapability.disabledBySystemCapability:
      print('Tethering capability is disabled by system capability.');
      return;
    case TetheringCapability.disabledDueToUnknownCause:
      print('Tethering capability is disabled due to unknown cause.');
      return;
    case TetheringCapability.enabled:
      print('Tethering capability is enabled.');
  }

  final tetheringManager =
      NetworkOperatorTetheringManager.createFromConnectionProfile(
          connectionProfile);
  if (tetheringManager == null) {
    print('Could not create a NetworkOperatorTetheringManager.');
    return;
  }

  print('Client count: ${tetheringManager.clientCount}');
  print('Max client count: ${tetheringManager.maxClientCount}');

  var configuration = tetheringManager.getCurrentAccessPointConfiguration();
  if (configuration == null) {
    print('Could not get the current access point configuration.');
  } else {
    final band = switch (configuration.band) {
      TetheringWiFiBand.twoPointFourGigahertz => '2.4 GHz',
      TetheringWiFiBand.fiveGigahertz => '5 GHz',
      TetheringWiFiBand.auto => 'Auto',
    };
    print('Band: $band');
    print('Current SSID: ${configuration.ssid}');
    print('Current passphrase: ${configuration.passphrase}');
    if (configuration.ssid != 'Dart' &&
        configuration.passphrase != 'dart.dev') {
      print('Updating SSID and passphrase...');
      configuration
        ..ssid = 'Dart'
        ..passphrase = 'dart.dev';
      await tetheringManager.configureAccessPointAsync(configuration);
      configuration = tetheringManager.getCurrentAccessPointConfiguration();
      if (configuration == null) {
        print('Could not get the current access point configuration.');
      } else {
        print('Updated SSID: ${configuration.ssid}');
        print('Updated passphrase: ${configuration.passphrase}');
      }
    }
  }

  switch (tetheringManager.tetheringOperationalState) {
    case TetheringOperationalState.off:
      print('Tethering is off. Starting tethering...');
      final result = await tetheringManager.startTetheringAsync();
      if (result?.status == TetheringOperationStatus.success) {
        print('Tethering started successfully.');
        print('Waiting 10 seconds for client(s) to connect...');
        await Future<void>.delayed(const Duration(seconds: 10));
        final clients = tetheringManager.getTetheringClients();
        if (clients.isEmpty) {
          print('There are no tethering clients.');
          return;
        }
        print('Client count: ${clients.length}');
        for (final NetworkOperatorTetheringClient(:macAddress, :hostNames)
            in clients) {
          print('Client: $macAddress | Hostnames: $hostNames');
        }
      } else {
        print('Could not start tethering.');
      }
    case TetheringOperationalState.on:
      print('Tethering is on. Stopping tethering...');
      final result = await tetheringManager.stopTetheringAsync();
      if (result?.status == TetheringOperationStatus.success) {
        print('Tethering stopped successfully.');
      } else {
        print('Could not stop tethering.');
      }
    case TetheringOperationalState.inTransition:
      print('Tethering is in transition between the on and off states.');
    case TetheringOperationalState.unknown:
      print('Current operational state is unknown.');
  }
}
