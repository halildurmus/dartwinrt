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

/// This is a Windows Runtime equivalent of the Desktop DXGI_SAMPLE_DESC
/// structure.
final class Direct3DMultisampleDescription implements WinRTStruct {
  const Direct3DMultisampleDescription(this.count, this.quality);

  final int count;
  final int quality;

  @override
  Pointer<NativeDirect3DMultisampleDescription> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeDirect3DMultisampleDescription>();
    nativeStructPtr.ref
      ..count = count
      ..quality = quality;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Direct3DMultisampleDescription &&
        count == other.count &&
        quality == other.quality;
  }

  @override
  int get hashCode => count.hashCode ^ quality.hashCode;
}

/// @nodoc
extension Direct3DMultisampleDescriptionListToNativeDirect3DMultisampleDescriptionArrayConversion
    on List<Direct3DMultisampleDescription> {
  /// Creates an array of [NativeDirect3DMultisampleDescription]s from a List of
  /// [Direct3DMultisampleDescription]s.
  Pointer<NativeDirect3DMultisampleDescription> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeDirect3DMultisampleDescription>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeDirect3DMultisampleDescriptionConversion
    on NativeDirect3DMultisampleDescription {
  /// Converts this [NativeDirect3DMultisampleDescription] into a Dart
  /// [Direct3DMultisampleDescription].
  Direct3DMultisampleDescription toDart() =>
      Direct3DMultisampleDescription(count, quality);
}

/// @nodoc
extension PointerNativeDirect3DMultisampleDescriptionConversion
    on Pointer<NativeDirect3DMultisampleDescription> {
  /// Converts the referenced [NativeDirect3DMultisampleDescription] into a Dart
  /// [Direct3DMultisampleDescription].
  Direct3DMultisampleDescription toDart() {
    final ref = this.ref;
    return Direct3DMultisampleDescription(ref.count, ref.quality);
  }

  /// Creates a `List<Direct3DMultisampleDescription>` from
  /// `Pointer<NativeDirect3DMultisampleDescription>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeDirect3DMultisampleDescription>`.
  List<Direct3DMultisampleDescription> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
