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

/// Defines an identifier for a top-level window.
final class WindowId implements WinRTStruct {
  WindowId(this.value);

  final int value;

  @override
  Pointer<NativeWindowId> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeWindowId>();
    nativeStructPtr.ref..value = value;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WindowId && value == other.value;
  }

  @override
  int get hashCode => value.hashCode;
}

/// @nodoc
extension WindowIdListToNativeWindowIdArrayConversion on List<WindowId> {
  /// Creates an array of [NativeWindowId]s from a List of [WindowId]s.
  Pointer<NativeWindowId> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeWindowId>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeWindowIdConversion on NativeWindowId {
  /// Converts this [NativeWindowId] into a Dart [WindowId].
  WindowId toDart() => WindowId(value);
}

/// @nodoc
extension PointerNativeWindowIdConversion on Pointer<NativeWindowId> {
  /// Converts the referenced [NativeWindowId] into a Dart [WindowId].
  WindowId toDart() {
    final ref = this.ref;
    return WindowId(ref.value);
  }

  /// Creates a `List<WindowId>` from `Pointer<NativeWindowId>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeWindowId>`.
  List<WindowId> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
