// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Retrieve geolocation coordinates via WinRT APIs

import 'package:windows_devices/windows_devices.dart';

void main() async {
  final status = await Geolocator.requestAccessAsync();
  if (status == GeolocationAccessStatus.denied) {
    print('Error: Location access denied.\n\n'
        'Grant access from Windows by going to Settings / Privacy & security / '
        'location,\nand turning on the following settings:\n'
        ' - Location services\n'
        ' - Let apps access your location\n'
        ' - Let desktop apps access your location\n\n'
        'Then try this example again.');
    return;
  }

  final locator = Geolocator()..allowFallbackToConsentlessPositions();
  final location = await locator.getGeopositionAsync();
  if (location?.coordinate case final coordinate?) {
    final position = coordinate.point?.position;
    if (position case BasicGeoposition(:final latitude, :final longitude)) {
      print('Current location: ($latitude, $longitude)');
    } else {
      print('Current location: N/A');
    }
    print('Location accuracy: ±${coordinate.accuracy} meters');
    print('Current heading: ${coordinate.heading ?? 'N/A'}');
    final positionSource = coordinate.positionSource;
    print('Position source: ${positionSource.name}');
  } else {
    print('No location received.');
  }
}
