// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// This is a Windows Runtime equivalent of the Desktop DXGI_SAMPLE_DESC
/// structure.
final class Direct3DMultisampleDescription implements WinRTStruct {
  Direct3DMultisampleDescription(this.count, this.quality);

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
extension PointerNativeDirect3DMultisampleDescriptionConversion
    on Pointer<NativeDirect3DMultisampleDescription> {
  /// Converts this [NativeDirect3DMultisampleDescription] to a Dart
  /// [Direct3DMultisampleDescription].
  Direct3DMultisampleDescription toDart() {
    final ref = this.ref;
    return Direct3DMultisampleDescription(ref.count, ref.quality);
  }
}
