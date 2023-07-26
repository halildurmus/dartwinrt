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

import '../directxpixelformat.dart';
import 'direct3dmultisampledescription.dart';

/// This is a Windows Runtime equivalent of the Desktop DXGI_SURFACE_DESC
/// structure. Describes an IDirect3DSurface.
final class Direct3DSurfaceDescription implements WinRTStruct {
  const Direct3DSurfaceDescription(
      this.width, this.height, this.format, this.multisampleDescription);

  final int width;
  final int height;
  final DirectXPixelFormat format;
  final Direct3DMultisampleDescription multisampleDescription;

  @override
  Pointer<NativeDirect3DSurfaceDescription> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeDirect3DSurfaceDescription>();
    nativeStructPtr.ref
      ..width = width
      ..height = height
      ..format = format.value
      ..multisampleDescription =
          multisampleDescription.toNative(allocator: allocator).ref;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Direct3DSurfaceDescription &&
        width == other.width &&
        height == other.height &&
        format == other.format &&
        multisampleDescription == other.multisampleDescription;
  }

  @override
  int get hashCode =>
      width.hashCode ^
      height.hashCode ^
      format.hashCode ^
      multisampleDescription.hashCode;
}

/// @nodoc
extension Direct3DSurfaceDescriptionListToNativeDirect3DSurfaceDescriptionArrayConversion
    on List<Direct3DSurfaceDescription> {
  /// Creates an array of [NativeDirect3DSurfaceDescription]s from a List of
  /// [Direct3DSurfaceDescription]s.
  Pointer<NativeDirect3DSurfaceDescription> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeDirect3DSurfaceDescription>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeDirect3DSurfaceDescriptionConversion
    on NativeDirect3DSurfaceDescription {
  /// Converts this [NativeDirect3DSurfaceDescription] into a Dart
  /// [Direct3DSurfaceDescription].
  Direct3DSurfaceDescription toDart() => Direct3DSurfaceDescription(width,
      height, DirectXPixelFormat.from(format), multisampleDescription.toDart());
}

/// @nodoc
extension PointerNativeDirect3DSurfaceDescriptionConversion
    on Pointer<NativeDirect3DSurfaceDescription> {
  /// Converts the referenced [NativeDirect3DSurfaceDescription] into a Dart
  /// [Direct3DSurfaceDescription].
  Direct3DSurfaceDescription toDart() {
    final ref = this.ref;
    return Direct3DSurfaceDescription(
        ref.width,
        ref.height,
        DirectXPixelFormat.from(ref.format),
        ref.multisampleDescription.toDart());
  }

  /// Creates a `List<Direct3DSurfaceDescription>` from
  /// `Pointer<NativeDirect3DSurfaceDescription>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeDirect3DSurfaceDescription>`.
  List<Direct3DSurfaceDescription> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
