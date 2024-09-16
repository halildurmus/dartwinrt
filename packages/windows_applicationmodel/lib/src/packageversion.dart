// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

/// Represents the package version info.
final class PackageVersion implements WinRTStruct {
  const PackageVersion(this.major, this.minor, this.build, this.revision);

  final int major;
  final int minor;
  final int build;
  final int revision;

  @override
  Pointer<NativePackageVersion> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativePackageVersion>();
    nativeStructPtr.ref
      ..major = major
      ..minor = minor
      ..build = build
      ..revision = revision;
    return nativeStructPtr;
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
extension PackageVersionListToNativePackageVersionArrayConversion
    on List<PackageVersion> {
  /// Creates an array of [NativePackageVersion]s from a List of
  /// [PackageVersion]s.
  Pointer<NativePackageVersion> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativePackageVersion>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativePackageVersionConversion on NativePackageVersion {
  /// Converts this [NativePackageVersion] into a Dart [PackageVersion].
  PackageVersion toDart() => PackageVersion(major, minor, build, revision);
}

/// @nodoc
extension PointerNativePackageVersionConversion
    on Pointer<NativePackageVersion> {
  /// Converts the referenced [NativePackageVersion] into a Dart
  /// [PackageVersion].
  PackageVersion toDart() {
    final ref = this.ref;
    return PackageVersion(ref.major, ref.minor, ref.build, ref.revision);
  }

  /// Creates a `List<PackageVersion>` from `Pointer<NativePackageVersion>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativePackageVersion>`.
  List<PackageVersion> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
