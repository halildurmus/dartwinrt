// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// An entry in the SortOrder list the specifies a property and ordering
/// that is used to sort query results.
///
/// {@category struct}
class SortEntry implements WinRTStruct {
  SortEntry(this.propertyName, this.ascendingOrder);

  final int propertyName;
  final bool ascendingOrder;

  @override
  Pointer<NativeSortEntry> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeSortEntry>();
    ptr.ref.propertyName = propertyName;
    ptr.ref.ascendingOrder = ascendingOrder;
    return ptr;
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

extension PointerNativeSortEntryConversion on Pointer<NativeSortEntry> {
  /// Converts this [NativeSortEntry] to a Dart [SortEntry].
  SortEntry toDart() => SortEntry(ref.propertyName, ref.ascendingOrder);
}
