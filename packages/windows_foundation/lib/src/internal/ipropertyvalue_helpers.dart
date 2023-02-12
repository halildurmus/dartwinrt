// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../enums.g.dart';
import '../helpers.dart';
import '../iinspectable.dart';
import '../ipropertyvalue.dart';
import '../structs.g.dart';
import 'extensions/comobject_array.dart';
import 'extensions/hstring_array.dart';
import 'extensions/int_array.dart';

extension IPropertyValueHelper on IPropertyValue {
  /// Gets the type that is represented as an [IPropertyValue].
  Object? get value {
    if (ptr.ref.isNull) return null;

    // If the object does not implement the IPropertyValue interface, return it
    // as an IInspectable object.
    if (!getInterfaces(this).contains(IID_IPropertyValue)) {
      return IInspectable.from(this);
    }

    switch (type) {
      case PropertyType.boolean:
        return getBoolean();
      case PropertyType.booleanArray:
        return _boolListFromArray(getBooleanArray);
      case PropertyType.char16:
        return getChar16();
      case PropertyType.char16Array:
        return _char16ListFromArray(getChar16Array);
      case PropertyType.dateTime:
        return getDateTime();
      case PropertyType.dateTimeArray:
        return _dateTimeListFromArray(getDateTimeArray);
      case PropertyType.double_:
        return getDouble();
      case PropertyType.doubleArray:
        return _doubleListFromArray(getDoubleArray);
      case PropertyType.guid:
        return getGuid();
      case PropertyType.guidArray:
        return _guidListFromArray(getGuidArray);
      case PropertyType.inspectableArray:
        return _inspectableListFromArray(getInspectableArray);
      case PropertyType.int16:
        return getInt16();
      case PropertyType.int16Array:
        return _int16ListFromArray(getInt16Array);
      case PropertyType.int32:
        return getInt32();
      case PropertyType.int32Array:
        return _int32ListFromArray(getInt32Array);
      case PropertyType.int64:
        return getInt64();
      case PropertyType.int64Array:
        return _int64ListFromArray(getInt64Array);
      case PropertyType.point:
        return getPoint();
      case PropertyType.pointArray:
        return _pointListFromArray(getPointArray);
      case PropertyType.rect:
        return getRect();
      case PropertyType.rectArray:
        return _rectListFromArray(getRectArray);
      case PropertyType.single:
        return getSingle();
      case PropertyType.singleArray:
        return _singleListFromArray(getSingleArray);
      case PropertyType.size:
        return getSize();
      case PropertyType.sizeArray:
        return _sizeListFromArray(getSizeArray);
      case PropertyType.string:
        return getString();
      case PropertyType.stringArray:
        return _stringListFromArray(getStringArray);
      case PropertyType.timeSpan:
        return getTimeSpan();
      case PropertyType.timeSpanArray:
        return _durationListFromArray(getTimeSpanArray);
      case PropertyType.uint16:
        return getUInt16();
      case PropertyType.uint16Array:
        return _uint16ListFromArray(getUInt16Array);
      case PropertyType.uint32:
        return getUInt32();
      case PropertyType.uint32Array:
        return _uint32ListFromArray(getUInt32Array);
      case PropertyType.uint64:
        return getUInt64();
      case PropertyType.uint64Array:
        return _uint64ListFromArray(getUInt64Array);
      case PropertyType.uint8:
        return getUInt8();
      case PropertyType.uint8Array:
        return _uint8ListFromArray(getUInt8Array);
      default:
        throw UnsupportedError('Unsupported type: $type');
    }
  }
}

List<bool> _boolListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Bool>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Bool>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _char16ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint16>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint16>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<DateTime> _dateTimeListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    final values = pValue.value.toList(length: pValueSize.value);
    return values
        .map(
          (value) => DateTime.utc(1601, 01, 01)
              .add(Duration(microseconds: value ~/ 10)),
        )
        .toList();
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<double> _doubleListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Double>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Double>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Guid> _guidListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<GUID>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<GUID>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [
      for (var i = 0; i < pValueSize.value; i++)
        Guid.parse(pValue.value[i].toString())
    ];
  } finally {
    free(pValueSize);
  }
}

List<IInspectable> _inspectableListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<COMObject>>)
        getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<COMObject>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(IInspectable.new, length: pValueSize.value);
  } finally {
    free(pValue);
    free(pValueSize);
  }
}

List<int> _int16ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Int16>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Int16>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _int32ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Int32>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Int32>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _int64ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Int64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Int64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Point> _pointListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Point>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Point>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<Rect> _rectListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Rect>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Rect>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<double> _singleListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Float>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Float>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Size> _sizeListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Size>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Size>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return [for (var i = 0; i < pValueSize.value; i++) pValue.value[i]];
  } finally {
    free(pValueSize);
  }
}

List<String> _stringListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<HSTRING>>)
        getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<HSTRING>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<Duration> _durationListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    final values = pValue.value.toList(length: pValueSize.value);
    return values.map((value) => Duration(microseconds: value ~/ 10)).toList();
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _uint16ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint16>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint16>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _uint32ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint32>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint32>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _uint64ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint64>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint64>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}

List<int> _uint8ListFromArray(
    void Function(Pointer<Uint32>, Pointer<Pointer<Uint8>>) getArrayCallback) {
  final pValueSize = calloc<Uint32>();
  final pValue = calloc<Pointer<Uint8>>();

  try {
    getArrayCallback(pValueSize, pValue);
    return pValue.value.toList(length: pValueSize.value);
  } finally {
    free(pValueSize);
    free(pValue);
  }
}
