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
  /// Returns the IID of `IReference<bool>`.
  String get referenceIid => IID_IReference_bool;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createBoolean(this);

  /// Converts the value to an [IReference].
  IReference<bool?> toReference() {
    final propertyValue = toPropertyValue();
    final reference = IReference<bool?>.fromPtr(
        propertyValue.toInterface(referenceIid),
        referenceIid: referenceIid);
    return reference;
  }
}

/// @nodoc
extension BoolListConversions on List<bool> {
  /// Returns the IID of `IReferenceArray<bool>`.
  String get referenceArrayIid => IID_IReferenceArray_bool;

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
