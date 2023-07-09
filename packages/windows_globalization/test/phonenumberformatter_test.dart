// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_globalization/windows_globalization.dart';

// Test the WinRT PhoneNumberFormatter class to make sure overrides, properties
// and methods are working correctly.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('Formatter is a materialized object', () {
    final formatter = PhoneNumberFormatter();
    expect(getTrustLevel(formatter), equals(TrustLevel.baseTrust));
    expect(
        getClassName(formatter),
        equals(
            'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter'));
  });

  test('Format a US number', () {
    final usFormatter = PhoneNumberFormatter.tryCreate('US');
    expect(usFormatter, isNotNull);
    final phone = usFormatter?.formatString('4255550123');
    expect(phone, equals('(425) 555-0123'));
  });

  test('Create a formatter for a different region code', () {
    // Generated from UK "numbers for use in TV and radio drama"
    // https://www.ofcom.org.uk/phones-telecoms-and-internet/information-for-industry/numbering/numbers-for-drama
    final ukFormatter = PhoneNumberFormatter.tryCreate('GB');
    expect(ukFormatter, isNotNull);
    final london = ukFormatter?.formatString('02079460123');
    expect(london, equals('020 7946 0123'));
    final reading = ukFormatter?.formatString('01184960987');
    expect(reading, equals('0118 496 0987'));
  });

  test('Country codes for regions', () {
    expect(PhoneNumberFormatter.getCountryCodeForRegion('US'), equals(1));
    expect(PhoneNumberFormatter.getCountryCodeForRegion('GB'), equals(44));
    expect(PhoneNumberFormatter.getCountryCodeForRegion('UA'), equals(380));
  });

  test('Direct dialing prefix for regions', () {
    expect(
        PhoneNumberFormatter.getNationalDirectDialingPrefixForRegion(
            'US', false),
        equals('1'));
    expect(
        PhoneNumberFormatter.getNationalDirectDialingPrefixForRegion(
            'TR', false),
        equals('0'));
    expect(
        PhoneNumberFormatter.getNationalDirectDialingPrefixForRegion(
            'TZ', true),
        equals('0'));
  });
}
