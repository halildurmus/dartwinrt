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
import 'package:windows_graphics/windows_graphics.dart';

import 'imediaframe.dart';
import 'videoframe.dart';

/// @nodoc
const IID_IVideoFrame = '{0cc06625-90fc-4c92-bd95-7ded21819d1c}';

class IVideoFrame extends IInspectable implements IMediaFrame, IClosable {
  IVideoFrame.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoFrameVtbl>().ref;

  final _IVideoFrameVtbl _vtable;

  factory IVideoFrame.from(IInspectable interface) =>
      interface.cast(IVideoFrame.fromPtr, IID_IVideoFrame);

  SoftwareBitmap? get softwareBitmap {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SoftwareBitmap.asFunction<
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

    return SoftwareBitmap.fromPtr(value);
  }

  Future<void> copyToAsync(VideoFrame? frame) {
    final value = calloc<COMObject>();

    final hr = _vtable.CopyToAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer frame,
            Pointer<COMObject> value)>()(lpVtbl, frame.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(value).toFuture();
  }

  IDirect3DSurface? get direct3DSurface {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Direct3DSurface.asFunction<
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

    return IDirect3DSurface.fromPtr(value);
  }

  late final _iMediaFrame = IMediaFrame.from(this);

  @override
  String get type => _iMediaFrame.type;

  @override
  bool get isReadOnly => _iMediaFrame.isReadOnly;

  @override
  set relativeTime(Duration? value) => _iMediaFrame.relativeTime = value;

  @override
  Duration? get relativeTime => _iMediaFrame.relativeTime;

  @override
  set systemRelativeTime(Duration? value) =>
      _iMediaFrame.systemRelativeTime = value;

  @override
  Duration? get systemRelativeTime => _iMediaFrame.systemRelativeTime;

  @override
  set duration(Duration? value) => _iMediaFrame.duration = value;

  @override
  Duration? get duration => _iMediaFrame.duration;

  @override
  set isDiscontinuous(bool value) => _iMediaFrame.isDiscontinuous = value;

  @override
  bool get isDiscontinuous => _iMediaFrame.isDiscontinuous;

  @override
  IPropertySet? get extendedProperties => _iMediaFrame.extendedProperties;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IVideoFrameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SoftwareBitmap;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer frame,
              Pointer<COMObject> value)>> CopyToAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Direct3DSurface;
}
