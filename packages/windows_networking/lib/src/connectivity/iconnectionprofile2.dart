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

import 'connectivityinterval.dart';
import 'enums.g.dart';
import 'networkusage.dart';
import 'structs.g.dart';
import 'wlanconnectionprofiledetails.dart';
import 'wwanconnectionprofiledetails.dart';

/// @nodoc
const IID_IConnectionProfile2 = '{e2045145-4c9f-400c-9150-7ec7d6e2888a}';

/// {@category interface}
class IConnectionProfile2 extends IInspectable {
  // vtable begins at 6, is 9 entries long.
  IConnectionProfile2.fromRawPointer(super.ptr);

  factory IConnectionProfile2.from(IInspectable interface) =>
      IConnectionProfile2.fromRawPointer(
          interface.toInterface(IID_IConnectionProfile2));

  bool get isWwanConnectionProfile {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  bool get isWlanConnectionProfile {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  WwanConnectionProfileDetails? get wwanConnectionProfileDetails {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return WwanConnectionProfileDetails.fromRawPointer(retValuePtr);
  }

  WlanConnectionProfileDetails? get wlanConnectionProfileDetails {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return WlanConnectionProfileDetails.fromRawPointer(retValuePtr);
  }

  Guid? get serviceProviderGuid {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<Guid?>.fromRawPointer(retValuePtr,
        referenceIid: '{7d50f649-632c-51f9-849a-ee49428933ea}');
    final value = reference.value;
    reference.release();

    return value;
  }

  int? getSignalBars() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<int?>.fromRawPointer(retValuePtr,
        referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}');
    final value = reference.value;
    reference.release();

    return value;
  }

  DomainConnectivityLevel getDomainConnectivityLevel() {
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

      return DomainConnectivityLevel.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  Future<List<NetworkUsage>> getNetworkUsageAsync(
      DateTime startTime,
      DateTime endTime,
      DataUsageGranularity granularity,
      NetworkUsageStates states) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<NetworkUsage>>();
    final startTimeDateTime =
        startTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final endTimeDateTime =
        endTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL,
                            Uint64 startTime,
                            Uint64 endTime,
                            Int32 granularity,
                            NetworkUsageStates states,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL,
                    int startTime,
                    int endTime,
                    int granularity,
                    NetworkUsageStates states,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl, startTimeDateTime,
        endTimeDateTime, granularity.value, states, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<NetworkUsage>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: NetworkUsage.fromRawPointer,
                iterableIid: '{dd2656b1-8360-5772-b272-c47f7f0fc7a6}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<ConnectivityInterval>> getConnectivityIntervalsAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<ConnectivityInterval>>();
    final startTimeDateTime =
        startTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    final endTimeDateTime =
        endTime.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    final hr =
        ptr.ref.vtable
                .elementAt(14)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL,
                                Uint64 startTime,
                                Uint64 endTime,
                                NetworkUsageStates states,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, int startTime, int endTime,
                        NetworkUsageStates states, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            startTimeDateTime,
            endTimeDateTime,
            states,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ConnectivityInterval>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: ConnectivityInterval.fromRawPointer,
                iterableIid: '{58051a8b-b259-5414-9b9a-caa0789e833e}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }
}
