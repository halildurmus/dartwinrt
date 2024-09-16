// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents a selection of text content.
final class TextRange implements WinRTStruct {
  const TextRange(this.startIndex, this.length);

  final int startIndex;
  final int length;

  @override
  Pointer<NativeTextRange> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeTextRange>();
    nativeStructPtr.ref
      ..startIndex = startIndex
      ..length = length;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TextRange &&
        startIndex == other.startIndex &&
        length == other.length;
  }

  @override
  int get hashCode => startIndex.hashCode ^ length.hashCode;
}

/// @nodoc
extension TextRangeListToNativeTextRangeArrayConversion on List<TextRange> {
  /// Creates an array of [NativeTextRange]s from a List of [TextRange]s.
  Pointer<NativeTextRange> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeTextRange>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeTextRangeConversion on NativeTextRange {
  /// Converts this [NativeTextRange] into a Dart [TextRange].
  TextRange toDart() => TextRange(startIndex, length);
}

/// @nodoc
extension PointerNativeTextRangeConversion on Pointer<NativeTextRange> {
  /// Converts the referenced [NativeTextRange] into a Dart [TextRange].
  TextRange toDart() {
    final ref = this.ref;
    return TextRange(ref.startIndex, ref.length);
  }

  /// Creates a `List<TextRange>` from `Pointer<NativeTextRange>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeTextRange>`.
  List<TextRange> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
