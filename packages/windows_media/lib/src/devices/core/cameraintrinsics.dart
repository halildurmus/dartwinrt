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

import 'icameraintrinsics.dart';
import 'icameraintrinsics2.dart';
import 'icameraintrinsicsfactory.dart';

/// Represents the intrinsics that describe the camera distortion model.
class CameraIntrinsics extends IInspectable
    implements ICameraIntrinsics, ICameraIntrinsics2 {
  CameraIntrinsics.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Devices.Core.CameraIntrinsics';

  factory CameraIntrinsics.create(
          Vector2 focalLength,
          Vector2 principalPoint,
          Vector3 radialDistortion,
          Vector2 tangentialDistortion,
          int imageWidth,
          int imageHeight) =>
      createActivationFactory(ICameraIntrinsicsFactory.fromPtr, _className,
              IID_ICameraIntrinsicsFactory)
          .create(focalLength, principalPoint, radialDistortion,
              tangentialDistortion, imageWidth, imageHeight);

  late final _iCameraIntrinsics = ICameraIntrinsics.from(this);

  @override
  Vector2 get focalLength => _iCameraIntrinsics.focalLength;

  @override
  Vector2 get principalPoint => _iCameraIntrinsics.principalPoint;

  @override
  Vector3 get radialDistortion => _iCameraIntrinsics.radialDistortion;

  @override
  Vector2 get tangentialDistortion => _iCameraIntrinsics.tangentialDistortion;

  @override
  int get imageWidth => _iCameraIntrinsics.imageWidth;

  @override
  int get imageHeight => _iCameraIntrinsics.imageHeight;

  @override
  Point projectOntoFrame(Vector3 coordinate) =>
      _iCameraIntrinsics.projectOntoFrame(coordinate);

  @override
  Vector2 unprojectAtUnitDepth(Point pixelCoordinate) =>
      _iCameraIntrinsics.unprojectAtUnitDepth(pixelCoordinate);

  @override
  List<Point> projectManyOntoFrame(
          List<Vector3> coordinates, int resultsSize) =>
      _iCameraIntrinsics.projectManyOntoFrame(coordinates, resultsSize);

  @override
  List<Vector2> unprojectPixelsAtUnitDepth(
          List<Point> pixelCoordinates, int resultsSize) =>
      _iCameraIntrinsics.unprojectPixelsAtUnitDepth(
          pixelCoordinates, resultsSize);

  late final _iCameraIntrinsics2 = ICameraIntrinsics2.from(this);

  @override
  Matrix4x4 get undistortedProjectionTransform =>
      _iCameraIntrinsics2.undistortedProjectionTransform;

  @override
  Point distortPoint(Point input) => _iCameraIntrinsics2.distortPoint(input);

  @override
  List<Point> distortPoints(List<Point> inputs, int resultsSize) =>
      _iCameraIntrinsics2.distortPoints(inputs, resultsSize);

  @override
  Point undistortPoint(Point input) =>
      _iCameraIntrinsics2.undistortPoint(input);

  @override
  List<Point> undistortPoints(List<Point> inputs, int resultsSize) =>
      _iCameraIntrinsics2.undistortPoints(inputs, resultsSize);
}
