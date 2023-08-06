// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

import '../types.dart';

extension IUnknownHelpers on IUnknown {
  /// Casts this COM object to an interface specified in [iid].
  ///
  /// [creator] must be the constructor of the class to be casted to (e.g.,
  /// `ICalendar.fromPtr`).
  ///
  /// Throws a [WindowsException] if the cast fails.
  T cast<T extends IUnknown>(COMObjectCreator<T> creator, String iid) =>
      creator(toInterface(iid));

  /// Tries to cast this COM object to an interface specified in [iid].
  ///
  /// [creator] must be the constructor of the class to be casted to (e.g.,
  /// `ICalendar.fromPtr`).
  ///
  /// Returns `null` if the cast fails.
  T? tryCast<T extends IUnknown>(COMObjectCreator<T> creator, String iid) {
    try {
      return cast(creator, iid);
    } on WindowsException {
      return null;
    }
  }
}
