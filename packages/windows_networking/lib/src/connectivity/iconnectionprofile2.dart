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

import 'connectivityinterval.dart';
import 'datausagegranularity.dart';
import 'domainconnectivitylevel.dart';
import 'networkusage.dart';
import 'networkusagestates.dart';
import 'wlanconnectionprofiledetails.dart';
import 'wwanconnectionprofiledetails.dart';

/// @nodoc
const IID_IConnectionProfile2 = '{e2045145-4c9f-400c-9150-7ec7d6e2888a}';

/// {@category interface}
class IConnectionProfile2 extends IInspectable {
  // vtable begins at 6, is 9 entries long.
  IConnectionProfile2.fromPtr(super.ptr);

  factory IConnectionProfile2.from(IInspectable interface) =>
      IConnectionProfile2.fromPtr(
          interface.toInterface(IID_IConnectionProfile2));

  bool get isWwanConnectionProfile {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

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
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Bool> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return WwanConnectionProfileDetails.fromPtr(retValuePtr);
  }

  WlanConnectionProfileDetails? get wlanConnectionProfileDetails {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return WlanConnectionProfileDetails.fromPtr(retValuePtr);
  }

  Guid? get serviceProviderGuid {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(10)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<Guid?>.fromPtr(retValuePtr,
        referenceIid: '{7d50f649-632c-51f9-849a-ee49428933ea}');
    return reference.value;
  }

  int? getSignalBars() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<int?>.fromPtr(retValuePtr,
        referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}');
    return reference.value;
  }

  DomainConnectivityLevel getDomainConnectivityLevel() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

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
    final statesNativeStructPtr = states.toNative();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int64 startTime,
                            Int64 endTime,
                            Int32 granularity,
                            NativeNetworkUsageStates states,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int startTime,
                    int endTime,
                    int granularity,
                    NativeNetworkUsageStates states,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        granularity.value,
        statesNativeStructPtr.ref,
        retValuePtr);

    free(statesNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<NetworkUsage>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: NetworkUsage.fromPtr,
            iterableIid: '{dd2656b1-8360-5772-b272-c47f7f0fc7a6}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<ConnectivityInterval>> getConnectivityIntervalsAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final retValuePtr = calloc<COMObject>();
    final statesNativeStructPtr = states.toNative();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int64 startTime,
                            Int64 endTime,
                            NativeNetworkUsageStates states,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int startTime,
                    int endTime,
                    NativeNetworkUsageStates states,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        statesNativeStructPtr.ref,
        retValuePtr);

    free(statesNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ConnectivityInterval>>.fromPtr(retValuePtr,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: ConnectivityInterval.fromPtr,
                iterableIid: '{58051a8b-b259-5414-9b9a-caa0789e833e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}
