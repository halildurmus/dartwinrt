// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents a time range within media content.
final class MediaTimeRange implements WinRTStruct {
  MediaTimeRange(this.start, this.end);

  final int start;
  final int end;

  @override
  Pointer<NativeMediaTimeRange> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeMediaTimeRange>();
    nativeStructPtr.ref
      ..start = start
      ..end = end;
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
extension PointerNativeMediaTimeRangeConversion
    on Pointer<NativeMediaTimeRange> {
  /// Converts this [NativeMediaTimeRange] to a Dart [MediaTimeRange].
  MediaTimeRange toDart() {
    final ref = this.ref;
    return MediaTimeRange(ref.start, ref.end);
  }

  /// Creates a `List<MediaTimeRange>` from `Pointer<NativeMediaTimeRange>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeMediaTimeRange>`.
  List<MediaTimeRange> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
