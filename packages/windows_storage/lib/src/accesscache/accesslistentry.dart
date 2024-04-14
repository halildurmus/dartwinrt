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

/// Represents a list entry that contains the identifier and metadata for a
/// StorageFile or StorageFolder object in a list.
final class AccessListEntry implements WinRTStruct {
  const AccessListEntry(this.token, this.metadata);

  final String token;
  final String metadata;

  @override
  Pointer<NativeAccessListEntry> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeAccessListEntry>();
    nativeStructPtr.ref
      ..token = token.toHString()
      ..metadata = metadata.toHString();
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AccessListEntry &&
        token == other.token &&
        metadata == other.metadata;
  }

  @override
  int get hashCode => token.hashCode ^ metadata.hashCode;
}

/// @nodoc
extension AccessListEntryListToNativeAccessListEntryArrayConversion
    on List<AccessListEntry> {
  /// Creates an array of [NativeAccessListEntry]s from a List of
  /// [AccessListEntry]s.
  Pointer<NativeAccessListEntry> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeAccessListEntry>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeAccessListEntryConversion on NativeAccessListEntry {
  /// Converts this [NativeAccessListEntry] into a Dart [AccessListEntry].
  AccessListEntry toDart() =>
      AccessListEntry(token.toDartString(), metadata.toDartString());
}

/// @nodoc
extension PointerNativeAccessListEntryConversion
    on Pointer<NativeAccessListEntry> {
  /// Converts the referenced [NativeAccessListEntry] into a Dart
  /// [AccessListEntry].
  AccessListEntry toDart() {
    final ref = this.ref;
    return AccessListEntry(
        ref.token.toDartString(), ref.metadata.toDartString());
  }

  /// Creates a `List<AccessListEntry>` from `Pointer<NativeAccessListEntry>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeAccessListEntry>`.
  List<AccessListEntry> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
