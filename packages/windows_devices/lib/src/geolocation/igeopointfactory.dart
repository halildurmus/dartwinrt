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
import 'geopoint.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IGeopointFactory = '{db6b8d33-76bd-4e30-8af7-a844dc37b7a0}';

/// {@category interface}
class IGeopointFactory extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IGeopointFactory.fromRawPointer(super.ptr);

  factory IGeopointFactory.from(IInspectable interface) =>
      IGeopointFactory.fromRawPointer(
          interface.toInterface(IID_IGeopointFactory));

  Geopoint create(BasicGeoposition position) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL, BasicGeoposition position,
                        Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, BasicGeoposition position,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, position, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromRawPointer(retValuePtr);
  }

  Geopoint createWithAltitudeReferenceSystem(BasicGeoposition position,
      AltitudeReferenceSystem altitudeReferenceSystem) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL,
                                BasicGeoposition position,
                                Int32 altitudeReferenceSystem,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, BasicGeoposition position,
                        int altitudeReferenceSystem, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            position,
            altitudeReferenceSystem.value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromRawPointer(retValuePtr);
  }

  Geopoint createWithAltitudeReferenceSystemAndSpatialReferenceId(
      BasicGeoposition position,
      AltitudeReferenceSystem altitudeReferenceSystem,
      int spatialReferenceId) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL,
                            BasicGeoposition position,
                            Int32 altitudeReferenceSystem,
                            Uint32 spatialReferenceId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL,
                    BasicGeoposition position,
                    int altitudeReferenceSystem,
                    int spatialReferenceId,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl, position,
        altitudeReferenceSystem.value, spatialReferenceId, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromRawPointer(retValuePtr);
  }
}
