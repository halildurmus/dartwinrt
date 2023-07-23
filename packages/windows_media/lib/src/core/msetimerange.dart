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

/// Describes the start and end of a time range.
final class MseTimeRange implements WinRTStruct {
  MseTimeRange(this.start, this.end);

  final Duration start;
  final Duration end;

  @override
  Pointer<NativeMseTimeRange> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeMseTimeRange>();
    nativeStructPtr.ref
      ..start = start.toWinRTDuration()
      ..end = end.toWinRTDuration();
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MseTimeRange && start == other.start && end == other.end;
  }

  @override
  int get hashCode => start.hashCode ^ end.hashCode;
}

/// @nodoc
extension NativeMseTimeRangeConversion on NativeMseTimeRange {
  /// Converts this [NativeMseTimeRange] into a Dart [MseTimeRange].
  MseTimeRange toDart() =>
      MseTimeRange(start.toDartDuration(), end.toDartDuration());
}

/// @nodoc
extension PointerNativeMseTimeRangeConversion on Pointer<NativeMseTimeRange> {
  /// Converts the referenced [NativeMseTimeRange] into a Dart [MseTimeRange].
  MseTimeRange toDart() {
    final ref = this.ref;
    return MseTimeRange(ref.start.toDartDuration(), ref.end.toDartDuration());
  }

  /// Creates a `List<MseTimeRange>` from `Pointer<NativeMseTimeRange>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeMseTimeRange>`.
  List<MseTimeRange> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
