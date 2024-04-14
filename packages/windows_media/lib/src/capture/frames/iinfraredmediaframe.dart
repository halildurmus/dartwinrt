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

import 'mediaframereference.dart';
import 'videomediaframe.dart';

/// @nodoc
const IID_IInfraredMediaFrame = '{3fd13503-004b-4f0e-91ac-465299b41658}';

class IInfraredMediaFrame extends IInspectable {
  IInfraredMediaFrame.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IInfraredMediaFrameVtbl>().ref;

  final _IInfraredMediaFrameVtbl _vtable;

  factory IInfraredMediaFrame.from(IInspectable interface) =>
      interface.cast(IInfraredMediaFrame.fromPtr, IID_IInfraredMediaFrame);

  MediaFrameReference? get frameReference {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameReference.asFunction<
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

    return MediaFrameReference.fromPtr(value);
  }

  VideoMediaFrame? get videoMediaFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoMediaFrame.asFunction<
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

    return VideoMediaFrame.fromPtr(value);
  }

  bool get isIlluminated {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsIlluminated.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IInfraredMediaFrameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameReference;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoMediaFrame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsIlluminated;
}
