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

import 'videomediaframeformat.dart';

/// @nodoc
const IID_IDepthMediaFrameFormat = '{c312cf40-d729-453e-8780-2e04f140d28e}';

class IDepthMediaFrameFormat extends IInspectable {
  IDepthMediaFrameFormat.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDepthMediaFrameFormatVtbl>().ref;

  final _IDepthMediaFrameFormatVtbl _vtable;

  factory IDepthMediaFrameFormat.from(IInspectable interface) => interface.cast(
      IDepthMediaFrameFormat.fromPtr, IID_IDepthMediaFrameFormat);

  VideoMediaFrameFormat? get videoFormat {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoFormat.asFunction<
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

    return VideoMediaFrameFormat.fromPtr(value);
  }

  double get depthScaleInMeters {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_DepthScaleInMeters.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IDepthMediaFrameFormatVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoFormat;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_DepthScaleInMeters;
}
