// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

extension BaseTypeHelpers on BaseType {
  /// Returns the appropriate Dart type name of this BaseType.
  String get dartType {
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
        throw UnsupportedError('Unsupported base type: $name');
    }
  }

  /// Returns the type signature of this BaseType as defined in:
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
        throw UnsupportedError('Unsupported base type: $name');
    }
  }
}
