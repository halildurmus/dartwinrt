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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'geolocator.dart';
import 'geoposition.dart';

/// @nodoc
const IID_IGeolocator = '{a9c3bf62-4524-4989-8aa9-de019d2e551f}';

/// {@category interface}
class IGeolocator extends IInspectable {
  // vtable begins at 6, is 13 entries long.
  IGeolocator.fromRawPointer(super.ptr);

  factory IGeolocator.from(IInspectable interface) =>
      IGeolocator.fromRawPointer(interface.toInterface(IID_IGeolocator));

  PositionAccuracy get desiredAccuracy {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PositionAccuracy.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set desiredAccuracy(PositionAccuracy value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int32 value)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL lpVtbl, int value)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get movementThreshold {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Double> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Double> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set movementThreshold(double value) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Double value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, double value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get reportInterval {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set reportInterval(int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint32 value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  PositionStatus get locationStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PositionStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  Future<Geoposition?> getGeopositionAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<Geoposition?>();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<Geoposition?>.fromRawPointer(
        retValuePtr,
        creator: Geoposition.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<Geoposition?> getGeopositionAsyncWithAgeAndTimeout(
      Duration maximumAge, Duration timeout) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<Geoposition?>();
    final maximumAgeDuration = maximumAge.inMicroseconds * 10;
    final timeoutDuration = timeout.inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint64 maximumAge,
                            Uint64 timeout, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int maximumAge, int timeout,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, maximumAgeDuration, timeoutDuration, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<Geoposition?>.fromRawPointer(
        retValuePtr,
        creator: Geoposition.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  int add_PositionChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_PositionChanged(int token) {
    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr token)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int token)>()(
        ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_StatusChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_StatusChanged(int token) {
    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr token)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int token)>()(
        ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
