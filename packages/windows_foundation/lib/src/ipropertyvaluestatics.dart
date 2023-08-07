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
import 'helpers.dart';
import 'point.dart';
import 'rect.dart';
import 'size.dart';

/// @nodoc
const IID_IPropertyValueStatics = '{629bdbc8-d932-4ff4-96b9-8d96c5c1e858}';

class IPropertyValueStatics extends IInspectable {
  // vtable begins at 6, is 39 entries long.
  IPropertyValueStatics.fromPtr(super.ptr);

  factory IPropertyValueStatics.from(IInspectable interface) =>
      IPropertyValueStatics.fromPtr(
          interface.toInterface(IID_IPropertyValueStatics));

  Pointer<COMObject> createEmpty() {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return propertyValue;
  }

  IPropertyValue createUInt8(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint8 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt16(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int16 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt16(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint16 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt32(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt32(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt64(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt64(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint64 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createSingle(double value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Float value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, double value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createDouble(double value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Double value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, double value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createChar16(String value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint16 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.codeUnitAt(0), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createBoolean(bool value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, bool value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createString(String value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.toHString(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  Pointer<COMObject> createInspectable(Object? value) {
    final propertyValue = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(19)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer value,
                                Pointer<COMObject> propertyValue)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer value,
                        Pointer<COMObject> propertyValue)>()(
            ptr.ref.lpVtbl, value?.boxValue().lpVtbl ?? nullptr, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return propertyValue;
  }

  IPropertyValue createGuid(Guid value) {
    final propertyValue = calloc<COMObject>();
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, GUID value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref, propertyValue);

    free(valueNativeStructPtr);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createDateTime(DateTime value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.toWinRTDateTime(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createTimeSpan(Duration value) {
    final propertyValue = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.toWinRTDuration(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createPoint(Point value) {
    final propertyValue = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr =
        ptr.ref.vtable
                .elementAt(23)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                NativePoint value,
                                Pointer<COMObject> propertyValue)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, NativePoint value,
                        Pointer<COMObject> propertyValue)>()(
            ptr.ref.lpVtbl, valueNativeStructPtr.ref, propertyValue);

    free(valueNativeStructPtr);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createSize(Size value) {
    final propertyValue = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(24)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, NativeSize value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeSize value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref, propertyValue);

    free(valueNativeStructPtr);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createRect(Rect value) {
    final propertyValue = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(25)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, NativeRect value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, NativeRect value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref, propertyValue);

    free(valueNativeStructPtr);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt8Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Uint8>();

    final hr = ptr.ref.vtable
            .elementAt(26)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint8> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint8> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt16Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Int16>();

    final hr = ptr.ref.vtable
            .elementAt(27)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int16> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Int16> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt16Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Uint16>();

    final hr = ptr.ref.vtable
            .elementAt(28)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint16> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint16> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt32Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Int32>();

    final hr = ptr.ref.vtable
            .elementAt(29)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int32> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Int32> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt32Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Uint32>();

    final hr = ptr.ref.vtable
            .elementAt(30)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint32> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint32> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt64Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Int64>();

    final hr = ptr.ref.vtable
            .elementAt(31)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int64> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Int64> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt64Array(List<int> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Uint64>();

    final hr = ptr.ref.vtable
            .elementAt(32)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint64> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint64> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createSingleArray(List<double> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Float>();

    final hr = ptr.ref.vtable
            .elementAt(33)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Float> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Float> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createDoubleArray(List<double> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray<Double>();

    final hr = ptr.ref.vtable
            .elementAt(34)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Double> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Double> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createChar16Array(List<String> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toUint16Array();

    final hr = ptr.ref.vtable
            .elementAt(35)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint16> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint16> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createBooleanArray(List<bool> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray();

    final hr = ptr.ref.vtable
            .elementAt(36)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Bool> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Bool> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createStringArray(List<String> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray();

    final hr = ptr.ref.vtable
            .elementAt(37)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<IntPtr> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<IntPtr> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInspectableArray(List<Object?> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray();

    final hr = ptr.ref.vtable
            .elementAt(38)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<VTablePointer> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int valueSize,
                    Pointer<VTablePointer> value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createGuidArray(List<Guid> value) {
    final propertyValue = calloc<COMObject>();
    final allocator = Arena();
    final valueArray = value.toArray(allocator: allocator);

    final hr = ptr.ref.vtable
            .elementAt(39)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<GUID> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<GUID> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    allocator.releaseAll();

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createDateTimeArray(List<DateTime> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray();

    final hr = ptr.ref.vtable
            .elementAt(40)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int64> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Int64> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createTimeSpanArray(List<Duration> value) {
    final propertyValue = calloc<COMObject>();
    final valueArray = value.toArray();

    final hr = ptr.ref.vtable
            .elementAt(41)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int64> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Int64> value, Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    free(valueArray);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createPointArray(List<Point> value) {
    final propertyValue = calloc<COMObject>();
    final allocator = Arena();
    final valueArray = value.toArray(allocator: allocator);

    final hr = ptr.ref.vtable
            .elementAt(42)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<NativePoint> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int valueSize,
                    Pointer<NativePoint> value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    allocator.releaseAll();

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createSizeArray(List<Size> value) {
    final propertyValue = calloc<COMObject>();
    final allocator = Arena();
    final valueArray = value.toArray(allocator: allocator);

    final hr = ptr.ref.vtable
            .elementAt(43)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<NativeSize> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int valueSize,
                    Pointer<NativeSize> value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    allocator.releaseAll();

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createRectArray(List<Rect> value) {
    final propertyValue = calloc<COMObject>();
    final allocator = Arena();
    final valueArray = value.toArray(allocator: allocator);

    final hr = ptr.ref.vtable
            .elementAt(44)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 valueSize,
                            Pointer<NativeRect> value,
                            Pointer<COMObject> propertyValue)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int valueSize,
                    Pointer<NativeRect> value,
                    Pointer<COMObject> propertyValue)>()(
        ptr.ref.lpVtbl, value.length, valueArray, propertyValue);

    allocator.releaseAll();

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }
}
