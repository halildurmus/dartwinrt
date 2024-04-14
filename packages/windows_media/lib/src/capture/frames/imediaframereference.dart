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
import 'package:windows_perception/windows_perception.dart';

import 'buffermediaframe.dart';
import 'mediaframeformat.dart';
import 'mediaframesourcekind.dart';
import 'videomediaframe.dart';

/// @nodoc
const IID_IMediaFrameReference = '{f6b88641-f0dc-4044-8dc9-961cedd05bad}';

class IMediaFrameReference extends IInspectable implements IClosable {
  IMediaFrameReference.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameReferenceVtbl>().ref;

  final _IMediaFrameReferenceVtbl _vtable;

  factory IMediaFrameReference.from(IInspectable interface) =>
      interface.cast(IMediaFrameReference.fromPtr, IID_IMediaFrameReference);

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

  MediaFrameFormat? get format {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Format.asFunction<
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

    return MediaFrameFormat.fromPtr(value);
  }

  Duration? get systemRelativeTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SystemRelativeTime.asFunction<
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

    return IReference<Duration?>.fromPtr(value,
            referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}')
        .value;
  }

  Duration get duration {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_Duration.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
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

  BufferMediaFrame? get bufferMediaFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_BufferMediaFrame.asFunction<
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

    return BufferMediaFrame.fromPtr(value);
  }

  VideoMediaFrame? get videoMediaFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoMediaFrame.asFunction<
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

    return VideoMediaFrame.fromPtr(value);
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

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IMediaFrameReferenceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_SourceKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Format;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SystemRelativeTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_Duration;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_BufferMediaFrame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoMediaFrame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_CoordinateSystem;
}
