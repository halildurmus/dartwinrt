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

import '../videoframe.dart';

/// @nodoc
const IID_IMediaCaptureStopResult = '{f9db6a2a-a092-4ad1-97d4-f201f9d082db}';

class IMediaCaptureStopResult extends IInspectable {
  IMediaCaptureStopResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureStopResultVtbl>().ref;

  final _IMediaCaptureStopResultVtbl _vtable;

  factory IMediaCaptureStopResult.from(IInspectable interface) => interface
      .cast(IMediaCaptureStopResult.fromPtr, IID_IMediaCaptureStopResult);

  VideoFrame? get lastFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LastFrame.asFunction<
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

    return VideoFrame.fromPtr(value);
  }

  Duration get recordDuration {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_RecordDuration.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureStopResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LastFrame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_RecordDuration;
}
