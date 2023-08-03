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

/// An entry in the SortOrder list the specifies a property and ordering that is
/// used to sort query results.
final class SortEntry implements WinRTStruct {
  const SortEntry(this.propertyName, this.ascendingOrder);

  final String propertyName;
  final bool ascendingOrder;

  @override
  Pointer<NativeSortEntry> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSortEntry>();
    nativeStructPtr.ref
      ..propertyName = propertyName.toHString()
      ..ascendingOrder = ascendingOrder;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SortEntry &&
        propertyName == other.propertyName &&
        ascendingOrder == other.ascendingOrder;
  }

  @override
  int get hashCode => propertyName.hashCode ^ ascendingOrder.hashCode;
}

/// @nodoc
extension SortEntryListToNativeSortEntryArrayConversion on List<SortEntry> {
  /// Creates an array of [NativeSortEntry]s from a List of [SortEntry]s.
  Pointer<NativeSortEntry> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeSortEntry>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeSortEntryConversion on NativeSortEntry {
  /// Converts this [NativeSortEntry] into a Dart [SortEntry].
  SortEntry toDart() => SortEntry(propertyName.toDartString(), ascendingOrder);
}

/// @nodoc
extension PointerNativeSortEntryConversion on Pointer<NativeSortEntry> {
  /// Converts the referenced [NativeSortEntry] into a Dart [SortEntry].
  SortEntry toDart() {
    final ref = this.ref;
    return SortEntry(ref.propertyName.toDartString(), ref.ascendingOrder);
  }

  /// Creates a `List<SortEntry>` from `Pointer<NativeSortEntry>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSortEntry>`.
  List<SortEntry> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
