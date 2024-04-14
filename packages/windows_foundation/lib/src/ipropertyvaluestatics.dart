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
import 'rect.dart';
import 'size.dart';

/// @nodoc
const IID_IPropertyValueStatics = '{629bdbc8-d932-4ff4-96b9-8d96c5c1e858}';

class IPropertyValueStatics extends IInspectable {
  IPropertyValueStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPropertyValueStaticsVtbl>().ref;

  final _IPropertyValueStaticsVtbl _vtable;

  factory IPropertyValueStatics.from(IInspectable interface) =>
      interface.cast(IPropertyValueStatics.fromPtr, IID_IPropertyValueStatics);

  Pointer<COMObject> createEmpty() {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateEmpty.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> propertyValue)>()(lpVtbl, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return propertyValue;
  }

  IPropertyValue createUInt8(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateUInt8.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt16(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateInt16.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt16(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateUInt16.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt32(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateInt32.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt32(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateUInt32.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createInt64(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateInt64.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createUInt64(int value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateUInt64.asFunction<
        int Function(VTablePointer lpVtbl, int value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createSingle(double value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateSingle.asFunction<
        int Function(VTablePointer lpVtbl, double value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createDouble(double value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateDouble.asFunction<
        int Function(VTablePointer lpVtbl, double value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createChar16(String value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateChar16.asFunction<
            int Function(VTablePointer lpVtbl, int value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.codeUnitAt(0), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createBoolean(bool value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateBoolean.asFunction<
        int Function(VTablePointer lpVtbl, bool value,
            Pointer<COMObject> propertyValue)>()(lpVtbl, value, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createString(String value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateString.asFunction<
            int Function(VTablePointer lpVtbl, int value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.toHString(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  Pointer<COMObject> createInspectable(Object? value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateInspectable.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value?.boxValue().lpVtbl ?? nullptr, propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return propertyValue;
  }

  IPropertyValue createGuid(Guid value) {
    final propertyValue = calloc<COMObject>();
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = _vtable.CreateGuid.asFunction<
            int Function(VTablePointer lpVtbl, GUID value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, valueNativeStructPtr.ref, propertyValue);

    free(valueNativeStructPtr);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createDateTime(DateTime value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateDateTime.asFunction<
            int Function(VTablePointer lpVtbl, int value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.toWinRTDateTime(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createTimeSpan(Duration value) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.CreateTimeSpan.asFunction<
            int Function(VTablePointer lpVtbl, int value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.toWinRTDuration(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }

  IPropertyValue createPoint(Point value) {
    final propertyValue = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.CreatePoint.asFunction<
            int Function(VTablePointer lpVtbl, NativePoint value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, valueNativeStructPtr.ref, propertyValue);

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

    final hr = _vtable.CreateSize.asFunction<
            int Function(VTablePointer lpVtbl, NativeSize value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, valueNativeStructPtr.ref, propertyValue);

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

    final hr = _vtable.CreateRect.asFunction<
            int Function(VTablePointer lpVtbl, NativeRect value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, valueNativeStructPtr.ref, propertyValue);

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

    final hr = _vtable.CreateUInt8Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint8> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateInt16Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int16> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateUInt16Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint16> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateInt32Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int32> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateUInt32Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint32> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateInt64Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int64> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateUInt64Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint64> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateSingleArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Float> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateDoubleArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Double> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateChar16Array.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Uint16> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateBooleanArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Bool> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateStringArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<IntPtr> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateInspectableArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int valueSize,
                Pointer<VTablePointer> value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateGuidArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<GUID> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateDateTimeArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int64> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateTimeSpanArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<Int64> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreatePointArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int valueSize,
                Pointer<NativePoint> value,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateSizeArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<NativeSize> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

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

    final hr = _vtable.CreateRectArray.asFunction<
            int Function(VTablePointer lpVtbl, int valueSize,
                Pointer<NativeRect> value, Pointer<COMObject> propertyValue)>()(
        lpVtbl, value.length, valueArray, propertyValue);

    allocator.releaseAll();

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    return IPropertyValue.fromPtr(propertyValue);
  }
}

final class _IPropertyValueStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> propertyValue)>>
      CreateEmpty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint8 value,
              Pointer<COMObject> propertyValue)>> CreateUInt8;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int16 value,
              Pointer<COMObject> propertyValue)>> CreateInt16;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint16 value,
              Pointer<COMObject> propertyValue)>> CreateUInt16;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 value,
              Pointer<COMObject> propertyValue)>> CreateInt32;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 value,
              Pointer<COMObject> propertyValue)>> CreateUInt32;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<COMObject> propertyValue)>> CreateInt64;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 value,
              Pointer<COMObject> propertyValue)>> CreateUInt64;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Float value,
              Pointer<COMObject> propertyValue)>> CreateSingle;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Double value,
              Pointer<COMObject> propertyValue)>> CreateDouble;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint16 value,
              Pointer<COMObject> propertyValue)>> CreateChar16;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Bool value,
              Pointer<COMObject> propertyValue)>> CreateBoolean;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<COMObject> propertyValue)>> CreateString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<COMObject> propertyValue)>> CreateInspectable;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID value,
              Pointer<COMObject> propertyValue)>> CreateGuid;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<COMObject> propertyValue)>> CreateDateTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 value,
              Pointer<COMObject> propertyValue)>> CreateTimeSpan;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativePoint value,
              Pointer<COMObject> propertyValue)>> CreatePoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeSize value,
              Pointer<COMObject> propertyValue)>> CreateSize;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeRect value,
              Pointer<COMObject> propertyValue)>> CreateRect;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Uint8> value,
              Pointer<COMObject> propertyValue)>> CreateUInt8Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Int16> value,
              Pointer<COMObject> propertyValue)>> CreateInt16Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Uint16> value,
              Pointer<COMObject> propertyValue)>> CreateUInt16Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Int32> value,
              Pointer<COMObject> propertyValue)>> CreateInt32Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Uint32> value,
              Pointer<COMObject> propertyValue)>> CreateUInt32Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Int64> value,
              Pointer<COMObject> propertyValue)>> CreateInt64Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Uint64> value,
              Pointer<COMObject> propertyValue)>> CreateUInt64Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Float> value,
              Pointer<COMObject> propertyValue)>> CreateSingleArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Double> value,
              Pointer<COMObject> propertyValue)>> CreateDoubleArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Uint16> value,
              Pointer<COMObject> propertyValue)>> CreateChar16Array;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Bool> value,
              Pointer<COMObject> propertyValue)>> CreateBooleanArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<IntPtr> value,
              Pointer<COMObject> propertyValue)>> CreateStringArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<VTablePointer> value,
              Pointer<COMObject> propertyValue)>> CreateInspectableArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<GUID> value,
              Pointer<COMObject> propertyValue)>> CreateGuidArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Int64> value,
              Pointer<COMObject> propertyValue)>> CreateDateTimeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<Int64> value,
              Pointer<COMObject> propertyValue)>> CreateTimeSpanArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<NativePoint> value,
              Pointer<COMObject> propertyValue)>> CreatePointArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<NativeSize> value,
              Pointer<COMObject> propertyValue)>> CreateSizeArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 valueSize,
              Pointer<NativeRect> value,
              Pointer<COMObject> propertyValue)>> CreateRectArray;
}
