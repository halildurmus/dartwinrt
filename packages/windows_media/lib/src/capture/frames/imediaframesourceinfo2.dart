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

import '../mediacapturevideoprofilemediadescription.dart';

/// @nodoc
const IID_IMediaFrameSourceInfo2 = '{195a7855-6457-42c6-a769-19b65bd32e6e}';

class IMediaFrameSourceInfo2 extends IInspectable {
  IMediaFrameSourceInfo2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceInfo2Vtbl>().ref;

  final _IMediaFrameSourceInfo2Vtbl _vtable;

  factory IMediaFrameSourceInfo2.from(IInspectable interface) => interface.cast(
      IMediaFrameSourceInfo2.fromPtr, IID_IMediaFrameSourceInfo2);

  String get profileId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ProfileId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  List<MediaCaptureVideoProfileMediaDescription?>?
      get videoProfileMediaDescription {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoProfileMediaDescription.asFunction<
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

    return IVectorView<MediaCaptureVideoProfileMediaDescription?>.fromPtr(value,
            iterableIid: '{0895e56d-fe1f-5364-ab67-c597d8970b89}',
            creator: MediaCaptureVideoProfileMediaDescription.fromPtr)
        .toList();
  }
}

final class _IMediaFrameSourceInfo2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ProfileId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoProfileMediaDescription;
}
