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

/// @nodoc
const IID_IGeographicRegionStatics = '{29e28974-7ad9-4ef4-8799-b3b44fadec08}';

class IGeographicRegionStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeographicRegionStatics.fromPtr(super.ptr);

  factory IGeographicRegionStatics.from(IInspectable interface) => interface
      .cast(IGeographicRegionStatics.fromPtr, IID_IGeographicRegionStatics);

  bool isSupported(String geographicRegionCode) {
    final result = calloc<Bool>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              IntPtr geographicRegionCode,
                              Pointer<Bool> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int geographicRegionCode,
                      Pointer<Bool> result)>()(
          lpVtbl, geographicRegionCode.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
