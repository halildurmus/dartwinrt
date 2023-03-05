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
import 'package:win32/win32.dart' hide DocumentProperties;

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'iinspectable.dart';
import 'point.dart';
import 'rect.dart';
import 'size.dart';

/// @nodoc
const IID_IPropertyValueStatics = '{629bdbc8-d932-4ff4-96b9-8d96c5c1e858}';

/// {@category interface}
class IPropertyValueStatics extends IInspectable {
  // vtable begins at 6, is 39 entries long.
  IPropertyValueStatics.fromRawPointer(super.ptr);

  factory IPropertyValueStatics.from(IInspectable interface) =>
      IPropertyValueStatics.fromRawPointer(
          interface.toInterface(IID_IPropertyValueStatics));

  Pointer<COMObject> createEmpty() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  IPropertyValue createUInt8(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint8 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInt16(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int16 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt16(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint16 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInt32(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt32(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint32 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInt64(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int64 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt64(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint64 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createSingle(double value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Float value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, double value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createDouble(double value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Double value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, double value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createChar16(int value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint16 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createBoolean(bool value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Bool value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, bool value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createString(String value) {
    final retValuePtr = calloc<COMObject>();
    final valueHString = value.toHString();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valueHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(valueHString);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  Pointer<COMObject> createInspectable(Object? value) {
    final retValuePtr = calloc<COMObject>();
    final valuePtr = value?.intoBox().ref.lpVtbl ?? nullptr;

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valuePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  IPropertyValue createGuid(Guid value) {
    final retValuePtr = calloc<COMObject>();
    final valueNativeGuidPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, GUID value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, GUID value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valueNativeGuidPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(valueNativeGuidPtr);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createDateTime(DateTime value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int64 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.toWinRTDateTime(), retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createTimeSpan(Duration value) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int64 value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.toWinRTDuration(), retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createPoint(Point value) {
    final retValuePtr = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(23)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, NativePoint value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, NativePoint value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(valueNativeStructPtr);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createSize(Size value) {
    final retValuePtr = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(24)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, NativeSize value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, NativeSize value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(valueNativeStructPtr);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createRect(Rect value) {
    final retValuePtr = calloc<COMObject>();
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(25)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, NativeRect value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, NativeRect value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(valueNativeStructPtr);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt8Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Uint8>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(26)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint8> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Uint8> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInt16Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Int16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(27)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int16> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Int16> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt16Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Uint16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(28)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint16> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize,
                    Pointer<Uint16> value, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInt32Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Int32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(29)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int32> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Int32> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt32Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Uint32>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(30)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint32> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize,
                    Pointer<Uint32> value, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInt64Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(31)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int64> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Int64> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createUInt64Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Uint64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(32)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint64> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize,
                    Pointer<Uint64> value, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createSingleArray(List<double> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Float>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(33)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Float> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Float> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createDoubleArray(List<double> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Double>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(34)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Double> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize,
                    Pointer<Double> value, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createChar16Array(List<int> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Uint16>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(35)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Uint16> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize,
                    Pointer<Uint16> value, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createBooleanArray(List<bool> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Bool>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(36)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Bool> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Bool> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createStringArray(List<String> value) {
    final retValuePtr = calloc<COMObject>();
    final handles = <int>[];
    final pArray = calloc<HSTRING>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toHString();
      handles.add(pArray[i]);
    }

    final hr = ptr.ref.vtable
            .elementAt(37)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<IntPtr> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize,
                    Pointer<IntPtr> value, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    handles.forEach(WindowsDeleteString);
    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createInspectableArray(List<Object?> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] =
          value.elementAt(i)?.intoBox().ref ?? PropertyValue.createEmpty().ref;
    }

    final hr = ptr.ref.vtable
            .elementAt(38)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<COMObject> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int valueSize,
                    Pointer<COMObject> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createGuidArray(List<Guid> value) {
    final retValuePtr = calloc<COMObject>();
    final nativeGuids = <Pointer<GUID>>[];
    final pArray = calloc<GUID>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeGuidPtr = value.elementAt(i).toNativeGUID();
      pArray[i] = nativeGuidPtr.ref;
      nativeGuids.add(nativeGuidPtr);
    }

    final hr = ptr.ref.vtable
            .elementAt(39)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<GUID> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<GUID> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    nativeGuids.forEach(free);
    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createDateTimeArray(List<DateTime> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toWinRTDateTime();
    }

    final hr = ptr.ref.vtable
            .elementAt(40)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int64> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Int64> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createTimeSpanArray(List<Duration> value) {
    final retValuePtr = calloc<COMObject>();
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toWinRTDuration();
    }

    final hr = ptr.ref.vtable
            .elementAt(41)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<Int64> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int valueSize, Pointer<Int64> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createPointArray(List<Point> value) {
    final retValuePtr = calloc<COMObject>();
    final nativeStructPtrs = <Pointer<NativePoint>>[];
    final pArray = calloc<NativePoint>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeStructPtr = value.elementAt(i).toNative();
      pArray[i] = nativeStructPtr.ref;
      nativeStructPtrs.add(nativeStructPtr);
    }

    final hr = ptr.ref.vtable
            .elementAt(42)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<NativePoint> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int valueSize,
                    Pointer<NativePoint> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    nativeStructPtrs.forEach(free);
    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createSizeArray(List<Size> value) {
    final retValuePtr = calloc<COMObject>();
    final nativeStructPtrs = <Pointer<NativeSize>>[];
    final pArray = calloc<NativeSize>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeStructPtr = value.elementAt(i).toNative();
      pArray[i] = nativeStructPtr.ref;
      nativeStructPtrs.add(nativeStructPtr);
    }

    final hr = ptr.ref.vtable
            .elementAt(43)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<NativeSize> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int valueSize,
                    Pointer<NativeSize> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    nativeStructPtrs.forEach(free);
    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }

  IPropertyValue createRectArray(List<Rect> value) {
    final retValuePtr = calloc<COMObject>();
    final nativeStructPtrs = <Pointer<NativeRect>>[];
    final pArray = calloc<NativeRect>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeStructPtr = value.elementAt(i).toNative();
      pArray[i] = nativeStructPtr.ref;
      nativeStructPtrs.add(nativeStructPtr);
    }

    final hr = ptr.ref.vtable
            .elementAt(44)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 valueSize,
                            Pointer<NativeRect> value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int valueSize,
                    Pointer<NativeRect> value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, value.length, pArray, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    nativeStructPtrs.forEach(free);
    free(pArray);

    return IPropertyValue.fromRawPointer(retValuePtr);
  }
}
