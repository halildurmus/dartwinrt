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

import 'connectioncost.dart';
import 'dataplanstatus.dart';
import 'datausage.dart';
import 'enums.g.dart';
import 'networkadapter.dart';
import 'networksecuritysettings.dart';

/// @nodoc
const IID_IConnectionProfile = '{71ba143c-598e-49d0-84eb-8febaedcc195}';

/// {@category interface}
class IConnectionProfile extends IInspectable {
  // vtable begins at 6, is 9 entries long.
  IConnectionProfile.fromRawPointer(super.ptr);

  factory IConnectionProfile.from(IInspectable interface) =>
      IConnectionProfile.fromRawPointer(
          interface.toInterface(IID_IConnectionProfile));

  String get profileName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  NetworkConnectivityLevel getNetworkConnectivityLevel() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
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

      return NetworkConnectivityLevel.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  List<String> getNetworkNames() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
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

    final vectorView = IVectorView<String>.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  ConnectionCost? getConnectionCost() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ConnectionCost.fromRawPointer(retValuePtr);
  }

  DataPlanStatus? getDataPlanStatus() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DataPlanStatus.fromRawPointer(retValuePtr);
  }

  NetworkAdapter? get networkAdapter {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return NetworkAdapter.fromRawPointer(retValuePtr);
  }

  DataUsage? getLocalUsage(DateTime StartTime, DateTime EndTime) {
    final retValuePtr = calloc<COMObject>();
    final StartTimeDateTime =
        StartTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final EndTimeDateTime =
        EndTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int64 StartTime,
                            Int64 EndTime, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int StartTime, int EndTime,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, StartTimeDateTime, EndTimeDateTime, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DataUsage.fromRawPointer(retValuePtr);
  }

  DataUsage? getLocalUsagePerRoamingStates(
      DateTime StartTime, DateTime EndTime, RoamingStates States) {
    final retValuePtr = calloc<COMObject>();
    final StartTimeDateTime =
        StartTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final EndTimeDateTime =
        EndTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int64 StartTime,
                            Int64 EndTime,
                            Uint32 States,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int StartTime, int EndTime,
                    int States, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        StartTimeDateTime,
        EndTimeDateTime,
        States.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DataUsage.fromRawPointer(retValuePtr);
  }

  NetworkSecuritySettings? get networkSecuritySettings {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(14)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return NetworkSecuritySettings.fromRawPointer(retValuePtr);
  }
}
