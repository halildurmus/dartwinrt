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
  IConnectionProfile2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfile2Vtbl>().ref;

  final _IConnectionProfile2Vtbl _vtable;

  factory IConnectionProfile2.from(IInspectable interface) =>
      interface.cast(IConnectionProfile2.fromPtr, IID_IConnectionProfile2);

  bool get isWwanConnectionProfile {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsWwanConnectionProfile.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get isWlanConnectionProfile {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsWlanConnectionProfile.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  WwanConnectionProfileDetails? get wwanConnectionProfileDetails {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WwanConnectionProfileDetails.asFunction<
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

    return WwanConnectionProfileDetails.fromPtr(value);
  }

  WlanConnectionProfileDetails? get wlanConnectionProfileDetails {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WlanConnectionProfileDetails.asFunction<
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

    return WlanConnectionProfileDetails.fromPtr(value);
  }

  Guid? get serviceProviderGuid {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ServiceProviderGuid.asFunction<
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

    return IReference<Guid?>.fromPtr(value,
            referenceIid: '{7d50f649-632c-51f9-849a-ee49428933ea}')
        .value;
  }

  int? getSignalBars() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetSignalBars.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}')
        .value;
  }

  DomainConnectivityLevel getDomainConnectivityLevel() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetDomainConnectivityLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

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

    final hr = _vtable.GetNetworkUsageAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int startTime,
                int endTime,
                int granularity,
                NativeNetworkUsageStates states,
                Pointer<COMObject> value)>()(
        lpVtbl,
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
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{dd2656b1-8360-5772-b272-c47f7f0fc7a6}',
            tObjectCreator: NetworkUsage.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<ConnectivityInterval?>> getConnectivityIntervalsAsync(
      DateTime startTime, DateTime endTime, NetworkUsageStates states) {
    final value = calloc<COMObject>();
    final statesNativeStructPtr = states.toNative();

    final hr = _vtable.GetConnectivityIntervalsAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startTime, int endTime,
                NativeNetworkUsageStates states, Pointer<COMObject> value)>()(
        lpVtbl,
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
            tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
                iterableIid: '{58051a8b-b259-5414-9b9a-caa0789e833e}',
                tObjectCreator: ConnectivityInterval.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}

final class _IConnectionProfile2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsWwanConnectionProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsWlanConnectionProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WwanConnectionProfileDetails;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WlanConnectionProfileDetails;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ServiceProviderGuid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetSignalBars;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetDomainConnectivityLevel;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int64 startTime,
              Int64 endTime,
              Int32 granularity,
              NativeNetworkUsageStates states,
              Pointer<COMObject> value)>> GetNetworkUsageAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int64 startTime,
              Int64 endTime,
              NativeNetworkUsageStates states,
              Pointer<COMObject> value)>> GetConnectivityIntervalsAsync;
}
