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

import 'tristates.dart';

/// Defines the desired state of the connection profile for which usage data
/// is returned by the method GetNetworkUsageAsync.
final class NetworkUsageStates implements WinRTStruct {
  const NetworkUsageStates(this.roaming, this.shared);

  final TriStates roaming;
  final TriStates shared;

  @override
  Pointer<NativeNetworkUsageStates> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeNetworkUsageStates>();
    nativeStructPtr.ref
      ..roaming = roaming.value
      ..shared = shared.value;
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
extension NetworkUsageStatesListToNativeNetworkUsageStatesArrayConversion
    on List<NetworkUsageStates> {
  /// Creates an array of [NativeNetworkUsageStates]s from a List of
  /// [NetworkUsageStates]s.
  Pointer<NativeNetworkUsageStates> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeNetworkUsageStates>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeNetworkUsageStatesConversion on NativeNetworkUsageStates {
  /// Converts this [NativeNetworkUsageStates] into a Dart
  /// [NetworkUsageStates].
  NetworkUsageStates toDart() =>
      NetworkUsageStates(TriStates.from(roaming), TriStates.from(shared));
}

/// @nodoc
extension PointerNativeNetworkUsageStatesConversion
    on Pointer<NativeNetworkUsageStates> {
  /// Converts the referenced [NativeNetworkUsageStates] into a Dart
  /// [NetworkUsageStates].
  NetworkUsageStates toDart() {
    final ref = this.ref;
    return NetworkUsageStates(
        TriStates.from(ref.roaming), TriStates.from(ref.shared));
  }

  /// Creates a `List<NetworkUsageStates>` from
  /// `Pointer<NativeNetworkUsageStates>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeNetworkUsageStates>`.
  List<NetworkUsageStates> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
