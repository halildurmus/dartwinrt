// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'geographicregion.dart';

/// @nodoc
const IID_IGeographicRegionFactory = '{53425270-77b4-426b-859f-81e19d512546}';

class IGeographicRegionFactory extends IInspectable {
  IGeographicRegionFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeographicRegionFactoryVtbl>().ref;

  final _IGeographicRegionFactoryVtbl _vtable;

  factory IGeographicRegionFactory.from(IInspectable interface) => interface
      .cast(IGeographicRegionFactory.fromPtr, IID_IGeographicRegionFactory);

  GeographicRegion createGeographicRegion(String geographicRegionCode) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateGeographicRegion.asFunction<
            int Function(VTablePointer lpVtbl, int geographicRegionCode,
                Pointer<COMObject> result)>()(
        lpVtbl, geographicRegionCode.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return GeographicRegion.fromPtr(result);
  }
}

final class _IGeographicRegionFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr geographicRegionCode,
              Pointer<COMObject> result)>> CreateGeographicRegion;
}
