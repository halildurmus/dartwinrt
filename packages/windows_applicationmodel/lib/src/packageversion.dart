// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents the package version info.
final class PackageVersion implements WinRTStruct {
  PackageVersion(this.major, this.minor, this.build, this.revision);

  final int major;
  final int minor;
  final int build;
  final int revision;

  @override
  Pointer<NativePackageVersion> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativePackageVersion>();
    ptr.ref.major = major;
    ptr.ref.minor = minor;
    ptr.ref.build = build;
    ptr.ref.revision = revision;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PackageVersion &&
        major == other.major &&
        minor == other.minor &&
        build == other.build &&
        revision == other.revision;
  }

  @override
  int get hashCode =>
      major.hashCode ^ minor.hashCode ^ build.hashCode ^ revision.hashCode;
}

/// @nodoc
extension PointerNativePackageVersionConversion
    on Pointer<NativePackageVersion> {
  /// Converts this [NativePackageVersion] to a Dart [PackageVersion].
  PackageVersion toDart() =>
      PackageVersion(ref.major, ref.minor, ref.build, ref.revision);
}
