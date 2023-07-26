// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

/// Describes a 3*2 floating point matrix.
final class Matrix3x2 implements WinRTStruct {
  const Matrix3x2(this.m11, this.m12, this.m21, this.m22, this.m31, this.m32);

  final double m11;
  final double m12;
  final double m21;
  final double m22;
  final double m31;
  final double m32;

  @override
  Pointer<NativeMatrix3x2> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeMatrix3x2>();
    nativeStructPtr.ref
      ..m11 = m11
      ..m12 = m12
      ..m21 = m21
      ..m22 = m22
      ..m31 = m31
      ..m32 = m32;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Matrix3x2 &&
        m11 == other.m11 &&
        m12 == other.m12 &&
        m21 == other.m21 &&
        m22 == other.m22 &&
        m31 == other.m31 &&
        m32 == other.m32;
  }

  @override
  int get hashCode =>
      m11.hashCode ^
      m12.hashCode ^
      m21.hashCode ^
      m22.hashCode ^
      m31.hashCode ^
      m32.hashCode;
}

/// @nodoc
extension Matrix3x2ListToNativeMatrix3x2ArrayConversion on List<Matrix3x2> {
  /// Creates an array of [NativeMatrix3x2]s from a List of [Matrix3x2]s.
  Pointer<NativeMatrix3x2> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeMatrix3x2>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeMatrix3x2Conversion on NativeMatrix3x2 {
  /// Converts this [NativeMatrix3x2] into a Dart [Matrix3x2].
  Matrix3x2 toDart() => Matrix3x2(m11, m12, m21, m22, m31, m32);
}

/// @nodoc
extension PointerNativeMatrix3x2Conversion on Pointer<NativeMatrix3x2> {
  /// Converts the referenced [NativeMatrix3x2] into a Dart [Matrix3x2].
  Matrix3x2 toDart() {
    final ref = this.ref;
    return Matrix3x2(ref.m11, ref.m12, ref.m21, ref.m22, ref.m31, ref.m32);
  }

  /// Creates a `List<Matrix3x2>` from `Pointer<NativeMatrix3x2>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeMatrix3x2>`.
  List<Matrix3x2> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
