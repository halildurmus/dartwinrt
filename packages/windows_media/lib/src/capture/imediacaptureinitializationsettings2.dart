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

import '../audioprocessing.dart';
import 'mediacategory.dart';

/// @nodoc
const IID_IMediaCaptureInitializationSettings2 =
    '{404e0626-c9dc-43e9-aee4-e6bf1b57b44c}';

class IMediaCaptureInitializationSettings2 extends IInspectable {
  IMediaCaptureInitializationSettings2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureInitializationSettings2Vtbl>()
            .ref;

  final _IMediaCaptureInitializationSettings2Vtbl _vtable;

  factory IMediaCaptureInitializationSettings2.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings2.fromPtr,
          IID_IMediaCaptureInitializationSettings2);

  set mediaCategory(MediaCategory value) {
    final hr = _vtable.put_MediaCategory
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCategory get mediaCategory {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_MediaCategory.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCategory.from(value.value);
    } finally {
      free(value);
    }
  }

  set audioProcessing(AudioProcessing value) {
    final hr = _vtable.put_AudioProcessing
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  AudioProcessing get audioProcessing {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_AudioProcessing.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AudioProcessing.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureInitializationSettings2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_MediaCategory;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_MediaCategory;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_AudioProcessing;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_AudioProcessing;
}
