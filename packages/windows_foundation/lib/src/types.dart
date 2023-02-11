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
enum WinRTIntType {
  int16,
  int32,
  int64,
  uint8,
  uint16,
  uint32,
  uint64,
}
