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

import 'geographicregion.dart';

/// @nodoc
const IID_IGeographicRegionFactory = '{53425270-77b4-426b-859f-81e19d512546}';

/// {@category interface}
class IGeographicRegionFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeographicRegionFactory.fromPtr(super.ptr);

  factory IGeographicRegionFactory.from(IInspectable interface) =>
      IGeographicRegionFactory.fromPtr(
          interface.toInterface(IID_IGeographicRegionFactory));

  GeographicRegion createGeographicRegion(String geographicRegionCode) {
    final retValuePtr = calloc<COMObject>();
    final geographicRegionCodeHString = geographicRegionCode.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr geographicRegionCode,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int geographicRegionCode,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, geographicRegionCodeHString, retValuePtr);

    WindowsDeleteString(geographicRegionCodeHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return GeographicRegion.fromPtr(retValuePtr);
  }
}
