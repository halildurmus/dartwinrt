// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// @nodoc
extension IInspectableFreeHelper on IInspectable {
  /// Detaches the object from the `Finalizer`, decrements its reference count
  /// and frees its memory.
  void free() {
    detach();
    release();
    calloc.free(ptr);
  }
}

/// @nodoc
extension IInspectableVTablePointerHelper on IInspectable? {
  /// Returns the [VTablePointer] associated with the object, or returns
  /// [nullptr] if the object is `null`.
  VTablePointer get lpVtbl => this?.ptr.ref.lpVtbl ?? nullptr;
}
