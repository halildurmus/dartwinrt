// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

/// Describes a 3*2 floating point matrix.
///
/// {@category struct}
class Matrix3x2 extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double m31;

  @Float()
  external double m32;
}

/// Describes a 4*4 floating point matrix.
///
/// {@category struct}
class Matrix4x4 extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m13;

  @Float()
  external double m14;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double m23;

  @Float()
  external double m24;

  @Float()
  external double m31;

  @Float()
  external double m32;

  @Float()
  external double m33;

  @Float()
  external double m34;

  @Float()
  external double m41;

  @Float()
  external double m42;

  @Float()
  external double m43;

  @Float()
  external double m44;
}

/// Describes a plane (a flat, two-dimensional surface).
///
/// {@category struct}
class Plane extends Struct {
  external Vector3 normal;

  @Float()
  external double d;
}

/// Describes a quaternion, which is an abstract representation of an
/// orientation in space that is based on complex numbers.
///
/// {@category struct}
class Quaternion extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;

  @Float()
  external double w;
}

/// Describes a number that can be created by the division of 2 integers.
///
/// {@category struct}
class Rational extends Struct {
  @Uint32()
  external int numerator;

  @Uint32()
  external int denominator;
}

/// Describes a vector of two floating-point components.
///
/// {@category struct}
class Vector2 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// Describes a vector of three floating-point components.
///
/// {@category struct}
class Vector3 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;
}

/// Describes a vector of four floating-point components.
///
/// {@category struct}
class Vector4 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;

  @Float()
  external double w;
}
