// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Defines the desired state of the connection profile for which usage data
/// is returned by the method GetNetworkUsageAsync.
final class NetworkUsageStates implements WinRTStruct {
  NetworkUsageStates(this.roaming, this.shared);

  final int roaming;
  final int shared;

  @override
  Pointer<NativeNetworkUsageStates> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeNetworkUsageStates>();
    nativeStructPtr.ref
      ..roaming = roaming
      ..shared = shared;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NetworkUsageStates &&
        roaming == other.roaming &&
        shared == other.shared;
  }

  @override
  int get hashCode => roaming.hashCode ^ shared.hashCode;
}

/// @nodoc
extension PointerNativeNetworkUsageStatesConversion
    on Pointer<NativeNetworkUsageStates> {
  /// Converts this [NativeNetworkUsageStates] to a Dart [NetworkUsageStates].
  NetworkUsageStates toDart() {
    final ref = this.ref;
    return NetworkUsageStates(ref.roaming, ref.shared);
  }

  /// Creates a `List<NetworkUsageStates>` from
  /// `Pointer<NativeNetworkUsageStates>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeNetworkUsageStates>`.
  List<NetworkUsageStates> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
