// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents the various array-passing styles in WinRT.
///
/// See https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system#array-parameters
enum ArrayPassingStyle {
  /// Used when the caller provides an array for the method to fill, up to a
  /// maximum array size.
  ///
  /// In this style, the array size parameter is an `in` parameter, while the
  /// array parameter is an `out` parameter.
  fill,

  /// Used when the caller provides an array to the method.
  ///
  /// In this style, the array size parameter and the array parameter are both
  /// `in` parameters.
  pass,

  /// Used when the caller receives an array that was allocated by the method.
  ///
  /// In this style, the array size parameter and the array parameter are both
  /// `out` parameters. Additionally, the array parameter is passed by
  /// reference (that is, `ArrayType**`, rather than `ArrayType*`).
  receive
}
