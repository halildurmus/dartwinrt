// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'altitudereferencesystem.dart';
import 'basicgeoposition.dart';
import 'geopoint.dart';

/// @nodoc
const IID_IGeopointFactory = '{db6b8d33-76bd-4e30-8af7-a844dc37b7a0}';

/// {@category interface}
class IGeopointFactory extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IGeopointFactory.fromPtr(super.ptr);

  factory IGeopointFactory.from(IInspectable interface) =>
      IGeopointFactory.fromPtr(interface.toInterface(IID_IGeopointFactory));

  Geopoint create(BasicGeoposition position) {
    final retValuePtr = calloc<COMObject>();
    final positionNativeStructPtr = position.toNative();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            NativeBasicGeoposition position,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, NativeBasicGeoposition position,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, positionNativeStructPtr.ref, retValuePtr);

    free(positionNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromPtr(retValuePtr);
  }

  Geopoint createWithAltitudeReferenceSystem(BasicGeoposition position,
      AltitudeReferenceSystem altitudeReferenceSystem) {
    final retValuePtr = calloc<COMObject>();
    final positionNativeStructPtr = position.toNative();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            NativeBasicGeoposition position,
                            Int32 altitudeReferenceSystem,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    NativeBasicGeoposition position,
                    int altitudeReferenceSystem,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        positionNativeStructPtr.ref,
        altitudeReferenceSystem.value,
        retValuePtr);

    free(positionNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromPtr(retValuePtr);
  }

  Geopoint createWithAltitudeReferenceSystemAndSpatialReferenceId(
      BasicGeoposition position,
      AltitudeReferenceSystem altitudeReferenceSystem,
      int spatialReferenceId) {
    final retValuePtr = calloc<COMObject>();
    final positionNativeStructPtr = position.toNative();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            NativeBasicGeoposition position,
                            Int32 altitudeReferenceSystem,
                            Uint32 spatialReferenceId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    NativeBasicGeoposition position,
                    int altitudeReferenceSystem,
                    int spatialReferenceId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        positionNativeStructPtr.ref,
        altitudeReferenceSystem.value,
        spatialReferenceId,
        retValuePtr);

    free(positionNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Geopoint.fromPtr(retValuePtr);
  }
}
