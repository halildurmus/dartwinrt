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

/// @nodoc
const IID_IPowerManagerStatics = '{1394825d-62ce-4364-98d5-aa28c7fbd15b}';

/// {@category interface}
class IPowerManagerStatics extends IInspectable {
  // vtable begins at 6, is 15 entries long.
  IPowerManagerStatics.fromRawPointer(super.ptr);

  factory IPowerManagerStatics.from(IInspectable interface) =>
      IPowerManagerStatics.fromRawPointer(
          interface.toInterface(IID_IPowerManagerStatics));

  EnergySaverStatus get energySaverStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return EnergySaverStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int add_EnergySaverStatusChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL handler, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL handler, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_EnergySaverStatusChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  BatteryStatus get batteryStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return BatteryStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int add_BatteryStatusChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL handler, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL handler, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_BatteryStatusChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  PowerSupplyStatus get powerSupplyStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PowerSupplyStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int add_PowerSupplyStatusChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL handler, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL handler, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_PowerSupplyStatusChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get remainingChargePercent {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int add_RemainingChargePercentChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL handler, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL handler, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_RemainingChargePercentChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(17)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Duration get remainingDischargeTime {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }

  int add_RemainingDischargeTimeChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL handler, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL handler, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_RemainingDischargeTimeChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(20)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
