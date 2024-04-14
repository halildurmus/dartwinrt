// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a 4*4 floating point matrix.
final class Matrix4x4 implements WinRTStruct {
  const Matrix4x4(
      this.m11,
      this.m12,
      this.m13,
      this.m14,
      this.m21,
      this.m22,
      this.m23,
      this.m24,
      this.m31,
      this.m32,
      this.m33,
      this.m34,
      this.m41,
      this.m42,
      this.m43,
      this.m44);

  final double m11;
  final double m12;
  final double m13;
  final double m14;
  final double m21;
  final double m22;
  final double m23;
  final double m24;
  final double m31;
  final double m32;
  final double m33;
  final double m34;
  final double m41;
  final double m42;
  final double m43;
  final double m44;

  @override
  Pointer<NativeMatrix4x4> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeMatrix4x4>();
    nativeStructPtr.ref
      ..m11 = m11
      ..m12 = m12
      ..m13 = m13
      ..m14 = m14
      ..m21 = m21
      ..m22 = m22
      ..m23 = m23
      ..m24 = m24
      ..m31 = m31
      ..m32 = m32
      ..m33 = m33
      ..m34 = m34
      ..m41 = m41
      ..m42 = m42
      ..m43 = m43
      ..m44 = m44;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Matrix4x4 &&
        m11 == other.m11 &&
        m12 == other.m12 &&
        m13 == other.m13 &&
        m14 == other.m14 &&
        m21 == other.m21 &&
        m22 == other.m22 &&
        m23 == other.m23 &&
        m24 == other.m24 &&
        m31 == other.m31 &&
        m32 == other.m32 &&
        m33 == other.m33 &&
        m34 == other.m34 &&
        m41 == other.m41 &&
        m42 == other.m42 &&
        m43 == other.m43 &&
        m44 == other.m44;
  }

  @override
  int get hashCode =>
      m11.hashCode ^
      m12.hashCode ^
      m13.hashCode ^
      m14.hashCode ^
      m21.hashCode ^
      m22.hashCode ^
      m23.hashCode ^
      m24.hashCode ^
      m31.hashCode ^
      m32.hashCode ^
      m33.hashCode ^
      m34.hashCode ^
      m41.hashCode ^
      m42.hashCode ^
      m43.hashCode ^
      m44.hashCode;
}

/// @nodoc
extension Matrix4x4ListToNativeMatrix4x4ArrayConversion on List<Matrix4x4> {
  /// Creates an array of [NativeMatrix4x4]s from a List of [Matrix4x4]s.
  Pointer<NativeMatrix4x4> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeMatrix4x4>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeMatrix4x4Conversion on NativeMatrix4x4 {
  /// Converts this [NativeMatrix4x4] into a Dart [Matrix4x4].
  Matrix4x4 toDart() => Matrix4x4(m11, m12, m13, m14, m21, m22, m23, m24, m31,
      m32, m33, m34, m41, m42, m43, m44);
}

/// @nodoc
extension PointerNativeMatrix4x4Conversion on Pointer<NativeMatrix4x4> {
  /// Converts the referenced [NativeMatrix4x4] into a Dart [Matrix4x4].
  Matrix4x4 toDart() {
    final ref = this.ref;
    return Matrix4x4(
        ref.m11,
        ref.m12,
        ref.m13,
        ref.m14,
        ref.m21,
        ref.m22,
        ref.m23,
        ref.m24,
        ref.m31,
        ref.m32,
        ref.m33,
        ref.m34,
        ref.m41,
        ref.m42,
        ref.m43,
        ref.m44);
  }

  /// Creates a `List<Matrix4x4>` from `Pointer<NativeMatrix4x4>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeMatrix4x4>`.
  List<Matrix4x4> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
