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

import 'mediaframereaderacquisitionmode.dart';

/// @nodoc
const IID_IMediaFrameReader2 = '{871127b3-8531-4050-87cc-a13733cf3e9b}';

class IMediaFrameReader2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IMediaFrameReader2.fromPtr(super.ptr);

  factory IMediaFrameReader2.from(IInspectable interface) =>
      IMediaFrameReader2.fromPtr(interface.toInterface(IID_IMediaFrameReader2));

  set acquisitionMode(MediaFrameReaderAcquisitionMode value) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaFrameReaderAcquisitionMode get acquisitionMode {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaFrameReaderAcquisitionMode.from(value.value);
    } finally {
      free(value);
    }
  }
}
