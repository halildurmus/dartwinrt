// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

extension StringHelpers on String {
  /// Capitalizes the first letter of this string.
  String capitalize() {
    if (length == 0) return this;
    if (length == 1) return toUpperCase();

    // e.g. value -> Value
    return this[0].toUpperCase() + substring(1);
  }

  /// Converts this string to `camelCase`.
  String toCamelCase() {
    if (length == 0) return this;
    if (length == 1) return toLowerCase();

    // e.g. USD -> usd
    if (_currencyCodes.contains(this)) return toLowerCase();

    for (final acronym in _acronyms) {
      if (startsWith(acronym)) {
        // e.g. IPAddress -> ipAddress, UInt32 -> uint32
        return acronym.toLowerCase() + substring(acronym.length);
      }
    }

    // e.g. ICalendar -> iCalendar
    return substring(0, 1).toLowerCase() + substring(1);
  }
}

/// Acronyms that appear in various places in Windows Metadata.
/// Used in generation script to comply with the Dart style guide.
/// See https://dart.dev/guides/language/effective-dart/style#do-capitalize-acronyms-and-abbreviations-longer-than-two-letters-like-words
const _acronyms = <String>{
  'AC', 'DB', 'DPad', 'HD', 'IO', 'IP', 'NT', 'TV', 'UI', 'WiFi', //
};

/// Currency codes that appear in the `CurrencyIdentifiers` class.
/// See https://learn.microsoft.com/uwp/api/windows.globalization.currencyidentifiers
const _currencyCodes = <String>{
  'HNL', 'AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', //
  'AZN', 'BBD', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BRL', //
  'BSD', 'BTN', 'BWP', 'BYR', 'BZD', 'CAD', 'CDF', 'CHF', 'CLP', 'CNY', //
  'COP', 'CRC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DZD', 'EGP', //
  'ERN', 'ETB', 'EUR', 'FJD', 'FKP', 'GBP', 'GEL', 'GHS', 'GIP', 'GMD', //
  'GNF', 'GTQ', 'GYD', 'HKD', 'RON', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', //
  'INR', 'IQD', 'IRR', 'ISK', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', //
  'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LKR', 'LRD', //
  'LSL', 'LTL', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MMK', 'MNT', //
  'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', //
  'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', //
  'PLN', 'PYG', 'QAR', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', //
  'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'STD', 'SYP', 'SZL', 'THB', //
  'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TWD', 'TZS', 'UAH', 'UGX', //
  'USD', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XCD', 'XOF', //
  'XPF', 'XXX', 'YER', 'ZAR', 'ZMW', 'ZWL', 'BYN', 'SSP', 'STN', 'VES', 'MRU'
};
