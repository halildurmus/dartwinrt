// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../point.dart';
import '../../propertyvalue.dart';
import '../../rect.dart';
import '../../size.dart';
import '../../types.dart';
import '../../winrt_enum.dart';
import '../../winrt_struct.dart';
import '../iids.dart';

/// @nodoc
extension IntoBoxHelper on Object {
  /// Boxes the value so that it can be passed to the WinRT APIs that take
  /// `IPropertyValue` as a parameter.
  ///
  /// [doubleType] is used to specify the type of the `double` value. The
  /// default is [DoubleType.double].
  ///
  /// [intType] is used to specify the type of the `int` value. The default is
  /// [IntType.int32].
  IInspectable intoBox({
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

    // TODO(halildurmus): Support boxing enums and other structs (e.g.
    // BasicGeoposition)

    throw UnsupportedError('Cannot box value of type $runtimeType');
  }
}

/// @nodoc
extension BoolHelpers on bool {
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
extension BoolListHelpers on List<bool> {
  /// Returns the IID of `IReferenceArray<bool>`.
  String get referenceArrayIid => IID_IReferenceArray_bool;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createBooleanArray(this);
}

/// @nodoc
extension DoubleHelpers on double {
  /// Returns the IID of `IReference<double>`.
  String referenceIid(DoubleType type) => switch (type) {
        DoubleType.double => IID_IReference_Double,
        DoubleType.float => IID_IReference_Float
      };

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(DoubleType type) => switch (type) {
        DoubleType.double => PropertyValue.createDouble(this),
        DoubleType.float => PropertyValue.createSingle(this)
      };

  /// Converts the value to an [IReference].
  IReference<double?> toReference(DoubleType type) {
    final propertyValue = toPropertyValue(type);
    final iid = referenceIid(type);
    final reference = IReference<double?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension DoubleListHelpers on List<double> {
  /// Returns the IID of `IReferenceArray<double>`.
  String referenceArrayIid(DoubleType type) => switch (type) {
        DoubleType.double => IID_IReferenceArray_Double,
        DoubleType.float => IID_IReferenceArray_Float
      };

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(DoubleType type) => switch (type) {
        DoubleType.double => PropertyValue.createDoubleArray(this),
        DoubleType.float => PropertyValue.createSingleArray(this)
      };
}

/// @nodoc
extension DateTimeHelpers on DateTime {
  /// Returns the IID of `IReference<DateTime>`.
  String get referenceIid => IID_IReference_DateTime;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createDateTime(this);

  /// Converts the value to an [IReference].
  IReference<DateTime?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<DateTime?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension DateTimeListHelpers on List<DateTime> {
  /// Returns the IID of `IReferenceArray<DateTime>`.
  String get referenceArrayIid => IID_IReferenceArray_DateTime;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createDateTimeArray(this);
}

/// @nodoc
extension DurationHelpers on Duration {
  /// Returns the IID of `IReference<Duration>`.
  String get referenceIid => IID_IReference_Duration;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createTimeSpan(this);

  /// Converts the value to an [IReference].
  IReference<Duration?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Duration?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension DurationListHelpers on List<Duration> {
  /// Returns the IID of `IReferenceArray<Duration>`.
  String get referenceArrayIid => IID_IReferenceArray_Duration;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createTimeSpanArray(this);
}

/// @nodoc
extension GuidHelpers on Guid {
  /// Returns the IID of `IReference<Guid>`.
  String get referenceIid => IID_IReference_Guid;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createGuid(this);

  /// Converts the value to an [IReference].
  IReference<Guid?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Guid?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension GuidListHelpers on List<Guid> {
  /// Returns the IID of `IReferenceArray<Guid>`.
  String get referenceArrayIid => IID_IReferenceArray_Guid;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createGuidArray(this);
}

/// @nodoc
extension InspectableListHelpers<T extends IInspectable> on List<T> {
  /// Returns the IID of `IReferenceArray<Object>`.
  String get referenceArrayIid => IID_IReferenceArray_Object;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() =>
      PropertyValue.createInspectableArray(this);
}

/// @nodoc
extension IntHelpers on int {
  /// Returns the IID of `IReference<int>`.
  String referenceIid(IntType type) => switch (type) {
        IntType.int16 => IID_IReference_Int16,
        IntType.int32 => IID_IReference_Int32,
        IntType.int64 => IID_IReference_Int64,
        IntType.uint8 => IID_IReference_Uint8,
        IntType.uint16 => IID_IReference_Uint16,
        IntType.uint32 => IID_IReference_Uint32,
        IntType.uint64 => IID_IReference_Uint64
      };

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(IntType type) => switch (type) {
        IntType.int16 => PropertyValue.createInt16(this),
        IntType.int32 => PropertyValue.createInt32(this),
        IntType.int64 => PropertyValue.createInt64(this),
        IntType.uint8 => PropertyValue.createUInt8(this),
        IntType.uint16 => PropertyValue.createUInt16(this),
        IntType.uint32 => PropertyValue.createUInt32(this),
        IntType.uint64 => PropertyValue.createUInt64(this)
      };

  /// Converts the value to an [IReference].
  IReference<int?> toReference(IntType type) {
    final propertyValue = toPropertyValue(type);
    final iid = referenceIid(type);
    final reference = IReference<int?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension IntListHelpers on List<int> {
  /// Returns the IID of `IReferenceArray<int>`.
  String referenceArrayIid(IntType type) => switch (type) {
        IntType.int16 => IID_IReferenceArray_Int16,
        IntType.int32 => IID_IReferenceArray_Int32,
        IntType.int64 => IID_IReferenceArray_Int64,
        IntType.uint8 => IID_IReferenceArray_Uint8,
        IntType.uint16 => IID_IReferenceArray_Uint16,
        IntType.uint32 => IID_IReferenceArray_Uint32,
        IntType.uint64 => IID_IReferenceArray_Uint64
      };

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(IntType type) => switch (type) {
        IntType.int16 => PropertyValue.createInt16Array(this),
        IntType.int32 => PropertyValue.createInt32Array(this),
        IntType.int64 => PropertyValue.createInt64Array(this),
        IntType.uint8 => PropertyValue.createUInt8Array(this),
        IntType.uint16 => PropertyValue.createUInt16Array(this),
        IntType.uint32 => PropertyValue.createUInt32Array(this),
        IntType.uint64 => PropertyValue.createUInt64Array(this)
      };
}

/// @nodoc
extension PointHelpers on Point {
  /// Returns the IID of `IReference<Point>`.
  String get referenceIid => IID_IReference_Point;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createPoint(this);

  /// Converts the value to an [IReference].
  IReference<Point?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Point?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension PointListHelpers on List<Point> {
  /// Returns the IID of `IReferenceArray<Point>`.
  String get referenceArrayIid => IID_IReferenceArray_Point;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createPointArray(this);
}

/// @nodoc
extension RectHelpers on Rect {
  /// Returns the IID of `IReference<Rect>`.
  String get referenceIid => IID_IReference_Rect;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createRect(this);

  /// Converts the value to an [IReference].
  IReference<Rect?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Rect?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension RectListHelpers on List<Rect> {
  /// Returns the IID of `IReferenceArray<Rect>`.
  String get referenceArrayIid => IID_IReferenceArray_Rect;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createRectArray(this);
}

/// @nodoc
extension SizeHelpers on Size {
  /// Returns the IID of `IReference<Size>`.
  String get referenceIid => IID_IReference_Size;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createSize(this);

  /// Converts the value to an [IReference].
  IReference<Size?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Size?>.fromPtr(propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension SizeListHelpers on List<Size> {
  /// Returns the IID of `IReferenceArray<Size>`.
  String get referenceArrayIid => IID_IReferenceArray_Size;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createSizeArray(this);
}

/// @nodoc
extension StringHelpers on String {
  /// Returns the IID of `IReference<String>`.
  String get referenceIid => IID_IReference_String;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createString(this);

  /// Converts the value to an [IReference].
  IReference<String?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<String?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }
}

/// @nodoc
extension StringListHelpers on List<String> {
  /// Returns the IID of `IReferenceArray<String>`.
  String get referenceArrayIid => IID_IReferenceArray_String;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createStringArray(this);
}

/// @nodoc
extension WinRTEnumHelper on WinRTEnum {
  // TODO(halildurmus): Boxing enums are not supported yet.
  IReference<dynamic> toReference() =>
      throw UnsupportedError('Cannot box value of type $runtimeType');
}

/// @nodoc
extension WinRTStructHelper on WinRTStruct {
  // TODO(halildurmus): Boxing structs are not supported yet (except for Guid,
  // Point, Rect, and Size).
  IReference<dynamic> toReference() =>
      throw UnsupportedError('Cannot box value of type $runtimeType');
}
