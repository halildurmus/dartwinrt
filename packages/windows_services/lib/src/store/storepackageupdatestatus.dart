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

import 'storepackageupdatestate.dart';

/// Provides status info for a package that is associated with a download or
/// installation request.
final class StorePackageUpdateStatus implements WinRTStruct {
  const StorePackageUpdateStatus(
      this.packageFamilyName,
      this.packageDownloadSizeInBytes,
      this.packageBytesDownloaded,
      this.packageDownloadProgress,
      this.totalDownloadProgress,
      this.packageUpdateState);

  final String packageFamilyName;
  final int packageDownloadSizeInBytes;
  final int packageBytesDownloaded;
  final double packageDownloadProgress;
  final double totalDownloadProgress;
  final StorePackageUpdateState packageUpdateState;

  @override
  Pointer<NativeStorePackageUpdateStatus> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeStorePackageUpdateStatus>();
    nativeStructPtr.ref
      ..packageFamilyName = packageFamilyName.toHString()
      ..packageDownloadSizeInBytes = packageDownloadSizeInBytes
      ..packageBytesDownloaded = packageBytesDownloaded
      ..packageDownloadProgress = packageDownloadProgress
      ..totalDownloadProgress = totalDownloadProgress
      ..packageUpdateState = packageUpdateState.value;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StorePackageUpdateStatus &&
        packageFamilyName == other.packageFamilyName &&
        packageDownloadSizeInBytes == other.packageDownloadSizeInBytes &&
        packageBytesDownloaded == other.packageBytesDownloaded &&
        packageDownloadProgress == other.packageDownloadProgress &&
        totalDownloadProgress == other.totalDownloadProgress &&
        packageUpdateState == other.packageUpdateState;
  }

  @override
  int get hashCode =>
      packageFamilyName.hashCode ^
      packageDownloadSizeInBytes.hashCode ^
      packageBytesDownloaded.hashCode ^
      packageDownloadProgress.hashCode ^
      totalDownloadProgress.hashCode ^
      packageUpdateState.hashCode;
}

/// @nodoc
extension StorePackageUpdateStatusListToNativeStorePackageUpdateStatusArrayConversion
    on List<StorePackageUpdateStatus> {
  /// Creates an array of [NativeStorePackageUpdateStatus]s from a List of
  /// [StorePackageUpdateStatus]s.
  Pointer<NativeStorePackageUpdateStatus> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeStorePackageUpdateStatus>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeStorePackageUpdateStatusConversion
    on NativeStorePackageUpdateStatus {
  /// Converts this [NativeStorePackageUpdateStatus] into a Dart
  /// [StorePackageUpdateStatus].
  StorePackageUpdateStatus toDart() => StorePackageUpdateStatus(
      packageFamilyName.toDartString(),
      packageDownloadSizeInBytes,
      packageBytesDownloaded,
      packageDownloadProgress,
      totalDownloadProgress,
      StorePackageUpdateState.from(packageUpdateState));
}

/// @nodoc
extension PointerNativeStorePackageUpdateStatusConversion
    on Pointer<NativeStorePackageUpdateStatus> {
  /// Converts the referenced [NativeStorePackageUpdateStatus] into a Dart
  /// [StorePackageUpdateStatus].
  StorePackageUpdateStatus toDart() {
    final ref = this.ref;
    return StorePackageUpdateStatus(
        ref.packageFamilyName.toDartString(),
        ref.packageDownloadSizeInBytes,
        ref.packageBytesDownloaded,
        ref.packageDownloadProgress,
        ref.totalDownloadProgress,
        StorePackageUpdateState.from(ref.packageUpdateState));
  }

  /// Creates a `List<StorePackageUpdateStatus>` from
  /// `Pointer<NativeStorePackageUpdateStatus>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeStorePackageUpdateStatus>`.
  List<StorePackageUpdateStatus> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
