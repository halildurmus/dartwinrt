// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

/// Identifies a sub-string of a source text string. Your app can use this
/// structure to obtain the segment of your provided text that is identified by
/// AlternateWordForm, SelectableWordSegment, WordSegment, or SemanticTextQuery.
final class TextSegment implements WinRTStruct {
  const TextSegment(this.startPosition, this.length);

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
extension TextSegmentListToNativeTextSegmentArrayConversion
    on List<TextSegment> {
  /// Creates an array of [NativeTextSegment]s from a List of [TextSegment]s.
  Pointer<NativeTextSegment> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeTextSegment>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeTextSegmentConversion on NativeTextSegment {
  /// Converts this [NativeTextSegment] into a Dart [TextSegment].
  TextSegment toDart() => TextSegment(startPosition, length);
}

/// @nodoc
extension PointerNativeTextSegmentConversion on Pointer<NativeTextSegment> {
  /// Converts the referenced [NativeTextSegment] into a Dart [TextSegment].
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
