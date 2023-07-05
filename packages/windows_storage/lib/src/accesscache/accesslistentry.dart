// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents a list entry that contains the identifier and metadata for a
/// StorageFile or StorageFolder object in a list.
final class AccessListEntry implements WinRTStruct {
  AccessListEntry(this.token, this.metadata);

  final int token;
  final int metadata;

  @override
  Pointer<NativeAccessListEntry> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeAccessListEntry>();
    nativeStructPtr.ref
      ..token = token
      ..metadata = metadata;
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
extension PointerNativeAccessListEntryConversion
    on Pointer<NativeAccessListEntry> {
  /// Converts this [NativeAccessListEntry] to a Dart [AccessListEntry].
  AccessListEntry toDart() {
    final ref = this.ref;
    return AccessListEntry(ref.token, ref.metadata);
  }

  /// Creates a `List<AccessListEntry>` from `Pointer<NativeAccessListEntry>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeAccessListEntry>`.
  List<AccessListEntry> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
