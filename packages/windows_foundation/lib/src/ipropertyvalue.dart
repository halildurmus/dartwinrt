// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../internal.dart';
import 'callbacks.dart';
import 'collections/iiterator.dart';
import 'enums.g.dart';
import 'helpers.dart';
import 'iinspectable.dart';
import 'structs.g.dart';
import 'types.dart';

/// @nodoc
const IID_IPropertyValue = '{4bd682dd-7554-40e9-9a9b-82654ede7e62}';

/// Represents a value in a property store.
///
/// {@category interface}
class IPropertyValue extends IInspectable {
  // vtable begins at 6, is 39 entries long.
  IPropertyValue.fromRawPointer(super.ptr);

  factory IPropertyValue.from(IInspectable interface) =>
      IPropertyValue.fromRawPointer(interface.toInterface(IID_IPropertyValue));

  PropertyType get type {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PropertyType.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  bool get isNumericScalar {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getUInt8() {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint8>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint8>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getInt16() {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int16>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getUInt16() {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint16>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getInt32() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getUInt32() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getInt64() {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getUInt64() {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  double getSingle() {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Float>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Float>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  double getDouble() {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Double>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Double>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int getChar16() {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint16>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint16>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  bool getBoolean() {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  String getString() {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  Guid getGuid() {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<GUID>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<GUID>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }

  DateTime getDateTime() {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DateTime.utc(1601, 01, 01)
          .add(Duration(microseconds: retValuePtr.value ~/ 10));
    } finally {
      free(retValuePtr);
    }
  }

  Duration getTimeSpan() {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }

  Point getPoint() {
    final retValuePtr = calloc<Point>();

    final hr = ptr.ref.vtable
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(Pointer, Pointer<Point>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Point>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  Size getSize() {
    final retValuePtr = calloc<Size>();

    final hr = ptr.ref.vtable
        .elementAt(24)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Size>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Size>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  Rect getRect() {
    final retValuePtr = calloc<Rect>();

    final hr = ptr.ref.vtable
        .elementAt(25)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, Pointer<Rect>)>>>()
        .value
        .asFunction<
            int Function(
                Pointer, Pointer<Rect>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  void getUInt8Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint8>>();

    final hr = ptr.ref.vtable
            .elementAt(26)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint8>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint8>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getInt16Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Int16>>();

    final hr = ptr.ref.vtable
            .elementAt(27)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Int16>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Int16>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getUInt16Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint16>>();

    final hr = ptr.ref.vtable
            .elementAt(28)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint16>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint16>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getInt32Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Int32>>();

    final hr = ptr.ref.vtable
            .elementAt(29)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Int32>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Int32>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getUInt32Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint32>>();

    final hr = ptr.ref.vtable
            .elementAt(30)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint32>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint32>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getInt64Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Int64>>();

    final hr = ptr.ref.vtable
            .elementAt(31)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Int64>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Int64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getUInt64Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint64>>();

    final hr = ptr.ref.vtable
            .elementAt(32)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint64>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getSingleArray(List<double> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Float>>();

    final hr = ptr.ref.vtable
            .elementAt(33)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Float>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Float>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getDoubleArray(List<double> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Double>>();

    final hr = ptr.ref.vtable
            .elementAt(34)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Double>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Double>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getChar16Array(List<int> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint16>>();

    final hr = ptr.ref.vtable
            .elementAt(35)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint16>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint16>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getBooleanArray(List<bool> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Bool>>();

    final hr = ptr.ref.vtable
            .elementAt(36)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Bool>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Bool>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getStringArray(List<String> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<IntPtr>>();

    final hr = ptr.ref.vtable
            .elementAt(37)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<IntPtr>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<IntPtr>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getInspectableArray(List<Object?> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<COMObject>>();

    final hr = ptr.ref.vtable
            .elementAt(38)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<COMObject>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<COMObject>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value
        .toList(IPropertyValue.fromRawPointer, length: pValueSize.value)
        .map((e) => e.value));
    free(pValueSize);
    free(pArray);
  }

  void getGuidArray(List<Guid> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<GUID>>();

    final hr = ptr.ref.vtable
            .elementAt(39)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<GUID>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<GUID>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getDateTimeArray(List<DateTime> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint64>>();

    final hr = ptr.ref.vtable
            .elementAt(40)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint64>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value).map((value) =>
        DateTime.utc(1601, 01, 01).add(Duration(microseconds: value ~/ 10))));
    free(pValueSize);
    free(pArray);
  }

  void getTimeSpanArray(List<Duration> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Uint64>>();

    final hr = ptr.ref.vtable
            .elementAt(41)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Uint64>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Uint64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value
        .toList(length: pValueSize.value)
        .map((value) => Duration(microseconds: value ~/ 10)));
    free(pValueSize);
    free(pArray);
  }

  void getPointArray(List<Point> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Point>>();

    final hr = ptr.ref.vtable
            .elementAt(42)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Point>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Point>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getSizeArray(List<Size> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Size>>();

    final hr = ptr.ref.vtable
            .elementAt(43)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Size>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Size>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }

  void getRectArray(List<Rect> value) {
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<Rect>>();

    final hr = ptr.ref.vtable
            .elementAt(44)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<Uint32> valueSize,
                            Pointer<Pointer<Rect>> value)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> valueSize,
                    Pointer<Pointer<Rect>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pArray);

    if (FAILED(hr)) throw WindowsException(hr);

    value.addAll(pArray.value.toList(length: pValueSize.value));
    free(pValueSize);
    free(pArray);
  }
}
