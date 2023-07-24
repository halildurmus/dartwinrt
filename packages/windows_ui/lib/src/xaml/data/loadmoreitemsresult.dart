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

/// Wraps the asynchronous results of a LoadMoreItemsAsync call.
final class LoadMoreItemsResult implements WinRTStruct {
  LoadMoreItemsResult(this.count);

  final int count;

  @override
  Pointer<NativeLoadMoreItemsResult> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeLoadMoreItemsResult>();
    nativeStructPtr.ref..count = count;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LoadMoreItemsResult && count == other.count;
  }

  @override
  int get hashCode => count.hashCode;
}

/// @nodoc
extension LoadMoreItemsResultListToNativeLoadMoreItemsResultArrayConversion
    on List<LoadMoreItemsResult> {
  /// Creates an array of [NativeLoadMoreItemsResult]s from a List of
  /// [LoadMoreItemsResult]s.
  Pointer<NativeLoadMoreItemsResult> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeLoadMoreItemsResult>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeLoadMoreItemsResultConversion on NativeLoadMoreItemsResult {
  /// Converts this [NativeLoadMoreItemsResult] into a Dart
  /// [LoadMoreItemsResult].
  LoadMoreItemsResult toDart() => LoadMoreItemsResult(count);
}

/// @nodoc
extension PointerNativeLoadMoreItemsResultConversion
    on Pointer<NativeLoadMoreItemsResult> {
  /// Converts the referenced [NativeLoadMoreItemsResult] into a Dart
  /// [LoadMoreItemsResult].
  LoadMoreItemsResult toDart() {
    final ref = this.ref;
    return LoadMoreItemsResult(ref.count);
  }

  /// Creates a `List<LoadMoreItemsResult>` from
  /// `Pointer<NativeLoadMoreItemsResult>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeLoadMoreItemsResult>`.
  List<LoadMoreItemsResult> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
