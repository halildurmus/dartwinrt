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

import 'altitudereferencesystem.dart';
import 'basicgeoposition.dart';
import 'geoshapetype.dart';
import 'igeoshape.dart';

/// @nodoc
const IID_IGeopoint = '{6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef}';

class IGeopoint extends IInspectable implements IGeoshape {
  IGeopoint.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeopointVtbl>().ref;

  final _IGeopointVtbl _vtable;

  factory IGeopoint.from(IInspectable interface) =>
      interface.cast(IGeopoint.fromPtr, IID_IGeopoint);

  BasicGeoposition get position {
    final value = calloc<NativeBasicGeoposition>();

    try {
      final hr = _vtable.get_Position.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeBasicGeoposition> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  late final _iGeoshape = IGeoshape.from(this);

  @override
  GeoshapeType get geoshapeType => _iGeoshape.geoshapeType;

  @override
  int get spatialReferenceId => _iGeoshape.spatialReferenceId;

  @override
  AltitudeReferenceSystem get altitudeReferenceSystem =>
      _iGeoshape.altitudeReferenceSystem;
}

final class _IGeopointVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeBasicGeoposition> value)>>
      get_Position;
}
