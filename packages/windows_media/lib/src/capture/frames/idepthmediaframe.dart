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
import 'mediaframereference.dart';
import 'videomediaframe.dart';

/// @nodoc
const IID_IDepthMediaFrame = '{47135e4f-8549-45c0-925b-80d35efdb10a}';

class IDepthMediaFrame extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDepthMediaFrame.fromPtr(super.ptr);

  factory IDepthMediaFrame.from(IInspectable interface) =>
      interface.cast(IDepthMediaFrame.fromPtr, IID_IDepthMediaFrame);

  MediaFrameReference? get frameReference {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaFrameReference.fromPtr(value);
  }

  VideoMediaFrame? get videoMediaFrame {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoMediaFrame.fromPtr(value);
  }

  DepthMediaFrameFormat? get depthFormat {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return DepthMediaFrameFormat.fromPtr(value);
  }

  DepthCorrelatedCoordinateMapper? tryCreateCoordinateMapper(
      CameraIntrinsics? cameraIntrinsics,
      SpatialCoordinateSystem? coordinateSystem) {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer cameraIntrinsics,
                            VTablePointer coordinateSystem,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer cameraIntrinsics,
                    VTablePointer coordinateSystem,
                    Pointer<COMObject> value)>()(
        lpVtbl, cameraIntrinsics.lpVtbl, coordinateSystem.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return DepthCorrelatedCoordinateMapper.fromPtr(value);
  }
}
