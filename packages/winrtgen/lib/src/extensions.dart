// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import 'utils.dart';

extension DartTypeNameConversion on BaseType {
  /// Returns the appropriate Dart type name of the [baseType].
  String get dartTypeName {
    switch (this) {
      case BaseType.booleanType:
        return 'bool';
      case BaseType.doubleType:
      case BaseType.floatType:
        return 'double';
      case BaseType.int8Type:
      case BaseType.int16Type:
      case BaseType.int32Type:
      case BaseType.int64Type:
      case BaseType.uint8Type:
      case BaseType.uint16Type:
      case BaseType.uint32Type:
      case BaseType.uint64Type:
        return 'int';
      case BaseType.stringType:
        return 'String';
      default:
        return 'undefined';
    }
  }

  /// Returns the type signature of the [baseType].
  ///
  /// To learn more about this, see
  /// https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
  String get signature {
    switch (this) {
      case BaseType.booleanType:
        return 'b1';
      case BaseType.charType:
        return 'c2';
      case BaseType.doubleType:
        return 'f8';
      case BaseType.floatType:
        return 'f4';
      case BaseType.int8Type:
        return 'i1';
      case BaseType.int16Type:
        return 'i2';
      case BaseType.int32Type:
        return 'i4';
      case BaseType.int64Type:
        return 'i8';
      case BaseType.objectType:
        return 'cinterface(IInspectable)';
      case BaseType.stringType:
        return 'string';
      case BaseType.uint8Type:
        return 'u1';
      case BaseType.uint16Type:
        return 'u2';
      case BaseType.uint32Type:
        return 'u4';
      case BaseType.uint64Type:
        return 'u8';
      default:
        return 'undefined';
    }
  }
}

extension CamelCaseConversion on String {
  /// Converts a string to `camelCase`.
  String toCamelCase() {
    if (length == 0) return this;
    if (length == 1) return toLowerCase();

    for (final acronym in acronyms) {
      if (startsWith(acronym)) {
        // e.g. IPAddress -> ipAddress, UInt32 -> uint32
        return safeIdentifierForString(
            acronym.toLowerCase() + substring(acronym.length));
      }
    }

    // e.g. ICalendar -> iCalendar
    return substring(0, 1).toLowerCase() + substring(1);
  }
}
