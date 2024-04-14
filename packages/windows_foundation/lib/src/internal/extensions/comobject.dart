// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:win32/win32.dart';

/// @nodoc
extension COMObjectPointerHelper on Pointer<COMObject> {
  /// Whether this is a null pointer.
  bool get isNull => address == 0 || ref.isNull;
}
