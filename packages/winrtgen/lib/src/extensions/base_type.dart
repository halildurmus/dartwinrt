// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

extension BaseTypeHelpers on BaseType {
  /// Returns the appropriate Dart type for this BaseType.
  String get dartType => switch (this) {
        BaseType.booleanType => 'bool',
        BaseType.doubleType || BaseType.floatType => 'double',
        BaseType.int8Type ||
        BaseType.int16Type ||
        BaseType.int32Type ||
        BaseType.int64Type ||
        BaseType.uint8Type ||
        BaseType.uint16Type ||
        BaseType.uint32Type ||
        BaseType.uint64Type =>
          'int',
        BaseType.charType || BaseType.stringType => 'String',
        BaseType.voidType => 'void',
        _ => throw UnsupportedError('Unsupported BaseType: $this'),
      };

  /// Returns the type signature of this BaseType as defined in here:
  /// https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
  String get signature => switch (this) {
        BaseType.booleanType => 'b1',
        BaseType.charType => 'c2',
        BaseType.doubleType => 'f8',
        BaseType.floatType => 'f4',
        BaseType.int8Type => 'i1',
        BaseType.int16Type => 'i2',
        BaseType.int32Type => 'i4',
        BaseType.int64Type => 'i8',
        BaseType.objectType => 'cinterface(IInspectable)',
        BaseType.stringType => 'string',
        BaseType.uint8Type => 'u1',
        BaseType.uint16Type => 'u2',
        BaseType.uint32Type => 'u4',
        BaseType.uint64Type => 'u8',
        _ => throw UnsupportedError('Unsupported BaseType: $this')
      };
}
