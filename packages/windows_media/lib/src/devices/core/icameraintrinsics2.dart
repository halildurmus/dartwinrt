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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_ICameraIntrinsics2 = '{0cdaa447-0798-4b4d-839f-c5ec414db27a}';

class ICameraIntrinsics2 extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  ICameraIntrinsics2.fromPtr(super.ptr);

  factory ICameraIntrinsics2.from(IInspectable interface) =>
      ICameraIntrinsics2.fromPtr(interface.toInterface(IID_ICameraIntrinsics2));

  Matrix4x4 get undistortedProjectionTransform {
    final value = calloc<NativeMatrix4x4>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<NativeMatrix4x4> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeMatrix4x4> value)>()(ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      value.free();
    }
  }

  Point distortPoint(Point input) {
    final result = calloc<NativePoint>();

    try {
      final inputNativeStructPtr = input.toNative();

      final hr =
          ptr.ref.vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativePoint input,
                                  Pointer<NativePoint> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, NativePoint input,
                          Pointer<NativePoint> result)>()(
              ptr.ref.lpVtbl, inputNativeStructPtr.ref, result);

      inputNativeStructPtr.free();

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      result.free();
    }
  }

  List<Point> distortPoints(List<Point> inputs, int resultsSize) {
    final allocator = Arena();
    final inputsArray = calloc<NativePoint>(inputs.length);
    for (var i = 0; i < inputs.length; i++) {
      inputsArray[i] = inputs[i].toNative(allocator: allocator).ref;
    }
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 inputsSize,
                              Pointer<NativePoint> inputs,
                              Uint32 resultsSize,
                              Pointer<NativePoint> results)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int inputsSize,
                      Pointer<NativePoint> inputs,
                      int resultsSize,
                      Pointer<NativePoint> results)>()(
          ptr.ref.lpVtbl, inputs.length, inputsArray, resultsSize, results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(inputsArray);
      free(results);
    }
  }

  Point undistortPoint(Point input) {
    final result = calloc<NativePoint>();

    try {
      final inputNativeStructPtr = input.toNative();

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativePoint input,
                                  Pointer<NativePoint> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, NativePoint input,
                          Pointer<NativePoint> result)>()(
              ptr.ref.lpVtbl, inputNativeStructPtr.ref, result);

      inputNativeStructPtr.free();

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      result.free();
    }
  }

  List<Point> undistortPoints(List<Point> inputs, int resultsSize) {
    final allocator = Arena();
    final inputsArray = calloc<NativePoint>(inputs.length);
    for (var i = 0; i < inputs.length; i++) {
      inputsArray[i] = inputs[i].toNative(allocator: allocator).ref;
    }
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 inputsSize,
                              Pointer<NativePoint> inputs,
                              Uint32 resultsSize,
                              Pointer<NativePoint> results)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int inputsSize,
                      Pointer<NativePoint> inputs,
                      int resultsSize,
                      Pointer<NativePoint> results)>()(
          ptr.ref.lpVtbl, inputs.length, inputsArray, resultsSize, results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(inputsArray);
      free(results);
    }
  }
}
