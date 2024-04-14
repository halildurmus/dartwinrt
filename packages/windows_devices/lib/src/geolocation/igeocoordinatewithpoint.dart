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

import 'geopoint.dart';

/// @nodoc
const IID_IGeocoordinateWithPoint = '{feea0525-d22c-4d46-b527-0b96066fc7db}';

class IGeocoordinateWithPoint extends IInspectable {
  IGeocoordinateWithPoint.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeocoordinateWithPointVtbl>().ref;

  final _IGeocoordinateWithPointVtbl _vtable;

  factory IGeocoordinateWithPoint.from(IInspectable interface) => interface
      .cast(IGeocoordinateWithPoint.fromPtr, IID_IGeocoordinateWithPoint);

  Geopoint? get point {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Point.asFunction<
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

    return Geopoint.fromPtr(value);
  }
}

final class _IGeocoordinateWithPointVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Point;
}
