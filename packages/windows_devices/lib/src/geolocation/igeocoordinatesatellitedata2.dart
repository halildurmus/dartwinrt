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
const IID_IGeocoordinateSatelliteData2 =
    '{761c8cfd-a19d-5a51-80f5-71676115483e}';

class IGeocoordinateSatelliteData2 extends IInspectable {
  IGeocoordinateSatelliteData2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeocoordinateSatelliteData2Vtbl>().ref;

  final _IGeocoordinateSatelliteData2Vtbl _vtable;

  factory IGeocoordinateSatelliteData2.from(IInspectable interface) =>
      interface.cast(IGeocoordinateSatelliteData2.fromPtr,
          IID_IGeocoordinateSatelliteData2);

  double? get geometricDilutionOfPrecision {
    final value = calloc<COMObject>();

    final hr = _vtable.get_GeometricDilutionOfPrecision.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<double?>.fromPtr(value,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }

  double? get timeDilutionOfPrecision {
    final value = calloc<COMObject>();

    final hr = _vtable.get_TimeDilutionOfPrecision.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<double?>.fromPtr(value,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }
}

final class _IGeocoordinateSatelliteData2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_GeometricDilutionOfPrecision;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_TimeDilutionOfPrecision;
}
