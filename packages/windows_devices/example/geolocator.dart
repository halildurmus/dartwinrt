// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';
import 'package:windows_system/windows_system.dart';

void main() async {
  final status = await Geolocator.requestAccessAsync();
  if (status == GeolocationAccessStatus.denied) {
    print('Error: Location access denied.\n\n'
        'Grant access from the Location settings by turning on the following '
        'settings:\n'
        ' - Location services\n'
        ' - Let apps access your location\n'
        ' - Let desktop apps access your location\n\n'
        'Then try this example again.');
    // Launch the Location settings page
    await Launcher.launchUriAsync(Uri.parse('ms-settings:privacy-location'));
    return;
  }

  final locator = Geolocator()..allowFallbackToConsentlessPositions();
  final location = await locator.getGeopositionAsync();
  if (location?.coordinate case final coordinate?) {
    final position = switch (coordinate.point?.position) {
      BasicGeoposition(:final latitude, :final longitude) =>
        '($latitude, $longitude)',
      _ => 'N/A'
    };
    print('Current location: $position');
    print('Location accuracy: ±${coordinate.accuracy} meters');
    print('Current heading: ${coordinate.heading ?? 'N/A'}');
    print('Position source: ${coordinate.positionSource.name}');
  } else {
    print('No location received.');
  }
}
