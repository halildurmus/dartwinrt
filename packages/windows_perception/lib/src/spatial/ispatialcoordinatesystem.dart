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

import 'spatialcoordinatesystem.dart';

/// @nodoc
const IID_ISpatialCoordinateSystem = '{69ebca4b-60a3-3586-a653-59a7bd676d07}';

class ISpatialCoordinateSystem extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ISpatialCoordinateSystem.fromPtr(super.ptr);

  factory ISpatialCoordinateSystem.from(IInspectable interface) => interface
      .cast(ISpatialCoordinateSystem.fromPtr, IID_ISpatialCoordinateSystem);

  Matrix4x4? tryGetTransformTo(SpatialCoordinateSystem? target) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, VTablePointer target,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer target,
                Pointer<COMObject>
                    value)>()(ptr.ref.lpVtbl, target.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<Matrix4x4?>.fromPtr(value,
            referenceIid: '{dacbffdc-68ef-5fd0-b657-782d0ac9807e}')
        .value;
  }
}
