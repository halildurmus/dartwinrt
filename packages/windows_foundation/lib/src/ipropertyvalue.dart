// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;

import '../internal.dart';
import 'collections/iiterator.dart';
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
      IPropertyValue.fromPtr(interface.toInterface(IID_IPropertyValue));

  PropertyType get type {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return PropertyType.from(value.value);
    } finally {
      free(value);
    }
  }

  bool get isNumericScalar {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt8() {
    final value = calloc<Uint8>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint8> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint8> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt16() {
    final value = calloc<Int16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int16> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int16> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt16() {
    final value = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint16> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint16> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt32() {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt32() {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getInt64() {
    final value = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getUInt64() {
    final value = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double getSingle() {
    final value = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Float> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Float> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double getDouble() {
    final value = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Double> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Double> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int getChar16() {
    final value = calloc<Uint16>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint16> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint16> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool getBoolean() {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(18)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String getString() {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  Guid getGuid() {
    final value = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(20)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<GUID> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<GUID> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  DateTime getDateTime() {
    final value = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(21)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  Duration getTimeSpan() {
    final value = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(22)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
  }

  Point getPoint() {
    final value = calloc<NativePoint>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<NativePoint> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativePoint> value)>()(ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size getSize() {
    final value = calloc<NativeSize>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<NativeSize> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeSize> value)>()(ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect getRect() {
    final value = calloc<NativeRect>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<NativeRect> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeRect> value)>()(ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  void getUInt8Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Uint8>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Uint8>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getInt16Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Int16>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Int16>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getUInt16Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Uint16>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Uint16>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getInt32Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Int32>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Int32>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getUInt32Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Uint32>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Uint32>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getInt64Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Int64>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Int64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getUInt64Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Uint64>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Uint64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getSingleArray(List<double> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Float>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Float>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getDoubleArray(List<double> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Double>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Double>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getChar16Array(List<int> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Uint16>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Uint16>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getBooleanArray(List<bool> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Bool>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Bool>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getStringArray(List<String> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<IntPtr>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<IntPtr>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getInspectableArray(List<Object?> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<COMObject>>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toObjectList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getGuidArray(List<Guid> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<GUID>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<GUID>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getDateTimeArray(List<DateTime> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Int64>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Int64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value
          .toList(length: pValueSize.value)
          .map((value) => value.toDartDateTime())
          .toList());
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getTimeSpanArray(List<Duration> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<Int64>>();

    final hr = ptr.ref.vtable
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
                    Pointer<Pointer<Int64>> value)>()(
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value
          .toList(length: pValueSize.value)
          .map((value) => value.toDartDuration())
          .toList());
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getPointArray(List<Point> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<NativePoint>>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getSizeArray(List<Size> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<NativeSize>>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void getRectArray(List<Rect> value) {
    final valueSize = calloc<Pointer<Uint32>>();
    final pValueSize = calloc<Uint32>();
    final pValueArray = calloc<Pointer<NativeRect>>();

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, pValueSize, pValueArray);

    free(valueSize);
    if (pValueSize.value > 0) {
      value.addAll(pValueArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pValueArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
