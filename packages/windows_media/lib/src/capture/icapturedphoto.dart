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

import 'capturedframe.dart';

/// @nodoc
const IID_ICapturedPhoto = '{b0ce7e5a-cfcc-4d6c-8ad1-0869208aca16}';

class ICapturedPhoto extends IInspectable {
  ICapturedPhoto.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICapturedPhotoVtbl>().ref;

  final _ICapturedPhotoVtbl _vtable;

  factory ICapturedPhoto.from(IInspectable interface) =>
      interface.cast(ICapturedPhoto.fromPtr, IID_ICapturedPhoto);

  CapturedFrame? get frame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Frame.asFunction<
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

    return CapturedFrame.fromPtr(value);
  }

  CapturedFrame? get thumbnail {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Thumbnail.asFunction<
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

    return CapturedFrame.fromPtr(value);
  }
}

final class _ICapturedPhotoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Frame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Thumbnail;
}
