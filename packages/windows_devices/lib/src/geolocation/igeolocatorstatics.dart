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

import 'geolocationaccessstatus.dart';
import 'geoposition.dart';

/// @nodoc
const IID_IGeolocatorStatics = '{9a8e7571-2df5-4591-9f87-eb5fd894e9b7}';

class IGeolocatorStatics extends IInspectable {
  IGeolocatorStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeolocatorStaticsVtbl>().ref;

  final _IGeolocatorStaticsVtbl _vtable;

  factory IGeolocatorStatics.from(IInspectable interface) =>
      interface.cast(IGeolocatorStatics.fromPtr, IID_IGeolocatorStatics);

  Future<GeolocationAccessStatus> requestAccessAsync() {
    final result = calloc<COMObject>();

    final hr = _vtable.RequestAccessAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<GeolocationAccessStatus>.fromPtr(
        result,
        tResultEnumCreator: GeolocationAccessStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<List<Geoposition?>> getGeopositionHistoryAsync(DateTime startTime) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetGeopositionHistoryAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startTime,
                Pointer<COMObject> result)>()(
        lpVtbl, startTime.toWinRTDateTime(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<Geoposition?>>.fromPtr(
        result,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{135ed72d-75b1-5881-be41-6ffeaa202044}',
            tObjectCreator: Geoposition.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<Geoposition?>> getGeopositionHistoryWithDurationAsync(
      DateTime startTime, Duration duration) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetGeopositionHistoryWithDurationAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startTime, int duration,
                Pointer<COMObject> result)>()(lpVtbl,
        startTime.toWinRTDateTime(), duration.toWinRTDuration(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<Geoposition?>>.fromPtr(
        result,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{135ed72d-75b1-5881-be41-6ffeaa202044}',
            tObjectCreator: Geoposition.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}

final class _IGeolocatorStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      RequestAccessAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 startTime,
              Pointer<COMObject> result)>> GetGeopositionHistoryAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int64 startTime,
                  Int64 duration, Pointer<COMObject> result)>>
      GetGeopositionHistoryWithDurationAsync;
}
