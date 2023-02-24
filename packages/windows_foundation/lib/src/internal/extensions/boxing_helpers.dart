// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:win32/win32.dart';

import '../../iinspectable.dart';
import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../../structs.g.dart';
import '../../types.dart';
import '../../winrt_enum.dart';
import '../iids.dart';

extension IntoBoxHelper on Object {
  /// Boxes the value so that it can be passed to the WinRT APIs that take
  /// `IPropertyValue` as a parameter.
  ///
  /// [doubleType] is used to specify the type of the `double` value. The
  /// default is [DoubleType.double].
  ///
  /// [intType] is used to specify the type of the `int` value. The default is
  /// [IntType.int32].
  Pointer<COMObject> intoBox({
    DoubleType doubleType = DoubleType.double,
    IntType intType = IntType.int32,
  }) {
    final self = this;
    // Since an object is a reference type, it is also a valid property value
    // and does not need to be boxed.
    // See https://learn.microsoft.com/en-us/uwp/api/windows.foundation.propertyvalue.createinspectable
    if (self is Pointer<COMObject>) return self;
    if (self is IInspectable) return self.ptr;

    if (self is bool) return self.toPropertyValue().ptr;
    if (self is DateTime) return self.toPropertyValue().ptr;
    if (self is double) return self.toPropertyValue(doubleType).ptr;
    if (self is Duration) return self.toPropertyValue().ptr;
    if (self is Guid) return self.toPropertyValue().ptr;
    if (self is int) return self.toPropertyValue(intType).ptr;
    if (self is Point) return self.toPropertyValue().ptr;
    if (self is Rect) return self.toPropertyValue().ptr;
    if (self is Size) return self.toPropertyValue().ptr;
    if (self is String) return self.toPropertyValue().ptr;
    if (self is List<bool>) return self.toPropertyValue().ptr;
    if (self is List<DateTime>) return self.toPropertyValue().ptr;
    if (self is List<double>) return self.toPropertyValue(doubleType).ptr;
    if (self is List<Duration>) return self.toPropertyValue().ptr;
    if (self is List<Guid>) return self.toPropertyValue().ptr;
    if (self is List<IInspectable>) return self.toPropertyValue().ptr;
    if (self is List<int>) return self.toPropertyValue(intType).ptr;
    if (self is List<Point>) return self.toPropertyValue().ptr;
    if (self is List<Rect>) return self.toPropertyValue().ptr;
    if (self is List<Size>) return self.toPropertyValue().ptr;
    if (self is List<String>) return self.toPropertyValue().ptr;

    // TODO: Support boxing enums and other structs (e.g. BasicGeoposition)

    throw UnsupportedError('Cannot box value of type $runtimeType');
  }
}

extension BoolHelpers on bool {
  /// Returns the IID of `IReference<bool>`.
  String get referenceIid => IID_IReference_bool;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createBoolean(this);

  /// Converts the value to an [IReference].
  IReference<bool?> toReference() {
    final propertyValue = toPropertyValue();
    final reference = IReference<bool?>.fromRawPointer(
        propertyValue.toInterface(referenceIid),
        referenceIid: referenceIid);
    propertyValue.release();
    return reference;
  }
}

extension BoolListHelpers on List<bool> {
  /// Returns the IID of `IReferenceArray<bool>`.
  String get referenceArrayIid => IID_IReferenceArray_bool;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createBooleanArray(this);
}

extension DoubleHelpers on double {
  /// Returns the IID of `IReference<double>`.
  String referenceIid(DoubleType type) {
    switch (type) {
      case DoubleType.double:
        return IID_IReference_Double;
      case DoubleType.float:
        return IID_IReference_Float;
    }
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(DoubleType type) {
    switch (type) {
      case DoubleType.double:
        return PropertyValue.createDouble(this);
      case DoubleType.float:
        return PropertyValue.createSingle(this);
    }
  }

  /// Converts the value to an [IReference].
  IReference<double?> toReference(DoubleType type) {
    final propertyValue = toPropertyValue(type);
    final iid = referenceIid(type);
    final reference = IReference<double?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension DoubleListHelpers on List<double> {
  /// Returns the IID of `IReferenceArray<double>`.
  String referenceArrayIid(DoubleType type) {
    switch (type) {
      case DoubleType.double:
        return IID_IReferenceArray_Double;
      case DoubleType.float:
        return IID_IReferenceArray_Float;
    }
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(DoubleType type) {
    switch (type) {
      case DoubleType.double:
        return PropertyValue.createDoubleArray(this);
      case DoubleType.float:
        return PropertyValue.createSingleArray(this);
    }
  }
}

extension DateTimeHelpers on DateTime {
  /// Returns the IID of `IReference<DateTime>`.
  String get referenceIid => IID_IReference_DateTime;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createDateTime(this);

  /// Converts the value to an [IReference].
  IReference<DateTime?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<DateTime?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension DateTimeListHelpers on List<DateTime> {
  /// Returns the IID of `IReferenceArray<DateTime>`.
  String get referenceArrayIid => IID_IReferenceArray_DateTime;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createDateTimeArray(this);
}

extension DurationHelpers on Duration {
  /// Returns the IID of `IReference<Duration>`.
  String get referenceIid => IID_IReference_Duration;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createTimeSpan(this);

  /// Converts the value to an [IReference].
  IReference<Duration?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Duration?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension DurationListHelpers on List<Duration> {
  /// Returns the IID of `IReferenceArray<Duration>`.
  String get referenceArrayIid => IID_IReferenceArray_Duration;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createTimeSpanArray(this);
}

extension GuidHelpers on Guid {
  /// Returns the IID of `IReference<Guid>`.
  String get referenceIid => IID_IReference_Guid;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createGuid(this);

  /// Converts the value to an [IReference].
  IReference<Guid?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Guid?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension GuidListHelpers on List<Guid> {
  /// Returns the IID of `IReferenceArray<Guid>`.
  String get referenceArrayIid => IID_IReferenceArray_Guid;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createGuidArray(this);
}

extension InspectableListHelpers<T extends IInspectable> on List<T> {
  /// Returns the IID of `IReferenceArray<Object>`.
  String get referenceArrayIid => IID_IReferenceArray_Object;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() =>
      PropertyValue.createInspectableArray(this);
}

extension IntHelpers on int {
  /// Returns the IID of `IReference<int>`.
  String referenceIid(IntType type) {
    switch (type) {
      case IntType.int16:
        return IID_IReference_Int16;
      case IntType.int32:
        return IID_IReference_Int32;
      case IntType.int64:
        return IID_IReference_Int64;
      case IntType.uint8:
        return IID_IReference_Uint8;
      case IntType.uint16:
        return IID_IReference_Uint16;
      case IntType.uint32:
        return IID_IReference_Uint32;
      case IntType.uint64:
        return IID_IReference_Uint64;
    }
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(IntType type) {
    switch (type) {
      case IntType.int16:
        return PropertyValue.createInt16(this);
      case IntType.int32:
        return PropertyValue.createInt32(this);
      case IntType.int64:
        return PropertyValue.createInt64(this);
      case IntType.uint8:
        return PropertyValue.createUInt8(this);
      case IntType.uint16:
        return PropertyValue.createUInt16(this);
      case IntType.uint32:
        return PropertyValue.createUInt32(this);
      case IntType.uint64:
        return PropertyValue.createUInt64(this);
    }
  }

  /// Converts the value to an [IReference].
  IReference<int?> toReference(IntType type) {
    final propertyValue = toPropertyValue(type);
    final iid = referenceIid(type);
    final reference = IReference<int?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension IntListHelpers on List<int> {
  /// Returns the IID of `IReferenceArray<int>`.
  String referenceArrayIid(IntType type) {
    switch (type) {
      case IntType.int16:
        return IID_IReferenceArray_Int16;
      case IntType.int32:
        return IID_IReferenceArray_Int32;
      case IntType.int64:
        return IID_IReferenceArray_Int64;
      case IntType.uint8:
        return IID_IReferenceArray_Uint8;
      case IntType.uint16:
        return IID_IReferenceArray_Uint16;
      case IntType.uint32:
        return IID_IReferenceArray_Uint32;
      case IntType.uint64:
        return IID_IReferenceArray_Uint64;
    }
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue(IntType type) {
    switch (type) {
      case IntType.int16:
        return PropertyValue.createInt16Array(this);
      case IntType.int32:
        return PropertyValue.createInt32Array(this);
      case IntType.int64:
        return PropertyValue.createInt64Array(this);
      case IntType.uint8:
        return PropertyValue.createUInt8Array(this);
      case IntType.uint16:
        return PropertyValue.createUInt16Array(this);
      case IntType.uint32:
        return PropertyValue.createUInt32Array(this);
      case IntType.uint64:
        return PropertyValue.createUInt64Array(this);
    }
  }
}

extension PointHelpers on Point {
  /// Returns the IID of `IReference<Point>`.
  String get referenceIid => IID_IReference_Point;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createPoint(this);

  /// Converts the value to an [IReference].
  IReference<Point?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Point?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension PointListHelpers on List<Point> {
  /// Returns the IID of `IReferenceArray<Point>`.
  String get referenceArrayIid => IID_IReferenceArray_Point;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createPointArray(this);
}

extension RectHelpers on Rect {
  /// Returns the IID of `IReference<Rect>`.
  String get referenceIid => IID_IReference_Rect;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createRect(this);

  /// Converts the value to an [IReference].
  IReference<Rect?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Rect?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension RectListHelpers on List<Rect> {
  /// Returns the IID of `IReferenceArray<Rect>`.
  String get referenceArrayIid => IID_IReferenceArray_Rect;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createRectArray(this);
}

extension SizeHelpers on Size {
  /// Returns the IID of `IReference<Size>`.
  String get referenceIid => IID_IReference_Size;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createSize(this);

  /// Converts the value to an [IReference].
  IReference<Size?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<Size?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension SizeListHelpers on List<Size> {
  /// Returns the IID of `IReferenceArray<Size>`.
  String get referenceArrayIid => IID_IReferenceArray_Size;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createSizeArray(this);
}

extension StringHelpers on String {
  /// Returns the IID of `IReference<String>`.
  String get referenceIid => IID_IReference_String;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createString(this);

  /// Converts the value to an [IReference].
  IReference<String?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = referenceIid;
    final reference = IReference<String?>.fromRawPointer(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    propertyValue.release();
    return reference;
  }
}

extension StringListHelpers on List<String> {
  /// Returns the IID of `IReferenceArray<String>`.
  String get referenceArrayIid => IID_IReferenceArray_String;

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createStringArray(this);
}

extension StructHelper on Struct {
  // TODO: Boxing structs is not supported yet (except for Guid, Point, Rect,
  // and Size).
  IReference<dynamic> toReference() =>
      throw UnsupportedError('Cannot box value of type $runtimeType');
}

extension WinRTEnumHelper on WinRTEnum {
  // TODO: Boxing enums is not supported yet.
  IReference<dynamic> toReference() =>
      throw UnsupportedError('Cannot box value of type $runtimeType');
}
