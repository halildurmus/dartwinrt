// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Identifies a sub-string of a source text string. Your app can use this
/// structure to obtain the segment of your provided text that is identified
/// by AlternateWordForm, SelectableWordSegment, WordSegment, or
/// SemanticTextQuery.
final class TextSegment implements WinRTStruct {
  TextSegment(this.startPosition, this.length);

  final int startPosition;
  final int length;

  @override
  Pointer<NativeTextSegment> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeTextSegment>();
    nativeStructPtr.ref
      ..startPosition = startPosition
      ..length = length;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TextSegment &&
        startPosition == other.startPosition &&
        length == other.length;
  }

  @override
  int get hashCode => startPosition.hashCode ^ length.hashCode;
}

/// @nodoc
extension PointerNativeTextSegmentConversion on Pointer<NativeTextSegment> {
  /// Converts this [NativeTextSegment] to a Dart [TextSegment].
  TextSegment toDart() {
    final ref = this.ref;
    return TextSegment(ref.startPosition, ref.length);
  }

  /// Creates a `List<TextSegment>` from `Pointer<NativeTextSegment>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeTextSegment>`.
  List<TextSegment> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
