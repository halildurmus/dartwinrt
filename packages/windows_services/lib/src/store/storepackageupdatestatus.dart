// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Provides status info for a package that is associated with a download or
/// installation request.
final class StorePackageUpdateStatus implements WinRTStruct {
  StorePackageUpdateStatus(
      this.packageFamilyName,
      this.packageDownloadSizeInBytes,
      this.packageBytesDownloaded,
      this.packageDownloadProgress,
      this.totalDownloadProgress,
      this.packageUpdateState);

  final int packageFamilyName;
  final int packageDownloadSizeInBytes;
  final int packageBytesDownloaded;
  final double packageDownloadProgress;
  final double totalDownloadProgress;
  final int packageUpdateState;

  @override
  Pointer<NativeStorePackageUpdateStatus> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeStorePackageUpdateStatus>();
    nativeStructPtr.ref
      ..packageFamilyName = packageFamilyName
      ..packageDownloadSizeInBytes = packageDownloadSizeInBytes
      ..packageBytesDownloaded = packageBytesDownloaded
      ..packageDownloadProgress = packageDownloadProgress
      ..totalDownloadProgress = totalDownloadProgress
      ..packageUpdateState = packageUpdateState;
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
extension PointerNativeStorePackageUpdateStatusConversion
    on Pointer<NativeStorePackageUpdateStatus> {
  /// Converts this [NativeStorePackageUpdateStatus] to a Dart
  /// [StorePackageUpdateStatus].
  StorePackageUpdateStatus toDart() {
    final ref = this.ref;
    return StorePackageUpdateStatus(
        ref.packageFamilyName,
        ref.packageDownloadSizeInBytes,
        ref.packageBytesDownloaded,
        ref.packageDownloadProgress,
        ref.totalDownloadProgress,
        ref.packageUpdateState);
  }

  /// Creates a `List<StorePackageUpdateStatus>` from
  /// `Pointer<NativeStorePackageUpdateStatus>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeStorePackageUpdateStatus>`.
  List<StorePackageUpdateStatus> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
