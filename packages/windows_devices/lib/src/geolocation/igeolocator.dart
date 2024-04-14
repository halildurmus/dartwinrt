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

import 'geolocator.dart';
import 'geoposition.dart';
import 'positionaccuracy.dart';
import 'positionstatus.dart';

/// @nodoc
const IID_IGeolocator = '{a9c3bf62-4524-4989-8aa9-de019d2e551f}';

class IGeolocator extends IInspectable {
  IGeolocator.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeolocatorVtbl>().ref;

  final _IGeolocatorVtbl _vtable;

  factory IGeolocator.from(IInspectable interface) =>
      interface.cast(IGeolocator.fromPtr, IID_IGeolocator);

  PositionAccuracy get desiredAccuracy {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_DesiredAccuracy.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PositionAccuracy.from(value.value);
    } finally {
      free(value);
    }
  }

  set desiredAccuracy(PositionAccuracy value) {
    final hr = _vtable.put_DesiredAccuracy
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get movementThreshold {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_MovementThreshold.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set movementThreshold(double value) {
    final hr = _vtable.put_MovementThreshold
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get reportInterval {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_ReportInterval.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set reportInterval(int value) {
    final hr = _vtable.put_ReportInterval
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  PositionStatus get locationStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LocationStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PositionStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<Geoposition?> getGeopositionAsync() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetGeopositionAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<Geoposition?>.fromPtr(value,
        tResultObjectCreator: Geoposition.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<Geoposition?> getGeopositionAsyncWithAgeAndTimeout(
      Duration maximumAge, Duration timeout) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetGeopositionAsyncWithAgeAndTimeout.asFunction<
            int Function(VTablePointer lpVtbl, int maximumAge, int timeout,
                Pointer<COMObject> value)>()(
        lpVtbl, maximumAge.toWinRTDuration(), timeout.toWinRTDuration(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<Geoposition?>.fromPtr(value,
        tResultObjectCreator: Geoposition.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  int add_PositionChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_PositionChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_PositionChanged(int token) {
    final hr = _vtable.remove_PositionChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_StatusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_StatusChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_StatusChanged(int token) {
    final hr = _vtable.remove_StatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IGeolocatorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_DesiredAccuracy;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_DesiredAccuracy;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_MovementThreshold;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_MovementThreshold;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_ReportInterval;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_ReportInterval;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LocationStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetGeopositionAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int64 maximumAge,
              Int64 timeout,
              Pointer<COMObject> value)>> GetGeopositionAsyncWithAgeAndTimeout;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_PositionChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_PositionChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_StatusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_StatusChanged;
}
