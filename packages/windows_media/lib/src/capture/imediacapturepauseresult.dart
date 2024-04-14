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
const IID_IMediaCapturePauseResult = '{aec47ca3-4477-4b04-a06f-2c1c5182fe9d}';

class IMediaCapturePauseResult extends IInspectable {
  IMediaCapturePauseResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCapturePauseResultVtbl>().ref;

  final _IMediaCapturePauseResultVtbl _vtable;

  factory IMediaCapturePauseResult.from(IInspectable interface) => interface
      .cast(IMediaCapturePauseResult.fromPtr, IID_IMediaCapturePauseResult);

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

final class _IMediaCapturePauseResultVtbl extends Struct {
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
