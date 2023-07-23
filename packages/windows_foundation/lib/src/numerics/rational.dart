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
extension NativeRationalConversion on NativeRational {
  /// Converts this [NativeRational] into a Dart [Rational].
  Rational toDart() => Rational(numerator, denominator);
}

/// @nodoc
extension PointerNativeRationalConversion on Pointer<NativeRational> {
  /// Converts the referenced [NativeRational] into a Dart [Rational].
  Rational toDart() {
    final ref = this.ref;
    return Rational(ref.numerator, ref.denominator);
  }

  /// Creates a `List<Rational>` from `Pointer<NativeRational>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeRational>`.
  List<Rational> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
