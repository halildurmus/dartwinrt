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

import '../mediaproperties/mediapixelformat.dart';

/// @nodoc
const IID_IPhotoConfirmationControl = '{c8f3f363-ff5e-4582-a9a8-0550f85a4a76}';

class IPhotoConfirmationControl extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IPhotoConfirmationControl.fromPtr(super.ptr);

  factory IPhotoConfirmationControl.from(IInspectable interface) =>
      IPhotoConfirmationControl.fromPtr(
          interface.toInterface(IID_IPhotoConfirmationControl));

  bool get supported {
    final pbSupported = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> pbSupported)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> pbSupported)>()(ptr.ref.lpVtbl, pbSupported);

      if (FAILED(hr)) throwWindowsException(hr);

      return pbSupported.value;
    } finally {
      free(pbSupported);
    }
  }

  bool get enabled {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set enabled(bool value) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaPixelFormat get pixelFormat {
    final format = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> format)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> format)>()(
          ptr.ref.lpVtbl, format);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaPixelFormat.from(format.value);
    } finally {
      free(format);
    }
  }

  set pixelFormat(MediaPixelFormat format) {
    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Int32 format)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int format)>()(
            ptr.ref.lpVtbl, format.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
