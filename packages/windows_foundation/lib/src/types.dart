// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

/// Alias for a Pointer to COM vtable.
typedef LPVTBL = Pointer<Pointer<IntPtr>>;

/// Represents the integer types supported by WinRT type system.
///
/// WinRT type system does not support Int8 types.
/// See https://docs.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#fundamental-types
enum IntType {
  /// A 16-bit signed integer.
  int16,

  /// A 32-bit signed integer.
  int32,

  /// A 64-bit signed integer.
  int64,

  /// A 8-bit unsigned integer.
  uint8,

  /// A 16-bit unsigned integer.
  uint16,

  /// A 32-bit unsigned integer.
  uint32,

  /// A 64-bit unsigned integer.
  uint64,
}
