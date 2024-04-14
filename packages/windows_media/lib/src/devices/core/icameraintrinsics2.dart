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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_ICameraIntrinsics2 = '{0cdaa447-0798-4b4d-839f-c5ec414db27a}';

class ICameraIntrinsics2 extends IInspectable {
  ICameraIntrinsics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICameraIntrinsics2Vtbl>().ref;

  final _ICameraIntrinsics2Vtbl _vtable;

  factory ICameraIntrinsics2.from(IInspectable interface) =>
      interface.cast(ICameraIntrinsics2.fromPtr, IID_ICameraIntrinsics2);

  Matrix4x4 get undistortedProjectionTransform {
    final value = calloc<NativeMatrix4x4>();

    try {
      final hr = _vtable.get_UndistortedProjectionTransform.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeMatrix4x4> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Point distortPoint(Point input) {
    final result = calloc<NativePoint>();

    try {
      final inputNativeStructPtr = input.toNative();

      final hr = _vtable.DistortPoint.asFunction<
              int Function(VTablePointer lpVtbl, NativePoint input,
                  Pointer<NativePoint> result)>()(
          lpVtbl, inputNativeStructPtr.ref, result);

      free(inputNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  List<Point> distortPoints(List<Point> inputs, int resultsSize) {
    final allocator = Arena();
    final inputsArray = inputs.toArray(allocator: allocator);
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = _vtable.DistortPoints.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int inputsSize,
                  Pointer<NativePoint> inputs,
                  int resultsSize,
                  Pointer<NativePoint> results)>()(
          lpVtbl, inputs.length, inputsArray, resultsSize, results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(results);
    }
  }

  Point undistortPoint(Point input) {
    final result = calloc<NativePoint>();

    try {
      final inputNativeStructPtr = input.toNative();

      final hr = _vtable.UndistortPoint.asFunction<
              int Function(VTablePointer lpVtbl, NativePoint input,
                  Pointer<NativePoint> result)>()(
          lpVtbl, inputNativeStructPtr.ref, result);

      free(inputNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  List<Point> undistortPoints(List<Point> inputs, int resultsSize) {
    final allocator = Arena();
    final inputsArray = inputs.toArray(allocator: allocator);
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = _vtable.UndistortPoints.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int inputsSize,
                  Pointer<NativePoint> inputs,
                  int resultsSize,
                  Pointer<NativePoint> results)>()(
          lpVtbl, inputs.length, inputsArray, resultsSize, results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(results);
    }
  }
}

final class _ICameraIntrinsics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeMatrix4x4> value)>>
      get_UndistortedProjectionTransform;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativePoint input,
              Pointer<NativePoint> result)>> DistortPoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 inputsSize,
              Pointer<NativePoint> inputs,
              Uint32 resultsSize,
              Pointer<NativePoint> results)>> DistortPoints;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativePoint input,
              Pointer<NativePoint> result)>> UndistortPoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 inputsSize,
              Pointer<NativePoint> inputs,
              Uint32 resultsSize,
              Pointer<NativePoint> results)>> UndistortPoints;
}
