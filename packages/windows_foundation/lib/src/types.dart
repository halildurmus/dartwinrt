// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents the double types supported by WinRT type system.
enum DoubleType {
  /// A 32-bit floating point number.
  double('Double'),

  /// A 64-bit floating point number.
  float('Float');

  final String name;

  const DoubleType(this.name);
}

/// Represents the integer types supported by WinRT type system.
///
/// WinRT type system does not support Int8 types.
/// See https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system#fundamental-types
enum IntType {
  /// A 16-bit signed integer.
  int16('Int16'),

  /// A 32-bit signed integer.
  int32('Int32'),

  /// A 64-bit signed integer.
  int64('Int64'),

  /// A 8-bit unsigned integer.
  uint8('Uint8'),

  /// A 16-bit unsigned integer.
  uint16('Uint16'),

  /// A 32-bit unsigned integer.
  uint32('Uint32'),

  /// A 64-bit unsigned integer.
  uint64('Uint64');

  final String name;

  const IntType(this.name);
}
