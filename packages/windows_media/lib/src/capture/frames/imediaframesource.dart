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

import '../../devices/core/cameraintrinsics.dart';
import 'mediaframeformat.dart';
import 'mediaframesource.dart';
import 'mediaframesourcecontroller.dart';
import 'mediaframesourceinfo.dart';

/// @nodoc
const IID_IMediaFrameSource = '{d6782953-90db-46a8-8add-2aa884a8d253}';

class IMediaFrameSource extends IInspectable {
  IMediaFrameSource.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceVtbl>().ref;

  final _IMediaFrameSourceVtbl _vtable;

  factory IMediaFrameSource.from(IInspectable interface) =>
      interface.cast(IMediaFrameSource.fromPtr, IID_IMediaFrameSource);

  MediaFrameSourceInfo? get info {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Info.asFunction<
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

    return MediaFrameSourceInfo.fromPtr(value);
  }

  MediaFrameSourceController? get controller {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Controller.asFunction<
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

    return MediaFrameSourceController.fromPtr(value);
  }

  List<MediaFrameFormat?>? get supportedFormats {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedFormats.asFunction<
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

    return IVectorView<MediaFrameFormat?>.fromPtr(value,
            iterableIid: '{1f029a27-1123-538a-9261-8a380e12bac6}',
            tObjectCreator: MediaFrameFormat.fromPtr)
        .toList();
  }

  MediaFrameFormat? get currentFormat {
    final value = calloc<COMObject>();

    final hr = _vtable.get_CurrentFormat.asFunction<
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

  Future<void> setFormatAsync(MediaFrameFormat? format) {
    final value = calloc<COMObject>();

    final hr = _vtable.SetFormatAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer format,
            Pointer<COMObject> value)>()(lpVtbl, format.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(value).toFuture();
  }

  int add_FormatChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_FormatChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_FormatChanged(int token) {
    final hr = _vtable.remove_FormatChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  CameraIntrinsics? tryGetCameraIntrinsics(MediaFrameFormat? format) {
    final value = calloc<COMObject>();

    final hr = _vtable.TryGetCameraIntrinsics.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer format,
            Pointer<COMObject> value)>()(lpVtbl, format.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return CameraIntrinsics.fromPtr(value);
  }
}

final class _IMediaFrameSourceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Info;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Controller;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedFormats;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_CurrentFormat;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer format,
              Pointer<COMObject> value)>> SetFormatAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_FormatChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_FormatChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer format,
              Pointer<COMObject> value)>> TryGetCameraIntrinsics;
}
