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

import 'batterystatus.dart';
import 'energysaverstatus.dart';
import 'powersupplystatus.dart';

/// @nodoc
const IID_IPowerManagerStatics = '{1394825d-62ce-4364-98d5-aa28c7fbd15b}';

class IPowerManagerStatics extends IInspectable {
  IPowerManagerStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPowerManagerStaticsVtbl>().ref;

  final _IPowerManagerStaticsVtbl _vtable;

  factory IPowerManagerStatics.from(IInspectable interface) =>
      interface.cast(IPowerManagerStatics.fromPtr, IID_IPowerManagerStatics);

  EnergySaverStatus get energySaverStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_EnergySaverStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return EnergySaverStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  int add_EnergySaverStatusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_EnergySaverStatusChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_EnergySaverStatusChanged(int token) {
    final hr = _vtable.remove_EnergySaverStatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  BatteryStatus get batteryStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_BatteryStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BatteryStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  int add_BatteryStatusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_BatteryStatusChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_BatteryStatusChanged(int token) {
    final hr = _vtable.remove_BatteryStatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  PowerSupplyStatus get powerSupplyStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PowerSupplyStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PowerSupplyStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  int add_PowerSupplyStatusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_PowerSupplyStatusChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_PowerSupplyStatusChanged(int token) {
    final hr = _vtable.remove_PowerSupplyStatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get remainingChargePercent {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_RemainingChargePercent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_RemainingChargePercentChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_RemainingChargePercentChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_RemainingChargePercentChanged(int token) {
    final hr = _vtable.remove_RemainingChargePercentChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Duration get remainingDischargeTime {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_RemainingDischargeTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
  }

  int add_RemainingDischargeTimeChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_RemainingDischargeTimeChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_RemainingDischargeTimeChanged(int token) {
    final hr = _vtable.remove_RemainingDischargeTimeChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IPowerManagerStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_EnergySaverStatus;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_EnergySaverStatusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_EnergySaverStatusChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_BatteryStatus;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_BatteryStatusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_BatteryStatusChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PowerSupplyStatus;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_PowerSupplyStatusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_PowerSupplyStatusChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_RemainingChargePercent;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_RemainingChargePercentChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_RemainingChargePercentChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_RemainingDischargeTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_RemainingDischargeTimeChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_RemainingDischargeTimeChanged;
}
