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

import 'civicaddress.dart';
import 'geocoordinate.dart';

/// @nodoc
const IID_IGeoposition = '{c18d0454-7d41-4ff7-a957-9dffb4ef7f5b}';

class IGeoposition extends IInspectable {
  IGeoposition.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeopositionVtbl>().ref;

  final _IGeopositionVtbl _vtable;

  factory IGeoposition.from(IInspectable interface) =>
      interface.cast(IGeoposition.fromPtr, IID_IGeoposition);

  Geocoordinate? get coordinate {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Coordinate.asFunction<
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

    return Geocoordinate.fromPtr(value);
  }

  CivicAddress? get civicAddress {
    final value = calloc<COMObject>();

    final hr = _vtable.get_CivicAddress.asFunction<
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

    return CivicAddress.fromPtr(value);
  }
}

final class _IGeopositionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Coordinate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_CivicAddress;
}
