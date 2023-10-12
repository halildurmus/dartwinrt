// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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
  // vtable begins at 6, is 39 entries long.
  IPropertyValue.fromPtr(super.ptr);

  factory IPropertyValue.from(IInspectable interface) =>
      interface.cast(IPropertyValue.fromPtr, IID_IPropertyValue);

  PropertyType get type {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Uint8> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int16> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint16> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint16> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt32() {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt64() {
    final value = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double getSingle() {
    final value = calloc<Float>();

    try {
      final hr = vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Float> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Double> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Double> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String getChar16() {
    final value = calloc<Uint16>();

    try {
      final hr = vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint16> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint16> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return String.fromCharCode(value.value);
    } finally {
      free(value);
    }
  }

  bool getBoolean() {
    final value = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  Guid getGuid() {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<NativePoint> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativePoint> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size getSize() {
    final value = calloc<NativeSize>();

    try {
      final hr = vtable
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<NativeSize> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeSize> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect getRect() {
    final value = calloc<NativeRect>();

    try {
      final hr = vtable
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<NativeRect> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeRect> value)>()(lpVtbl, value);

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
      final hr = vtable
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Uint8>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Uint8>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<int> getInt16Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int16>>();

    try {
      final hr = vtable
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Int16>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Int16>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<int> getUInt16Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint16>>();

    try {
      final hr = vtable
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Uint16>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Uint16>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<int> getInt32Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int32>>();

    try {
      final hr = vtable
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Int32>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Int32>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<int> getUInt32Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint32>>();

    try {
      final hr = vtable
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Uint32>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Uint32>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<int> getInt64Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int64>>();

    try {
      final hr = vtable
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Int64>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Int64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<int> getUInt64Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint64>>();

    try {
      final hr = vtable
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Uint64>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Uint64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<double> getSingleArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Float>>();

    try {
      final hr = vtable
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Float>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Float>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<double> getDoubleArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Double>>();

    try {
      final hr = vtable
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Double>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Double>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<String> getChar16Array() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint16>>();

    try {
      final hr = vtable
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Uint16>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Uint16>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toStringList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<bool> getBooleanArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Bool>>();

    try {
      final hr = vtable
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Bool>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Bool>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<String> getStringArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<IntPtr>>();

    try {
      final hr = vtable
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<IntPtr>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<IntPtr>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<Object?> getInspectableArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<COMObject>>();

    try {
      final hr = vtable
              .elementAt(38)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<Uint32> valueSize,
                              Pointer<Pointer<COMObject>> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                      Pointer<Pointer<COMObject>> value)>()(
          lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toObjectList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<Guid> getGuidArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<GUID>>();

    try {
      final hr = vtable
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<GUID>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<GUID>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<DateTime> getDateTimeArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int64>>();

    try {
      final hr = vtable
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Int64>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Int64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toDateTimeList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<Duration> getTimeSpanArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int64>>();

    try {
      final hr = vtable
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl,
                          Pointer<Uint32> valueSize,
                          Pointer<Pointer<Int64>> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                  Pointer<Pointer<Int64>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toDurationList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<Point> getPointArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<NativePoint>>();

    try {
      final hr = vtable
              .elementAt(42)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<Uint32> valueSize,
                              Pointer<Pointer<NativePoint>> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                      Pointer<Pointer<NativePoint>> value)>()(
          lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<Size> getSizeArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<NativeSize>>();

    try {
      final hr = vtable
              .elementAt(43)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<Uint32> valueSize,
                              Pointer<Pointer<NativeSize>> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                      Pointer<Pointer<NativeSize>> value)>()(
          lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  List<Rect> getRectArray() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<NativeRect>>();

    try {
      final hr = vtable
              .elementAt(44)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<Uint32> valueSize,
                              Pointer<Pointer<NativeRect>> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                      Pointer<Pointer<NativeRect>> value)>()(
          lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }
}
