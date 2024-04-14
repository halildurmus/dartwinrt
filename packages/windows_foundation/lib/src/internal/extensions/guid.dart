// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../iids.dart';

/// @nodoc
extension GuidConversions on Guid {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createGuid(this);

  /// Converts the value to an [IReference].
  IReference<Guid?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_Guid;
    final reference = IReference<Guid?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension GuidListConversions on List<Guid> {
  /// Creates an array of [GUID]s from a List of [Guid]s.
  Pointer<GUID> toArray({Allocator allocator = calloc}) {
    final array = allocator<GUID>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNativeGUID(allocator: allocator).ref;
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createGuidArray(this);
}

/// @nodoc
extension GUIDArrayToGuidListConversion on Pointer<GUID> {
  /// Creates a [List] of [Guid]s from `Pointer<GUID>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<GUID>`.
  List<Guid> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) Guid.parse(this[i].toString())];
}
