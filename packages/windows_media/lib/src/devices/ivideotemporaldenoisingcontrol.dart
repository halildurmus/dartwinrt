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

import 'videotemporaldenoisingmode.dart';

/// @nodoc
const IID_IVideoTemporalDenoisingControl =
    '{7ab34735-3e2a-4a32-baff-4358c4fbdd57}';

class IVideoTemporalDenoisingControl extends IInspectable {
  IVideoTemporalDenoisingControl.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IVideoTemporalDenoisingControlVtbl>().ref;

  final _IVideoTemporalDenoisingControlVtbl _vtable;

  factory IVideoTemporalDenoisingControl.from(IInspectable interface) =>
      interface.cast(IVideoTemporalDenoisingControl.fromPtr,
          IID_IVideoTemporalDenoisingControl);

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<VideoTemporalDenoisingMode>? get supportedModes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedModes.asFunction<
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

    return IVectorView<VideoTemporalDenoisingMode>.fromPtr(value,
            iterableIid: '{caf26629-ee84-5d4c-ae37-9dc4b26978eb}',
            enumCreator: VideoTemporalDenoisingMode.from)
        .toList();
  }

  VideoTemporalDenoisingMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Mode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoTemporalDenoisingMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set mode(VideoTemporalDenoisingMode value) {
    final hr = _vtable.put_Mode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IVideoTemporalDenoisingControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedModes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Mode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Mode;
}
