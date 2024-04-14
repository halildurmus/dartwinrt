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

import '../../devices/audiodevicecontroller.dart';

/// @nodoc
const IID_IMediaFrameSourceController3 =
    '{1f0cf815-2464-4651-b1e8-4a82dbdb54de}';

class IMediaFrameSourceController3 extends IInspectable {
  IMediaFrameSourceController3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceController3Vtbl>().ref;

  final _IMediaFrameSourceController3Vtbl _vtable;

  factory IMediaFrameSourceController3.from(IInspectable interface) =>
      interface.cast(IMediaFrameSourceController3.fromPtr,
          IID_IMediaFrameSourceController3);

  AudioDeviceController? get audioDeviceController {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AudioDeviceController.asFunction<
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

    return AudioDeviceController.fromPtr(value);
  }
}

final class _IMediaFrameSourceController3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AudioDeviceController;
}
