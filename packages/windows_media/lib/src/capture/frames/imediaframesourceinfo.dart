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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_perception/windows_perception.dart';

import '../mediastreamtype.dart';
import 'mediaframesourcegroup.dart';
import 'mediaframesourcekind.dart';

/// @nodoc
const IID_IMediaFrameSourceInfo = '{87bdc9cd-4601-408f-91cf-038318cd0af3}';

class IMediaFrameSourceInfo extends IInspectable {
  IMediaFrameSourceInfo.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceInfoVtbl>().ref;

  final _IMediaFrameSourceInfoVtbl _vtable;

  factory IMediaFrameSourceInfo.from(IInspectable interface) =>
      interface.cast(IMediaFrameSourceInfo.fromPtr, IID_IMediaFrameSourceInfo);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  MediaStreamType get mediaStreamType {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_MediaStreamType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaStreamType.from(value.value);
    } finally {
      free(value);
    }
  }

  MediaFrameSourceKind get sourceKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_SourceKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaFrameSourceKind.from(value.value);
    } finally {
      free(value);
    }
  }

  MediaFrameSourceGroup? get sourceGroup {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SourceGroup.asFunction<
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

    return MediaFrameSourceGroup.fromPtr(value);
  }

  DeviceInformation? get deviceInformation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DeviceInformation.asFunction<
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

    return DeviceInformation.fromPtr(value);
  }

  Map<Guid, Object?>? get properties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Properties.asFunction<
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

    return IMapView<Guid, Object?>.fromPtr(value,
            iterableIid: '{f3b20528-e3b3-5331-b2d0-0c2623aee785}')
        .toMap();
  }

  SpatialCoordinateSystem? get coordinateSystem {
    final value = calloc<COMObject>();

    final hr = _vtable.get_CoordinateSystem.asFunction<
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

    return SpatialCoordinateSystem.fromPtr(value);
  }
}

final class _IMediaFrameSourceInfoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_MediaStreamType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_SourceKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SourceGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DeviceInformation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_CoordinateSystem;
}
