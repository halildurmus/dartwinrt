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

/// @nodoc
const IID_IGeocoordinateSatelliteData2 =
    '{761c8cfd-a19d-5a51-80f5-71676115483e}';

class IGeocoordinateSatelliteData2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IGeocoordinateSatelliteData2.fromPtr(super.ptr);

  factory IGeocoordinateSatelliteData2.from(IInspectable interface) =>
      IGeocoordinateSatelliteData2.fromPtr(
          interface.toInterface(IID_IGeocoordinateSatelliteData2));

  double? get geometricDilutionOfPrecision {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<double?>.fromPtr(retValuePtr,
        referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}');
    return reference.value;
  }

  double? get timeDilutionOfPrecision {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<double?>.fromPtr(retValuePtr,
        referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}');
    return reference.value;
  }
}
