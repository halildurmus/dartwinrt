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

import 'civicaddress.dart';
import 'geocoordinate.dart';
import 'igeoposition.dart';
import 'venuedata.dart';

/// @nodoc
const IID_IGeoposition2 = '{7f62f697-8671-4b0d-86f8-474a8496187c}';

class IGeoposition2 extends IInspectable implements IGeoposition {
  IGeoposition2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeoposition2Vtbl>().ref;

  final _IGeoposition2Vtbl _vtable;

  factory IGeoposition2.from(IInspectable interface) =>
      interface.cast(IGeoposition2.fromPtr, IID_IGeoposition2);

  VenueData? get venueData {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VenueData.asFunction<
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

    return VenueData.fromPtr(value);
  }

  late final _iGeoposition = IGeoposition.from(this);

  @override
  Geocoordinate? get coordinate => _iGeoposition.coordinate;

  @override
  CivicAddress? get civicAddress => _iGeoposition.civicAddress;
}

final class _IGeoposition2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VenueData;
}
