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

/// Corresponds to the LUID (Locally Unique Identifier) associated with a
/// graphics adapter.
final class DisplayAdapterId implements WinRTStruct {
  DisplayAdapterId(this.lowPart, this.highPart);

  final int lowPart;
  final int highPart;

  @override
  Pointer<NativeDisplayAdapterId> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeDisplayAdapterId>();
    nativeStructPtr.ref
      ..lowPart = lowPart
      ..highPart = highPart;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DisplayAdapterId &&
        lowPart == other.lowPart &&
        highPart == other.highPart;
  }

  @override
  int get hashCode => lowPart.hashCode ^ highPart.hashCode;
}

/// @nodoc
extension NativeDisplayAdapterIdConversion on NativeDisplayAdapterId {
  /// Converts this [NativeDisplayAdapterId] into a Dart [DisplayAdapterId].
  DisplayAdapterId toDart() => DisplayAdapterId(lowPart, highPart);
}

/// @nodoc
extension PointerNativeDisplayAdapterIdConversion
    on Pointer<NativeDisplayAdapterId> {
  /// Converts the referenced [NativeDisplayAdapterId] into a Dart
  /// [DisplayAdapterId].
  DisplayAdapterId toDart() {
    final ref = this.ref;
    return DisplayAdapterId(ref.lowPart, ref.highPart);
  }

  /// Creates a `List<DisplayAdapterId>` from
  /// `Pointer<NativeDisplayAdapterId>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeDisplayAdapterId>`.
  List<DisplayAdapterId> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
