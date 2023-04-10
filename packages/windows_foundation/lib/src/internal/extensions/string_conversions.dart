// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32/win32.dart';

extension IntToDartStringConversion on int {
  /// Gets the Dart String at this handle.
  String toDartString() => convertFromHString(this);
}

extension DartStringToHStringConversion on String {
  /// Converts this String into an `HSTRING` (a WinRT String), returning an
  /// integer handle.
  ///
  /// The caller is responsible for deleting the `HSTRING` when it is no longer
  /// used, through a call to `WindowsDeleteString(HSTRING hstring)`, which
  /// decrements the reference count of that string. If the reference count
  /// reaches 0, the Windows Runtime deallocates the buffer.
  int toHString() => convertToHString(this);
}
