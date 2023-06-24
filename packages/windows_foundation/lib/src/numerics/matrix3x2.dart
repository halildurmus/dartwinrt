// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a 3*2 floating point matrix.
final class Matrix3x2 implements WinRTStruct {
  Matrix3x2(this.m11, this.m12, this.m21, this.m22, this.m31, this.m32);

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
extension PointerNativeMatrix3x2Conversion on Pointer<NativeMatrix3x2> {
  /// Converts this [NativeMatrix3x2] to a Dart [Matrix3x2].
  Matrix3x2 toDart() {
    final ref = this.ref;
    return Matrix3x2(ref.m11, ref.m12, ref.m21, ref.m22, ref.m31, ref.m32);
  }
}
