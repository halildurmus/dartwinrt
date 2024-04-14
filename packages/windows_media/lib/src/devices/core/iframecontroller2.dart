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

import 'frameflashcontrol.dart';

/// @nodoc
const IID_IFrameController2 = '{00d3bc75-d87c-485b-8a09-5c358568b427}';

class IFrameController2 extends IInspectable {
  IFrameController2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFrameController2Vtbl>().ref;

  final _IFrameController2Vtbl _vtable;

  factory IFrameController2.from(IInspectable interface) =>
      interface.cast(IFrameController2.fromPtr, IID_IFrameController2);

  FrameFlashControl? get flashControl {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FlashControl.asFunction<
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

    return FrameFlashControl.fromPtr(value);
  }
}

final class _IFrameController2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FlashControl;
}
