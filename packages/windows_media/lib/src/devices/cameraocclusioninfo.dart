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

import 'cameraocclusionkind.dart';
import 'cameraocclusionstate.dart';
import 'icameraocclusioninfo.dart';

/// Provides information about the occlusion state of a camera device.
class CameraOcclusionInfo extends IInspectable implements ICameraOcclusionInfo {
  CameraOcclusionInfo.fromPtr(super.ptr);

  late final _iCameraOcclusionInfo = ICameraOcclusionInfo.from(this);

  @override
  CameraOcclusionState? getState() => _iCameraOcclusionInfo.getState();

  @override
  bool isOcclusionKindSupported(CameraOcclusionKind occlusionKind) =>
      _iCameraOcclusionInfo.isOcclusionKindSupported(occlusionKind);

  @override
  int add_StateChanged(Pointer<COMObject> handler) =>
      _iCameraOcclusionInfo.add_StateChanged(handler);

  @override
  void remove_StateChanged(int token) =>
      _iCameraOcclusionInfo.remove_StateChanged(token);
}
