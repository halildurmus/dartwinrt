// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// @nodoc
extension GuidArrayToListConversion on Pointer<GUID> {
  /// Frees the memory allocated by the referenced [GUID].
  void free() {
    calloc.free(this);
  }

  /// Creates a [List] from `Pointer<GUID>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<GUID>`.
  List<Guid> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) Guid.parse(this[i].toString())];
}
