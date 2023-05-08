// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_globalization/windows_globalization.dart';

void main() {
  final phone = '4255550123';
  print('Phone number: $phone');

  // Create a PhoneNumberFormatter object, using the current default region.
  final defaultFormatter = PhoneNumberFormatter();
  print('Formatted phone number for the current default region: '
      '${defaultFormatter.formatString(phone)}');

  // Create a PhoneNumberFormatter object for the US region.
  final usFormatter = PhoneNumberFormatter.fromPtr(calloc<COMObject>());
  PhoneNumberFormatter.tryCreate('US', usFormatter);
  final formattedPhone = usFormatter.formatString(phone);
  print('Formatted phone number for the US region: $formattedPhone');

  // Get the country code and national direct dialing prefix for each region.
  for (final region in ['US', 'GB', 'TR']) {
    final countryCode = PhoneNumberFormatter.getCountryCodeForRegion(region);
    final dialingPrefix =
        PhoneNumberFormatter.getNationalDirectDialingPrefixForRegion(
            region, false);
    print('Region: $region | Country code: +$countryCode | National direct '
        'dialing prefix: $dialingPrefix');
  }
}
