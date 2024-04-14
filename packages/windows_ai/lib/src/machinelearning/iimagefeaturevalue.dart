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
import 'package:windows_media/windows_media.dart';

/// @nodoc
const IID_IImageFeatureValue = '{f0414fd9-c9aa-4405-b7fb-94f87c8a3037}';

class IImageFeatureValue extends IInspectable {
  IImageFeatureValue.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IImageFeatureValueVtbl>().ref;

  final _IImageFeatureValueVtbl _vtable;

  factory IImageFeatureValue.from(IInspectable interface) =>
      interface.cast(IImageFeatureValue.fromPtr, IID_IImageFeatureValue);

  VideoFrame? get videoFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoFrame.asFunction<
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
}

final class _IImageFeatureValueVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoFrame;
}
