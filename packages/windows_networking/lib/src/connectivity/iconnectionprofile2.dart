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

import 'connectivityinterval.dart';
import 'datausagegranularity.dart';
import 'domainconnectivitylevel.dart';
import 'networkusage.dart';
import 'networkusagestates.dart';
import 'wlanconnectionprofiledetails.dart';
import 'wwanconnectionprofiledetails.dart';

/// @nodoc
const IID_IConnectionProfile2 = '{e2045145-4c9f-400c-9150-7ec7d6e2888a}';

class IConnectionProfile2 extends IInspectable {
  // vtable begins at 6, is 9 entries long.
  IConnectionProfile2.fromPtr(super.ptr);

  factory IConnectionProfile2.from(IInspectable interface) =>
      interface.cast(IConnectionProfile2.fromPtr, IID_IConnectionProfile2);

  bool get isWwanConnectionProfile {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get isWlanConnectionProfile {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  WwanConnectionProfileDetails? get wwanConnectionProfileDetails {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return WwanConnectionProfileDetails.fromPtr(value);
  }

  WlanConnectionProfileDetails? get wlanConnectionProfileDetails {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return WlanConnectionProfileDetails.fromPtr(value);
  }

  Guid? get serviceProviderGuid {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<Guid?>.fromPtr(value,
            referenceIid: '{7d50f649-632c-51f9-849a-ee49428933ea}')
        .value;
  }

  int? getSignalBars() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<int?>.fromPtr(value,
            referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}')
        .value;
  }

  DomainConnectivityLevel getDomainConnectivityLevel() {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DomainConnectivityLevel.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<List<NetworkUsage?>> getNetworkUsageAsync(
      DateTime startTime,
      DateTime endTime,
      DataUsageGranularity granularity,
      NetworkUsageStates states) {
    final value = calloc<COMObject>();
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
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int startTime,
                    int endTime,
                    int granularity,
                    NativeNetworkUsageStates states,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        granularity.value,
        statesNativeStructPtr.ref,
        value);

    free(statesNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<NetworkUsage?>>.fromPtr(
        value,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: NetworkUsage.fromPtr,
            iterableIid: '{dd2656b1-8360-5772-b272-c47f7f0fc7a6}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<ConnectivityInterval?>> getConnectivityIntervalsAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final value = calloc<COMObject>();
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
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int startTime,
                    int endTime,
                    NativeNetworkUsageStates states,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        startTime.toWinRTDateTime(),
        endTime.toWinRTDateTime(),
        statesNativeStructPtr.ref,
        value);

    free(statesNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ConnectivityInterval?>>.fromPtr(value,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: ConnectivityInterval.fromPtr,
                iterableIid: '{58051a8b-b259-5414-9b9a-caa0789e833e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}
