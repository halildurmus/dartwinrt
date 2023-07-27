// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../iids.dart';

/// @nodoc
extension BoolConversions on bool {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createBoolean(this);

  /// Converts the value to an [IReference].
  IReference<bool?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_bool;
    final reference = IReference<bool?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension BoolListConversions on List<bool> {
  /// Creates an array of [Bool]s from a List of [bool]s.
  Pointer<Bool> toArray({Allocator allocator = calloc}) {
    final array = allocator<Bool>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i];
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createBooleanArray(this);
}

/// @nodoc
extension BoolArrayToBoolListConversion on Pointer<Bool> {
  /// Creates a [List] of [bool]s from `Pointer<Bool>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Bool>`.
  List<bool> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
