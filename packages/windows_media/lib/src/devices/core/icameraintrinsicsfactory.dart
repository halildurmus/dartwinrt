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

import 'cameraintrinsics.dart';

/// @nodoc
const IID_ICameraIntrinsicsFactory = '{c0ddc486-2132-4a34-a659-9bfe2a055712}';

class ICameraIntrinsicsFactory extends IInspectable {
  ICameraIntrinsicsFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICameraIntrinsicsFactoryVtbl>().ref;

  final _ICameraIntrinsicsFactoryVtbl _vtable;

  factory ICameraIntrinsicsFactory.from(IInspectable interface) => interface
      .cast(ICameraIntrinsicsFactory.fromPtr, IID_ICameraIntrinsicsFactory);

  CameraIntrinsics create(
      Vector2 focalLength,
      Vector2 principalPoint,
      Vector3 radialDistortion,
      Vector2 tangentialDistortion,
      int imageWidth,
      int imageHeight) {
    final result = calloc<COMObject>();
    final focalLengthNativeStructPtr = focalLength.toNative();
    final principalPointNativeStructPtr = principalPoint.toNative();
    final radialDistortionNativeStructPtr = radialDistortion.toNative();
    final tangentialDistortionNativeStructPtr = tangentialDistortion.toNative();

    final hr = _vtable.Create.asFunction<
            int Function(
                VTablePointer lpVtbl,
                NativeVector2 focalLength,
                NativeVector2 principalPoint,
                NativeVector3 radialDistortion,
                NativeVector2 tangentialDistortion,
                int imageWidth,
                int imageHeight,
                Pointer<COMObject> result)>()(
        lpVtbl,
        focalLengthNativeStructPtr.ref,
        principalPointNativeStructPtr.ref,
        radialDistortionNativeStructPtr.ref,
        tangentialDistortionNativeStructPtr.ref,
        imageWidth,
        imageHeight,
        result);

    free(focalLengthNativeStructPtr);
    free(principalPointNativeStructPtr);
    free(radialDistortionNativeStructPtr);
    free(tangentialDistortionNativeStructPtr);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return CameraIntrinsics.fromPtr(result);
  }
}

final class _ICameraIntrinsicsFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeVector2 focalLength,
              NativeVector2 principalPoint,
              NativeVector3 radialDistortion,
              NativeVector2 tangentialDistortion,
              Uint32 imageWidth,
              Uint32 imageHeight,
              Pointer<COMObject> result)>> Create;
}
