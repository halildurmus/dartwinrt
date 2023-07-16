// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Contains status information about the file transfer operation.
final class BackgroundTransferFileRange implements WinRTStruct {
  BackgroundTransferFileRange(this.offset, this.length);

  final int offset;
  final int length;

  @override
  Pointer<NativeBackgroundTransferFileRange> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeBackgroundTransferFileRange>();
    nativeStructPtr.ref
      ..offset = offset
      ..length = length;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BackgroundTransferFileRange &&
        offset == other.offset &&
        length == other.length;
  }

  @override
  int get hashCode => offset.hashCode ^ length.hashCode;
}

/// @nodoc
extension PointerNativeBackgroundTransferFileRangeConversion
    on Pointer<NativeBackgroundTransferFileRange> {
  /// Converts this [NativeBackgroundTransferFileRange] to a Dart
  /// [BackgroundTransferFileRange].
  BackgroundTransferFileRange toDart() {
    final ref = this.ref;
    return BackgroundTransferFileRange(ref.offset, ref.length);
  }

  /// Creates a `List<BackgroundTransferFileRange>` from
  /// `Pointer<NativeBackgroundTransferFileRange>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeBackgroundTransferFileRange>`.
  List<BackgroundTransferFileRange> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}