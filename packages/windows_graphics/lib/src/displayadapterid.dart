// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Corresponds to the LUID (Locally Unique Identifier) associated with a
/// graphics adapter.
///
/// {@category struct}
final class DisplayAdapterId implements WinRTStruct {
  DisplayAdapterId(this.lowPart, this.highPart);

  final int lowPart;
  final int highPart;

  @override
  Pointer<NativeDisplayAdapterId> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeDisplayAdapterId>();
    ptr.ref.lowPart = lowPart;
    ptr.ref.highPart = highPart;
    return ptr;
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

extension PointerNativeDisplayAdapterIdConversion
    on Pointer<NativeDisplayAdapterId> {
  /// Converts this [NativeDisplayAdapterId] to a Dart [DisplayAdapterId].
  DisplayAdapterId toDart() => DisplayAdapterId(ref.lowPart, ref.highPart);
}
