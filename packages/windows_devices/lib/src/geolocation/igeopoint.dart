// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'igeoshape.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IGeopoint = '{6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef}';

/// {@category interface}
class IGeopoint extends IInspectable implements IGeoshape {
  // vtable begins at 6, is 1 entries long.
  IGeopoint.fromRawPointer(super.ptr);

  factory IGeopoint.from(IInspectable interface) =>
      IGeopoint.fromRawPointer(interface.toInterface(IID_IGeopoint));

  BasicGeoposition get position {
    final retValuePtr = calloc<BasicGeoposition>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Pointer<BasicGeoposition>)>>>()
            .value
            .asFunction<int Function(LPVTBL, Pointer<BasicGeoposition>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr.ref;
  }

  // IGeoshape methods
  late final _iGeoshape = IGeoshape.from(this);

  @override
  GeoshapeType get geoshapeType => _iGeoshape.geoshapeType;

  @override
  int get spatialReferenceId => _iGeoshape.spatialReferenceId;

  @override
  AltitudeReferenceSystem get altitudeReferenceSystem =>
      _iGeoshape.altitudeReferenceSystem;
}
