// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents a list entry that contains the identifier and metadata for a
/// StorageFile or StorageFolder object in a list.
final class AccessListEntry implements WinRTStruct {
  AccessListEntry(this.token, this.metadata);

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
extension NativeAccessListEntryConversion on NativeAccessListEntry {
  /// Converts this [NativeAccessListEntry] into a Dart [AccessListEntry].
  AccessListEntry toDart() {
    final tokenDartString = token.toDartString();
    WindowsDeleteString(token);
    final metadataDartString = metadata.toDartString();
    WindowsDeleteString(metadata);
    return AccessListEntry(tokenDartString, metadataDartString);
  }
}

/// @nodoc
extension PointerNativeAccessListEntryConversion
    on Pointer<NativeAccessListEntry> {
  /// Frees the allocated memory for [NativeAccessListEntry].
  void free() {
    final ref = this.ref;
    WindowsDeleteString(ref.token);
    WindowsDeleteString(ref.metadata);
    calloc.free(this);
  }

  /// Converts the referenced [NativeAccessListEntry] into a Dart
  /// [AccessListEntry].
  AccessListEntry toDart() {
    final ref = this.ref;
    final tokenDartString = ref.token.toDartString();
    WindowsDeleteString(ref.token);
    final metadataDartString = ref.metadata.toDartString();
    WindowsDeleteString(ref.metadata);
    return AccessListEntry(tokenDartString, metadataDartString);
  }

  /// Creates a `List<AccessListEntry>` from `Pointer<NativeAccessListEntry>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeAccessListEntry>`.
  List<AccessListEntry> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
