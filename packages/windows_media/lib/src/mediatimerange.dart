// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents a time range within media content.
final class MediaTimeRange implements WinRTStruct {
  MediaTimeRange(this.start, this.end);

  final Duration start;
  final Duration end;

  @override
  Pointer<NativeMediaTimeRange> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeMediaTimeRange>();
    nativeStructPtr.ref
      ..start = start.toWinRTDuration()
      ..end = end.toWinRTDuration();
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MediaTimeRange && start == other.start && end == other.end;
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}

/// @nodoc
extension NativeMediaTimeRangeConversion on NativeMediaTimeRange {
  /// Converts this [NativeMediaTimeRange] into a Dart [MediaTimeRange].
  MediaTimeRange toDart() {
    return MediaTimeRange(start.toDartDuration(), end.toDartDuration());
  }
}

/// @nodoc
extension PointerNativeMediaTimeRangeConversion
    on Pointer<NativeMediaTimeRange> {
  /// Frees the allocated memory for [NativeMediaTimeRange].
  void free() {
    calloc.free(this);
  }

  /// Converts the referenced [NativeMediaTimeRange] into a Dart
  /// [MediaTimeRange].
  MediaTimeRange toDart() {
    final ref = this.ref;
    return MediaTimeRange(ref.start.toDartDuration(), ref.end.toDartDuration());
  }

  /// Creates a `List<MediaTimeRange>` from `Pointer<NativeMediaTimeRange>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeMediaTimeRange>`.
  List<MediaTimeRange> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
