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
const IID_IGeocoordinateSatelliteData =
    '{c32a74d9-2608-474c-912c-06dd490f4af7}';

class IGeocoordinateSatelliteData extends IInspectable {
  IGeocoordinateSatelliteData.fromPtr(super.ptr);

  factory IGeocoordinateSatelliteData.from(IInspectable interface) =>
      interface.cast(
          IGeocoordinateSatelliteData.fromPtr, IID_IGeocoordinateSatelliteData);

  double? get positionDilutionOfPrecision {
    final ppValue = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> ppValue)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> ppValue)>()(lpVtbl, ppValue);

    if (FAILED(hr)) {
      free(ppValue);
      throwWindowsException(hr);
    }

    if (ppValue.isNull) {
      free(ppValue);
      return null;
    }

    return IReference<double?>.fromPtr(ppValue,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }

  double? get horizontalDilutionOfPrecision {
    final ppValue = calloc<COMObject>();

    final hr = vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> ppValue)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> ppValue)>()(lpVtbl, ppValue);

    if (FAILED(hr)) {
      free(ppValue);
      throwWindowsException(hr);
    }

    if (ppValue.isNull) {
      free(ppValue);
      return null;
    }

    return IReference<double?>.fromPtr(ppValue,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }

  double? get verticalDilutionOfPrecision {
    final ppValue = calloc<COMObject>();

    final hr = vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> ppValue)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> ppValue)>()(lpVtbl, ppValue);

    if (FAILED(hr)) {
      free(ppValue);
      throwWindowsException(hr);
    }

    if (ppValue.isNull) {
      free(ppValue);
      return null;
    }

    return IReference<double?>.fromPtr(ppValue,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }
}
