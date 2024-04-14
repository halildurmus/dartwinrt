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

import 'frames/mediaframesourceinfo.dart';

/// @nodoc
const IID_IMediaCaptureVideoProfile2 = '{97ddc95f-94ce-468f-9316-fc5bc2638f6b}';

class IMediaCaptureVideoProfile2 extends IInspectable {
  IMediaCaptureVideoProfile2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureVideoProfile2Vtbl>().ref;

  final _IMediaCaptureVideoProfile2Vtbl _vtable;

  factory IMediaCaptureVideoProfile2.from(IInspectable interface) => interface
      .cast(IMediaCaptureVideoProfile2.fromPtr, IID_IMediaCaptureVideoProfile2);

  List<MediaFrameSourceInfo?>? get frameSourceInfos {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameSourceInfos.asFunction<
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

    return IVectorView<MediaFrameSourceInfo?>.fromPtr(value,
            iterableIid: '{2e29c5b0-6aa9-50f2-91a4-5b67a5598f2e}',
            tObjectCreator: MediaFrameSourceInfo.fromPtr)
        .toList();
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
}

final class _IMediaCaptureVideoProfile2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameSourceInfos;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
}
