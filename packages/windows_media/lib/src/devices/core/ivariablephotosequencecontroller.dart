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

import '../../mediaproperties/imediaencodingproperties.dart';
import '../../mediaproperties/mediaratio.dart';
import 'framecontrolcapabilities.dart';
import 'framecontroller.dart';

/// @nodoc
const IID_IVariablePhotoSequenceController =
    '{7fbff880-ed8c-43fd-a7c3-b35809e4229a}';

class IVariablePhotoSequenceController extends IInspectable {
  IVariablePhotoSequenceController.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IVariablePhotoSequenceControllerVtbl>().ref;

  final _IVariablePhotoSequenceControllerVtbl _vtable;

  factory IVariablePhotoSequenceController.from(IInspectable interface) =>
      interface.cast(IVariablePhotoSequenceController.fromPtr,
          IID_IVariablePhotoSequenceController);

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get maxPhotosPerSecond {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_MaxPhotosPerSecond.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get photosPerSecondLimit {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_PhotosPerSecondLimit.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set photosPerSecondLimit(double value) {
    final hr = _vtable.put_PhotosPerSecondLimit
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaRatio? getHighestConcurrentFrameRate(
      IMediaEncodingProperties? captureProperties) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetHighestConcurrentFrameRate.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer captureProperties,
                Pointer<COMObject> value)>()(
        lpVtbl, captureProperties.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaRatio.fromPtr(value);
  }

  MediaRatio? getCurrentFrameRate() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetCurrentFrameRate.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaRatio.fromPtr(value);
  }

  FrameControlCapabilities? get frameCapabilities {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameCapabilities.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return FrameControlCapabilities.fromPtr(value);
  }

  IVector<FrameController?>? get desiredFrameControllers {
    final items = calloc<COMObject>();

    final hr = _vtable.get_DesiredFrameControllers.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> items)>()(lpVtbl, items);

    if (FAILED(hr)) {
      free(items);
      throwWindowsException(hr);
    }

    if (items.isNull) {
      free(items);
      return null;
    }

    return IVector.fromPtr(items,
        iterableIid: '{bd8eeadc-2dd9-5ad8-ac5d-f3b13b94b9c2}',
        tObjectCreator: FrameController.fromPtr);
  }
}

final class _IVariablePhotoSequenceControllerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_MaxPhotosPerSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_PhotosPerSecondLimit;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      put_PhotosPerSecondLimit;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer captureProperties,
              Pointer<COMObject> value)>> GetHighestConcurrentFrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetCurrentFrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameCapabilities;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> items)>>
      get_DesiredFrameControllers;
}
