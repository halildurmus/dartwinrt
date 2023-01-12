// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert HSTRING arrays to List<String>

import 'dart:ffi';

import 'package:win32/win32.dart';

extension HStringHelper on Pointer<HSTRING> {
  /// Creates a [List] from `Pointer<HSTRING>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<HSTRING>`.
  ///
  /// ```dart
  /// final pHString = ...
  /// final list = pHString.toList(length: 5);
  /// ```
  ///
  /// {@category winrt}
  List<String> toList({int length = 1}) {
    final list = <String>[];
    for (var i = 0; i < length; i++) {
      final element = this[i];
      if (element != 0) {
        list.add(convertFromHString(this[i]));
        WindowsDeleteString(this[i]);
      }
    }

    return list;
  }
}
