// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a number that can be created by the division of 2 integers.
final class Rational implements WinRTStruct {
  Rational(this.numerator, this.denominator);

  final int numerator;
  final int denominator;

  @override
  Pointer<NativeRational> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeRational>();
    nativeStructPtr.ref
      ..numerator = numerator
      ..denominator = denominator;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Rational &&
        numerator == other.numerator &&
        denominator == other.denominator;
  }

  @override
  int get hashCode => numerator.hashCode ^ denominator.hashCode;
}

/// @nodoc
extension PointerNativeRationalConversion on Pointer<NativeRational> {
  /// Converts this [NativeRational] to a Dart [Rational].
  Rational toDart() {
    final ref = this.ref;
    return Rational(ref.numerator, ref.denominator);
  }
}
