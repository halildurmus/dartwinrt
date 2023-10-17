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

/// @nodoc
const IID_IImageEncodingProperties2 = '{c854a2df-c923-469b-ac8e-6a9f3c1cd9e3}';

class IImageEncodingProperties2 extends IInspectable {
  IImageEncodingProperties2.fromPtr(super.ptr);

  factory IImageEncodingProperties2.from(IInspectable interface) => interface
      .cast(IImageEncodingProperties2.fromPtr, IID_IImageEncodingProperties2);

  ImageEncodingProperties? copy() {
    final result = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ImageEncodingProperties.fromPtr(result);
  }
}
