// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents how an array is passed between the caller and the implementation.
enum ArrayStyle {
  /// The caller passes a write-only array, and the implementation fills it
  /// with data.
  fill,

  /// The caller passes a read-only array, and the implementation reads from it.
  pass,

  /// The implementation allocates a block of memory for the array and the
  /// caller receives a pointer to that block of memory, as well as the number
  /// of elements in the array.
  receive
}
