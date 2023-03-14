// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IGeographicRegionStatics = '{29e28974-7ad9-4ef4-8799-b3b44fadec08}';

/// {@category interface}
class IGeographicRegionStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeographicRegionStatics.fromPtr(super.ptr);

  factory IGeographicRegionStatics.from(IInspectable interface) =>
      IGeographicRegionStatics.fromPtr(
          interface.toInterface(IID_IGeographicRegionStatics));

  bool isSupported(String geographicRegionCode) {
    final retValuePtr = calloc<Bool>();

    try {
      final geographicRegionCodeHString = geographicRegionCode.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              IntPtr geographicRegionCode,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int geographicRegionCode,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, geographicRegionCodeHString, retValuePtr);

      WindowsDeleteString(geographicRegionCodeHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
