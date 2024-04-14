// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../point.dart';
import '../../propertyvalue.dart';
import '../../rect.dart';
import '../../size.dart';
import '../../types.dart';
import 'bool.dart';
import 'comobject.dart';
import 'datetime.dart';
import 'double.dart';
import 'duration.dart';
import 'guid.dart';
import 'int.dart';
import 'ipropertyvalue.dart';
import 'iunknown.dart';
import 'string.dart';
import 'struct.dart';
import 'uri.dart';

/// @nodoc
extension IInspectableListConversions on List<IInspectable?> {
  /// Creates an array of [VTablePointer]s from a List of [IInspectable]s.
  Pointer<VTablePointer> toArray({Allocator allocator = calloc}) {
    final array = allocator<VTablePointer>(length);
    for (var i = 0; i < length; i++) {
      final element = this[i];
      array[i] = element.lpVtbl;
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() =>
      PropertyValue.createInspectableArray(this);
}

/// @nodoc
extension ObjectConversion on Object {
  /// Boxes the value inside a reference class object so that it can be passed
  /// to a WinRT API that expects [IInspectable].
  ///
  /// [doubleType] is used to specify the type of the `double` value. Defaults
  /// to [DoubleType.double].
  ///
  /// [intType] is used to specify the type of the `int` value. Defaults to
  /// [IntType.int32].
  IInspectable boxValue({
    DoubleType doubleType = DoubleType.double,
    IntType intType = IntType.int32,
  }) {
    // Type promotion doesn't work for `this`.
    // TODO(halildurmus): Remove when
    // https://github.com/dart-lang/language/issues/926 is fixed
    final self = this;
    // Since an object is a reference type, it is also a valid property value
    // and does not need to be boxed.
    // See https://learn.microsoft.com/uwp/api/windows.foundation.propertyvalue.createinspectable
    if (self is Pointer<COMObject>) return IInspectable(self)..detach();
    if (self is IInspectable) return self;

    if (self is bool) return self.toPropertyValue();
    if (self is DateTime) return self.toPropertyValue();
    if (self is double) return self.toPropertyValue(doubleType);
    if (self is Duration) return self.toPropertyValue();
    if (self is Guid) return self.toPropertyValue();
    if (self is int) return self.toPropertyValue(intType);
    if (self is Point) return self.toPropertyValue();
    if (self is Rect) return self.toPropertyValue();
    if (self is Size) return self.toPropertyValue();
    if (self is String) return self.toPropertyValue();
    if (self is Uri) return self.toWinRTUri();
    if (self is List<bool>) return self.toPropertyValue();
    if (self is List<DateTime>) return self.toPropertyValue();
    if (self is List<double>) return self.toPropertyValue(doubleType);
    if (self is List<Duration>) return self.toPropertyValue();
    if (self is List<Guid>) return self.toPropertyValue();
    if (self is List<IInspectable>) return self.toPropertyValue();
    if (self is List<int>) return self.toPropertyValue(intType);
    if (self is List<Point>) return self.toPropertyValue();
    if (self is List<Rect>) return self.toPropertyValue();
    if (self is List<Size>) return self.toPropertyValue();
    if (self is List<String>) return self.toPropertyValue();
    if (self is List<Uri?>) return self.toPropertyValue();

    // TODO(halildurmus): Support boxing enums and other structs (e.g.,
    // BasicGeoposition)
    // https://github.com/halildurmus/dartwinrt/issues/307

    throw UnsupportedError('Cannot box value of type $runtimeType');
  }
}

/// @nodoc
extension ObjectListToVTablePointerArrayConversion on List<Object?> {
  /// Creates an array of [VTablePointer]s from a List of [Object]s.
  Pointer<VTablePointer> toArray({Allocator allocator = calloc}) {
    final array = allocator<VTablePointer>(length);
    for (var i = 0; i < length; i++) {
      final element = this[i];
      if (element == null) continue;
      final boxed = element.boxValue();
      array[i] = boxed.lpVtbl;
    }
    return array;
  }
}

/// @nodoc
extension COMObjectArrayToObjectListConversion on Pointer<COMObject> {
  /// Creates a [List] of [T]s from `Pointer<COMObject>`.
  ///
  /// [T] must be `IInspectable?` (e.g., `HostName?`).
  ///
  /// [creator] must be specified for [T] (e.g., `HostName.fromPtr`).
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  List<T> toList<T>(COMObjectCreator<T> creator, {int length = 1}) {
    final list = <T>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = elementAt(i);
      if (objectPtr.isNull) {
        list.add(null as T);
        continue;
      }

      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      list.add(creator(newObjectPtr));
    }

    return list;
  }

  /// Creates a [List] of [Object]s from `Pointer<COMObject>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  List<Object?> toObjectList({int length = 1}) {
    final list = <Object?>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = elementAt(i);
      if (objectPtr.isNull) {
        list.add(null);
        continue;
      }

      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      final propertyValue = IPropertyValue.fromPtr(newObjectPtr);
      list.add(propertyValue.value);
    }

    return list;
  }
}
