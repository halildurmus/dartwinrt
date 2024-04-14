// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// The base class that all WinRT structs implement.
abstract interface class WinRTStruct<T extends Struct> {
  /// Copy the [T] to unmanaged memory and return a pointer to the memory
  /// location.
  ///
  /// It is the caller's responsibility to free the memory at the pointer
  /// location, for example by calling [calloc]'s `free` method.
  Pointer<T> toNative({Allocator allocator = malloc});
}
