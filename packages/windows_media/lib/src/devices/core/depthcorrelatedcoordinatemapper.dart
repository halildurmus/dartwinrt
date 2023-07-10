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
import 'package:windows_perception/windows_perception.dart';

import 'cameraintrinsics.dart';
import 'idepthcorrelatedcoordinatemapper.dart';

/// Maps 2D points in a MediaFrameSource to 3D space or to a frame from a
/// different MediaFrameSource using data from a DepthMediaFrame.
class DepthCorrelatedCoordinateMapper extends IInspectable
    implements IDepthCorrelatedCoordinateMapper, IClosable {
  DepthCorrelatedCoordinateMapper.fromPtr(super.ptr);

  late final _iDepthCorrelatedCoordinateMapper =
      IDepthCorrelatedCoordinateMapper.from(this);

  @override
  Vector3 unprojectPoint(
          Point sourcePoint, SpatialCoordinateSystem? targetCoordinateSystem) =>
      _iDepthCorrelatedCoordinateMapper.unprojectPoint(
          sourcePoint, targetCoordinateSystem);

  @override
  List<Vector3> unprojectPoints(List<Point> sourcePoints,
          SpatialCoordinateSystem? targetCoordinateSystem, int resultsSize) =>
      _iDepthCorrelatedCoordinateMapper.unprojectPoints(
          sourcePoints, targetCoordinateSystem, resultsSize);

  @override
  Point mapPoint(
          Point sourcePoint,
          SpatialCoordinateSystem? targetCoordinateSystem,
          CameraIntrinsics? targetCameraIntrinsics) =>
      _iDepthCorrelatedCoordinateMapper.mapPoint(
          sourcePoint, targetCoordinateSystem, targetCameraIntrinsics);

  @override
  List<Point> mapPoints(
          List<Point> sourcePoints,
          SpatialCoordinateSystem? targetCoordinateSystem,
          CameraIntrinsics? targetCameraIntrinsics,
          int resultsSize) =>
      _iDepthCorrelatedCoordinateMapper.mapPoints(sourcePoints,
          targetCoordinateSystem, targetCameraIntrinsics, resultsSize);

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
