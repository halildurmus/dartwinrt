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

import 'imageencodingproperties.dart';
import 'mediapixelformat.dart';

/// @nodoc
const IID_IImageEncodingPropertiesStatics2 =
    '{f6c25b29-3824-46b0-956e-501329e1be3c}';

class IImageEncodingPropertiesStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IImageEncodingPropertiesStatics2.fromPtr(super.ptr);

  factory IImageEncodingPropertiesStatics2.from(IInspectable interface) =>
      interface.cast(IImageEncodingPropertiesStatics2.fromPtr,
          IID_IImageEncodingPropertiesStatics2);

  ImageEncodingProperties? createUncompressed(MediaPixelFormat format) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 format,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int format,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, format.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ImageEncodingProperties.fromPtr(value);
  }

  ImageEncodingProperties? createBmp() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ImageEncodingProperties.fromPtr(value);
  }
}
