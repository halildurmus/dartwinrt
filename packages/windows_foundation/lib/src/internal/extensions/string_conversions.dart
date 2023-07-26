// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../hstring.dart';
import '../iids.dart';

/// @nodoc
extension HSTRINGHandleToStringConversion on int {
  /// Converts the [HSTRING] into a Dart string.
  String toDartString() => HString.fromHandle(this).toString();
}

/// @nodoc
extension StringConversions on String {
  /// Converts the string into an [HString], returning an HSTRING handle.
  int toHString() => HString.fromString(this).handle;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createString(this);

  /// Converts the value to an [IReference].
  IReference<String?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_String;
    final reference = IReference<String?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension StringListConversions on List<String> {
  /// Creates an array of [HSTRING]s from a List of [String]s.
  Pointer<HSTRING> toArray({Allocator allocator = calloc}) {
    final array = allocator<HSTRING>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toHString();
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createStringArray(this);
}

/// @nodoc
extension HSTRINGPointerConversions on Pointer<HSTRING> {
  /// Converts the [HSTRING] into a Dart string.
  String toDartString() => value.toDartString();

  /// Creates a [List] from `Pointer<HSTRING>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<HSTRING>`.
  List<String> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i].toDartString()];
}
