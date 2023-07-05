// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'bitmapalphamode.dart';
import 'bitmappixelformat.dart';
import 'softwarebitmap.dart';

/// @nodoc
const IID_ISoftwareBitmapFactory = '{c99feb69-2d62-4d47-a6b3-4fdb6a07fdf8}';

class ISoftwareBitmapFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ISoftwareBitmapFactory.fromPtr(super.ptr);

  factory ISoftwareBitmapFactory.from(IInspectable interface) =>
      ISoftwareBitmapFactory.fromPtr(
          interface.toInterface(IID_ISoftwareBitmapFactory));

  SoftwareBitmap create(BitmapPixelFormat format, int width, int height) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 format,
                            Int32 width,
                            Int32 height,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int format, int width,
                    int height, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, format.value, width, height, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return SoftwareBitmap.fromPtr(value);
  }

  SoftwareBitmap createWithAlpha(
      BitmapPixelFormat format, int width, int height, BitmapAlphaMode alpha) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 format,
                            Int32 width,
                            Int32 height,
                            Int32 alpha,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int format, int width,
                    int height, int alpha, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, format.value, width, height, alpha.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return SoftwareBitmap.fromPtr(value);
  }
}
