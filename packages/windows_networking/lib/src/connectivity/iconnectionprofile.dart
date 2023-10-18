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

import 'connectioncost.dart';
import 'dataplanstatus.dart';
import 'datausage.dart';
import 'networkadapter.dart';
import 'networkconnectivitylevel.dart';
import 'networksecuritysettings.dart';
import 'roamingstates.dart';

/// @nodoc
const IID_IConnectionProfile = '{71ba143c-598e-49d0-84eb-8febaedcc195}';

class IConnectionProfile extends IInspectable {
  IConnectionProfile.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfileVtbl>().ref;

  final _IConnectionProfileVtbl _vtable;

  factory IConnectionProfile.from(IInspectable interface) =>
      interface.cast(IConnectionProfile.fromPtr, IID_IConnectionProfile);

  String get profileName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ProfileName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  NetworkConnectivityLevel getNetworkConnectivityLevel() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetNetworkConnectivityLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NetworkConnectivityLevel.from(value.value);
    } finally {
      free(value);
    }
  }

  List<String> getNetworkNames() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetNetworkNames.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }

  ConnectionCost? getConnectionCost() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetConnectionCost.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ConnectionCost.fromPtr(value);
  }

  DataPlanStatus? getDataPlanStatus() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetDataPlanStatus.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return DataPlanStatus.fromPtr(value);
  }

  NetworkAdapter? get networkAdapter {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NetworkAdapter.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return NetworkAdapter.fromPtr(value);
  }

  @Deprecated(
      "GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
  DataUsage? getLocalUsage(DateTime startTime, DateTime endTime) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetLocalUsage.asFunction<
            int Function(VTablePointer lpVtbl, int startTime, int endTime,
                Pointer<COMObject> value)>()(
        lpVtbl, startTime.toWinRTDateTime(), endTime.toWinRTDateTime(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return DataUsage.fromPtr(value);
  }

  @Deprecated(
      "GetLocalUsage may be altered or unavailable for releases after Windows 8.1. Instead, use GetNetworkUsageAsync.")
  DataUsage? getLocalUsagePerRoamingStates(
      DateTime startTime, DateTime endTime, RoamingStates states) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetLocalUsagePerRoamingStates.asFunction<
            int Function(VTablePointer lpVtbl, int startTime, int endTime,
                int states, Pointer<COMObject> value)>()(
        lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        states.value,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return DataUsage.fromPtr(value);
  }

  NetworkSecuritySettings? get networkSecuritySettings {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NetworkSecuritySettings.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return NetworkSecuritySettings.fromPtr(value);
  }
}

final class _IConnectionProfileVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ProfileName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetNetworkConnectivityLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetNetworkNames;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetConnectionCost;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetDataPlanStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NetworkAdapter;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int64 startTime, Int64 endTime,
              Pointer<COMObject> value)>> GetLocalUsage;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int64 startTime,
              Int64 endTime,
              Uint32 states,
              Pointer<COMObject> value)>> GetLocalUsagePerRoamingStates;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NetworkSecuritySettings;
}
