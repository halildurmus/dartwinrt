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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_perception/windows_perception.dart';

import 'cameraintrinsics.dart';

/// @nodoc
const IID_IDepthCorrelatedCoordinateMapper =
    '{f95d89fb-8af0-4cb0-926d-696866e5046a}';

class IDepthCorrelatedCoordinateMapper extends IInspectable
    implements IClosable {
  // vtable begins at 6, is 4 entries long.
  IDepthCorrelatedCoordinateMapper.fromPtr(super.ptr);

  factory IDepthCorrelatedCoordinateMapper.from(IInspectable interface) =>
      IDepthCorrelatedCoordinateMapper.fromPtr(
          interface.toInterface(IID_IDepthCorrelatedCoordinateMapper));

  Vector3 unprojectPoint(
      Point sourcePoint, SpatialCoordinateSystem? targetCoordinateSystem) {
    final result = calloc<NativeVector3>();

    try {
      final sourcePointNativeStructPtr = sourcePoint.toNative();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativePoint sourcePoint,
                              VTablePointer targetCoordinateSystem,
                              Pointer<NativeVector3> result)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativePoint sourcePoint,
                      VTablePointer targetCoordinateSystem,
                      Pointer<NativeVector3> result)>()(
          ptr.ref.lpVtbl,
          sourcePointNativeStructPtr.ref,
          targetCoordinateSystem.lpVtbl,
          result);

      free(sourcePointNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  List<Vector3> unprojectPoints(List<Point> sourcePoints,
      SpatialCoordinateSystem? targetCoordinateSystem, int resultsSize) {
    final allocator = Arena();
    final sourcePointsArray = calloc<NativePoint>(sourcePoints.length);
    for (var i = 0; i < sourcePoints.length; i++) {
      sourcePointsArray[i] = sourcePoints[i].toNative(allocator: allocator).ref;
    }
    final results = calloc<NativeVector3>(resultsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 sourcePointsSize,
                              Pointer<NativePoint> sourcePoints,
                              VTablePointer targetCoordinateSystem,
                              Uint32 resultsSize,
                              Pointer<NativeVector3> results)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int sourcePointsSize,
                      Pointer<NativePoint> sourcePoints,
                      VTablePointer targetCoordinateSystem,
                      int resultsSize,
                      Pointer<NativeVector3> results)>()(
          ptr.ref.lpVtbl,
          sourcePoints.length,
          sourcePointsArray,
          targetCoordinateSystem.lpVtbl,
          resultsSize,
          results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(sourcePointsArray);
      free(results);
    }
  }

  Point mapPoint(
      Point sourcePoint,
      SpatialCoordinateSystem? targetCoordinateSystem,
      CameraIntrinsics? targetCameraIntrinsics) {
    final result = calloc<NativePoint>();

    try {
      final sourcePointNativeStructPtr = sourcePoint.toNative();

      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              NativePoint sourcePoint,
                              VTablePointer targetCoordinateSystem,
                              VTablePointer targetCameraIntrinsics,
                              Pointer<NativePoint> result)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      NativePoint sourcePoint,
                      VTablePointer targetCoordinateSystem,
                      VTablePointer targetCameraIntrinsics,
                      Pointer<NativePoint> result)>()(
          ptr.ref.lpVtbl,
          sourcePointNativeStructPtr.ref,
          targetCoordinateSystem.lpVtbl,
          targetCameraIntrinsics.lpVtbl,
          result);

      free(sourcePointNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  List<Point> mapPoints(
      List<Point> sourcePoints,
      SpatialCoordinateSystem? targetCoordinateSystem,
      CameraIntrinsics? targetCameraIntrinsics,
      int resultsSize) {
    final allocator = Arena();
    final sourcePointsArray = calloc<NativePoint>(sourcePoints.length);
    for (var i = 0; i < sourcePoints.length; i++) {
      sourcePointsArray[i] = sourcePoints[i].toNative(allocator: allocator).ref;
    }
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 sourcePointsSize,
                              Pointer<NativePoint> sourcePoints,
                              VTablePointer targetCoordinateSystem,
                              VTablePointer targetCameraIntrinsics,
                              Uint32 resultsSize,
                              Pointer<NativePoint> results)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      int sourcePointsSize,
                      Pointer<NativePoint> sourcePoints,
                      VTablePointer targetCoordinateSystem,
                      VTablePointer targetCameraIntrinsics,
                      int resultsSize,
                      Pointer<NativePoint> results)>()(
          ptr.ref.lpVtbl,
          sourcePoints.length,
          sourcePointsArray,
          targetCoordinateSystem.lpVtbl,
          targetCameraIntrinsics.lpVtbl,
          resultsSize,
          results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
      free(sourcePointsArray);
      free(results);
    }
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
