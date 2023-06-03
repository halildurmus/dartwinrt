// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension method to convert HSTRING arrays to List<String>

import 'dart:ffi';

import 'package:win32/win32.dart';

import 'string_conversions.dart';

/// @nodoc
extension HStringArrayToListConversion on Pointer<HSTRING> {
  /// Creates a [List] from `Pointer<HSTRING>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<HSTRING>`.
  ///
  /// ```dart
  /// final pHString = ...
  /// final list = pHString.toList(length: 5);
  /// ```
  List<String> toList({int length = 1}) {
    final list = <String>[];
    for (var i = 0; i < length; i++) {
      final element = this[i];
      list.add(element.toDartString());
      WindowsDeleteString(element);
    }

    return list;
  }
}
