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

import 'sphericalvideoframeformat.dart';

/// @nodoc
const IID_IVideoEncodingProperties4 = '{724ef014-c10c-40f2-9d72-3ee13b45fa8e}';

class IVideoEncodingProperties4 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IVideoEncodingProperties4.fromPtr(super.ptr);

  factory IVideoEncodingProperties4.from(IInspectable interface) =>
      IVideoEncodingProperties4.fromPtr(
          interface.toInterface(IID_IVideoEncodingProperties4));

  SphericalVideoFrameFormat get sphericalVideoFrameFormat {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
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

      return SphericalVideoFrameFormat.from(value.value);
    } finally {
      free(value);
    }
  }
}
