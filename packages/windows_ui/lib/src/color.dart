// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Describes a color in terms of alpha, red, green, and blue channels.
///
/// {@category struct}
class Color implements WinRTStruct {
  Color(this.a, this.r, this.g, this.b);

  final int a;
  final int r;
  final int g;
  final int b;

  @override
  Pointer<NativeColor> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeColor>();
    ptr.ref.a = a;
    ptr.ref.r = r;
    ptr.ref.g = g;
    ptr.ref.b = b;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Color &&
        a == other.a &&
        r == other.r &&
        g == other.g &&
        b == other.b;
  }

  @override
  int get hashCode => a.hashCode ^ r.hashCode ^ g.hashCode ^ b.hashCode;
}

extension PointerNativeColorConversion on Pointer<NativeColor> {
  /// Converts this [NativeColor] to a Dart [Color].
  Color toDart() => Color(ref.a, ref.r, ref.g, ref.b);
}
