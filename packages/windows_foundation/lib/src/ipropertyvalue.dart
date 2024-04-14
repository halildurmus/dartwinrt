// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'point.dart';
import 'propertytype.dart';
import 'rect.dart';
import 'size.dart';

/// @nodoc
const IID_IPropertyValue = '{4bd682dd-7554-40e9-9a9b-82654ede7e62}';

/// Represents a value in a property store.
class IPropertyValue extends IInspectable {
  IPropertyValue.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPropertyValueVtbl>().ref;

  final _IPropertyValueVtbl _vtable;

  factory IPropertyValue.from(IInspectable interface) =>
      interface.cast(IPropertyValue.fromPtr, IID_IPropertyValue);

  PropertyType get type {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PropertyType.from(value.value);
    } finally {
      free(value);
    }
  }

  bool get isNumericScalar {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsNumericScalar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt8() {
    final value = calloc<Uint8>();

    try {
      final hr = _vtable.GetUInt8.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint8> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt16() {
    final value = calloc<Int16>();

    try {
      final hr = _vtable.GetInt16.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int16> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt16() {
    final value = calloc<Uint16>();

    try {
      final hr = _vtable.GetUInt16.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint16> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt32() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetInt32.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt32() {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.GetUInt32.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt64() {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.GetInt64.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt64() {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.GetUInt64.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double getSingle() {
    final value = calloc<Float>();

    try {
      final hr = _vtable.GetSingle.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double getDouble() {
    final value = calloc<Double>();

    try {
      final hr = _vtable.GetDouble.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String getChar16() {
    final value = calloc<Uint16>();

    try {
      final hr = _vtable.GetChar16.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint16> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return String.fromCharCode(value.value);
    } finally {
      free(value);
    }
  }

  bool getBoolean() {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.GetBoolean.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String getString() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  Guid getGuid() {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.GetGuid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  DateTime getDateTime() {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.GetDateTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  Duration getTimeSpan() {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.GetTimeSpan.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
  }

  Point getPoint() {
    final value = calloc<NativePoint>();

    try {
      final hr = _vtable.GetPoint.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size getSize() {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.GetSize.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect getRect() {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.GetRect.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  List<int> getUInt8Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint8>>();

    try {
      final hr = _vtable.GetUInt8Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint8>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<int> getInt16Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int16>>();

    try {
      final hr = _vtable.GetInt16Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int16>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<int> getUInt16Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint16>>();

    try {
      final hr = _vtable.GetUInt16Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint16>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<int> getInt32Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int32>>();

    try {
      final hr = _vtable.GetInt32Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int32>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<int> getUInt32Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint32>>();

    try {
      final hr = _vtable.GetUInt32Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint32>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<int> getInt64Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int64>>();

    try {
      final hr = _vtable.GetInt64Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<int> getUInt64Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint64>>();

    try {
      final hr = _vtable.GetUInt64Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<double> getSingleArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Float>>();

    try {
      final hr = _vtable.GetSingleArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Float>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<double> getDoubleArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Double>>();

    try {
      final hr = _vtable.GetDoubleArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Double>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<String> getChar16Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint16>>();

    try {
      final hr = _vtable.GetChar16Array.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint16>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toStringList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<bool> getBooleanArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Bool>>();

    try {
      final hr = _vtable.GetBooleanArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Bool>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<String> getStringArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<IntPtr>>();

    try {
      final hr = _vtable.GetStringArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<IntPtr>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<Object?> getInspectableArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<COMObject>>();

    try {
      final hr = _vtable.GetInspectableArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<COMObject>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toObjectList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<Guid> getGuidArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<GUID>>();

    try {
      final hr = _vtable.GetGuidArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<GUID>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<DateTime> getDateTimeArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int64>>();

    try {
      final hr = _vtable.GetDateTimeArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toDateTimeList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<Duration> getTimeSpanArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int64>>();

    try {
      final hr = _vtable.GetTimeSpanArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toDurationList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<Point> getPointArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<NativePoint>>();

    try {
      final hr = _vtable.GetPointArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<NativePoint>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<Size> getSizeArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<NativeSize>>();

    try {
      final hr = _vtable.GetSizeArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<NativeSize>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }

  List<Rect> getRectArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<NativeRect>>();

    try {
      final hr = _vtable.GetRectArray.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<NativeRect>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value.value);
      free(value);
    }
  }
}

final class _IPropertyValueVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Type;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsNumericScalar;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint8> value)>>
      GetUInt8;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int16> value)>>
      GetInt16;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint16> value)>>
      GetUInt16;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetInt32;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      GetUInt32;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      GetInt64;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      GetUInt64;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      GetSingle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      GetDouble;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint16> value)>>
      GetChar16;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      GetBoolean;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      GetString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>> GetGuid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      GetDateTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      GetTimeSpan;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativePoint> value)>> GetPoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeSize> value)>> GetSize;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> GetRect;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint8>> value)>> GetUInt8Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int16>> value)>> GetInt16Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint16>> value)>> GetUInt16Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int32>> value)>> GetInt32Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint32>> value)>> GetUInt32Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int64>> value)>> GetInt64Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint64>> value)>> GetUInt64Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Float>> value)>> GetSingleArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Double>> value)>> GetDoubleArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Uint16>> value)>> GetChar16Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Bool>> value)>> GetBooleanArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<IntPtr>> value)>> GetStringArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<COMObject>> value)>> GetInspectableArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<GUID>> value)>> GetGuidArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int64>> value)>> GetDateTimeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int64>> value)>> GetTimeSpanArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<NativePoint>> value)>> GetPointArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<NativeSize>> value)>> GetSizeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<NativeRect>> value)>> GetRectArray;
}
