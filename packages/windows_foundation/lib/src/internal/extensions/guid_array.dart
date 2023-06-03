// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension method to convert GUID arrays to List<Guid>

import 'dart:ffi';

import 'package:win32/win32.dart';

/// @nodoc
extension GuidArrayToListConversion on Pointer<GUID> {
  /// Creates a [List] from `Pointer<GUID>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<GUID>`.
  ///
  /// ```dart
  /// final pGuid = ...
  /// final list = pGuid.toList(length: 5);
  /// ```
  List<Guid> toList({int length = 1}) {
    final list = <Guid>[];
    for (var i = 0; i < length; i++) {
      final element = this[i];
      list.add(Guid.parse(element.toString()));
    }

    return list;
  }
}
