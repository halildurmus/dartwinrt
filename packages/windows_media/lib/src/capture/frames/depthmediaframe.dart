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

import '../../devices/core/cameraintrinsics.dart';
import '../../devices/core/depthcorrelatedcoordinatemapper.dart';
import 'depthmediaframeformat.dart';
import 'idepthmediaframe.dart';
import 'idepthmediaframe2.dart';
import 'mediaframereference.dart';
import 'videomediaframe.dart';

/// Represents a VideoMediaFrame that contains depth video data.
class DepthMediaFrame extends IInspectable
    implements IDepthMediaFrame, IDepthMediaFrame2 {
  DepthMediaFrame.fromPtr(super.ptr);

  late final _iDepthMediaFrame = IDepthMediaFrame.from(this);

  @override
  MediaFrameReference? get frameReference => _iDepthMediaFrame.frameReference;

  @override
  VideoMediaFrame? get videoMediaFrame => _iDepthMediaFrame.videoMediaFrame;

  @override
  DepthMediaFrameFormat? get depthFormat => _iDepthMediaFrame.depthFormat;

  @override
  DepthCorrelatedCoordinateMapper? tryCreateCoordinateMapper(
          CameraIntrinsics? cameraIntrinsics,
          SpatialCoordinateSystem? coordinateSystem) =>
      _iDepthMediaFrame.tryCreateCoordinateMapper(
          cameraIntrinsics, coordinateSystem);

  late final _iDepthMediaFrame2 = IDepthMediaFrame2.from(this);

  @override
  int get maxReliableDepth => _iDepthMediaFrame2.maxReliableDepth;

  @override
  int get minReliableDepth => _iDepthMediaFrame2.minReliableDepth;
}
