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
  IDepthCorrelatedCoordinateMapper.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IDepthCorrelatedCoordinateMapperVtbl>().ref;

  final _IDepthCorrelatedCoordinateMapperVtbl _vtable;

  factory IDepthCorrelatedCoordinateMapper.from(IInspectable interface) =>
      interface.cast(IDepthCorrelatedCoordinateMapper.fromPtr,
          IID_IDepthCorrelatedCoordinateMapper);

  Vector3 unprojectPoint(
      Point sourcePoint, SpatialCoordinateSystem? targetCoordinateSystem) {
    final result = calloc<NativeVector3>();

    try {
      final sourcePointNativeStructPtr = sourcePoint.toNative();

      final hr = _vtable.UnprojectPoint.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  NativePoint sourcePoint,
                  VTablePointer targetCoordinateSystem,
                  Pointer<NativeVector3> result)>()(
          lpVtbl,
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
    final sourcePointsArray = sourcePoints.toArray(allocator: allocator);
    final results = calloc<NativeVector3>(resultsSize);

    try {
      final hr = _vtable.UnprojectPoints.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int sourcePointsSize,
                  Pointer<NativePoint> sourcePoints,
                  VTablePointer targetCoordinateSystem,
                  int resultsSize,
                  Pointer<NativeVector3> results)>()(
          lpVtbl,
          sourcePoints.length,
          sourcePointsArray,
          targetCoordinateSystem.lpVtbl,
          resultsSize,
          results);

      if (FAILED(hr)) throwWindowsException(hr);

      return results.toList(length: resultsSize);
    } finally {
      allocator.releaseAll();
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

      final hr = _vtable.MapPoint.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  NativePoint sourcePoint,
                  VTablePointer targetCoordinateSystem,
                  VTablePointer targetCameraIntrinsics,
                  Pointer<NativePoint> result)>()(
          lpVtbl,
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
    final sourcePointsArray = sourcePoints.toArray(allocator: allocator);
    final results = calloc<NativePoint>(resultsSize);

    try {
      final hr = _vtable.MapPoints.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int sourcePointsSize,
                  Pointer<NativePoint> sourcePoints,
                  VTablePointer targetCoordinateSystem,
                  VTablePointer targetCameraIntrinsics,
                  int resultsSize,
                  Pointer<NativePoint> results)>()(
          lpVtbl,
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
      free(results);
    }
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IDepthCorrelatedCoordinateMapperVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativePoint sourcePoint,
              VTablePointer targetCoordinateSystem,
              Pointer<NativeVector3> result)>> UnprojectPoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 sourcePointsSize,
              Pointer<NativePoint> sourcePoints,
              VTablePointer targetCoordinateSystem,
              Uint32 resultsSize,
              Pointer<NativeVector3> results)>> UnprojectPoints;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativePoint sourcePoint,
              VTablePointer targetCoordinateSystem,
              VTablePointer targetCameraIntrinsics,
              Pointer<NativePoint> result)>> MapPoint;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 sourcePointsSize,
              Pointer<NativePoint> sourcePoints,
              VTablePointer targetCoordinateSystem,
              VTablePointer targetCameraIntrinsics,
              Uint32 resultsSize,
              Pointer<NativePoint> results)>> MapPoints;
}
