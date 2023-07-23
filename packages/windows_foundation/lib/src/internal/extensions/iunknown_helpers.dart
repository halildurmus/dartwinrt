// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:win32/win32.dart';

extension VTablePointerHelper on IUnknown? {
  /// Returns the [VTablePointer] associated with the object, or returns
  /// [nullptr] if the object is `null`.
  VTablePointer get lpVtbl => this?.ptr.ref.lpVtbl ?? nullptr;
}
