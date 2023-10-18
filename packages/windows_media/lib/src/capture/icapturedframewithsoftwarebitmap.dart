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
import 'package:windows_graphics/windows_graphics.dart';

/// @nodoc
const IID_ICapturedFrameWithSoftwareBitmap =
    '{b58e8b6e-8503-49b5-9e86-897d26a3ff3d}';

class ICapturedFrameWithSoftwareBitmap extends IInspectable {
  ICapturedFrameWithSoftwareBitmap.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ICapturedFrameWithSoftwareBitmapVtbl>().ref;

  final _ICapturedFrameWithSoftwareBitmapVtbl _vtable;

  factory ICapturedFrameWithSoftwareBitmap.from(IInspectable interface) =>
      interface.cast(ICapturedFrameWithSoftwareBitmap.fromPtr,
          IID_ICapturedFrameWithSoftwareBitmap);

  SoftwareBitmap? get softwareBitmap {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SoftwareBitmap.asFunction<
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

    return SoftwareBitmap.fromPtr(value);
  }
}

final class _ICapturedFrameWithSoftwareBitmapVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SoftwareBitmap;
}
