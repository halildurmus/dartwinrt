// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Acronyms that appear in the enum fields and method names.
/// These are used while projecting enums and methods to match the Dart style
/// guide.
/// See https://dart.dev/guides/language/effective-dart/style#do-capitalize-acronyms-and-abbreviations-longer-than-two-letters-like-words
const _acronyms = <String>{
  'AC', 'DB', 'DPad', 'HD', 'HR', 'IO', 'IP', 'NT', 'TV', 'UI', 'WiFi', //
};

extension CamelCaseConversion on String {
  /// Converts this string to `camelCase`.
  String toCamelCase() {
    if (length == 0) return this;
    if (length == 1) return toLowerCase();

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
