// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

/// Represents an x- and y-coordinate pair in two-dimensional space. Can
/// also represent a logical point for certain property usages.
///
/// {@category struct}
class Point extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// Describes the width, height, and point origin of a rectangle.
///
/// {@category struct}
class Rect extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double width;

  @Float()
  external double height;
}

/// Describes the width and height of an object.
///
/// {@category struct}
class Size extends Struct {
  @Float()
  external double width;

  @Float()
  external double height;
}
