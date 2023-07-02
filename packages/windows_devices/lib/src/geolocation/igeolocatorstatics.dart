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

import 'geolocationaccessstatus.dart';
import 'geoposition.dart';

/// @nodoc
const IID_IGeolocatorStatics = '{9a8e7571-2df5-4591-9f87-eb5fd894e9b7}';

class IGeolocatorStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IGeolocatorStatics.fromPtr(super.ptr);

  factory IGeolocatorStatics.from(IInspectable interface) =>
      IGeolocatorStatics.fromPtr(interface.toInterface(IID_IGeolocatorStatics));

  Future<GeolocationAccessStatus> requestAccessAsync() {
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

    final asyncOperation = IAsyncOperation<GeolocationAccessStatus>.fromPtr(
        retValuePtr,
        enumCreator: GeolocationAccessStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<List<Geoposition?>> getGeopositionHistoryAsync(DateTime startTime) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 startTime,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int startTime,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, startTime.toWinRTDateTime(), retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<Geoposition?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: Geoposition.fromPtr,
            iterableIid: '{135ed72d-75b1-5881-be41-6ffeaa202044}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<Geoposition?>> getGeopositionHistoryWithDurationAsync(
      DateTime startTime, Duration duration) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 startTime,
                            Int64 duration, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int startTime, int duration,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        startTime.toWinRTDateTime(), duration.toWinRTDuration(), retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<Geoposition?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: Geoposition.fromPtr,
            iterableIid: '{135ed72d-75b1-5881-be41-6ffeaa202044}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}
