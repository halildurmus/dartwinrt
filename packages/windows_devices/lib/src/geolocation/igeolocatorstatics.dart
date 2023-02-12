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
import 'geoposition.dart';

/// @nodoc
const IID_IGeolocatorStatics = '{9a8e7571-2df5-4591-9f87-eb5fd894e9b7}';

/// {@category interface}
class IGeolocatorStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IGeolocatorStatics.fromRawPointer(super.ptr);

  factory IGeolocatorStatics.from(IInspectable interface) =>
      IGeolocatorStatics.fromRawPointer(
          interface.toInterface(IID_IGeolocatorStatics));

  Future<GeolocationAccessStatus> requestAccessAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<GeolocationAccessStatus>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<GeolocationAccessStatus>.fromRawPointer(retValuePtr,
            enumCreator: GeolocationAccessStatus.from);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<List<Geoposition>> getGeopositionHistoryAsync(DateTime startTime) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<Geoposition>>();
    final startTimeDateTime =
        startTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, Uint64 startTime, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int startTime, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, startTimeDateTime, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<Geoposition>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: Geoposition.fromRawPointer,
                iterableIid: '{135ed72d-75b1-5881-be41-6ffeaa202044}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<Geoposition>> getGeopositionHistoryWithDurationAsync(
      DateTime startTime, Duration duration) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<Geoposition>>();
    final startTimeDateTime =
        startTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final durationDuration = duration.inMicroseconds * 10;

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(Pointer, Uint64 startTime,
                                Uint64 duration, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(Pointer, int startTime, int duration,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl, startTimeDateTime, durationDuration, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<Geoposition>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: Geoposition.fromRawPointer,
                iterableIid: '{135ed72d-75b1-5881-be41-6ffeaa202044}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }
}
