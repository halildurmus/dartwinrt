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

import '../endpointpair.dart';
import '../hostname.dart';
import '../hostnamesortoptions.dart';
import 'connectionprofile.dart';
import 'lanidentifier.dart';
import 'proxyconfiguration.dart';

/// @nodoc
const IID_INetworkInformationStatics = '{5074f851-950d-4165-9c15-365619481eea}';

class INetworkInformationStatics extends IInspectable {
  INetworkInformationStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INetworkInformationStaticsVtbl>().ref;

  final _INetworkInformationStaticsVtbl _vtable;

  factory INetworkInformationStatics.from(IInspectable interface) => interface
      .cast(INetworkInformationStatics.fromPtr, IID_INetworkInformationStatics);

  List<ConnectionProfile?> getConnectionProfiles() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetConnectionProfiles.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<ConnectionProfile?>.fromPtr(value,
            iterableIid: '{34dabef9-87d0-5b1c-a7ac-9d290adeb0c8}',
            tObjectCreator: ConnectionProfile.fromPtr)
        .toList();
  }

  ConnectionProfile? getInternetConnectionProfile() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetInternetConnectionProfile.asFunction<
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

    return ConnectionProfile.fromPtr(value);
  }

  List<LanIdentifier?> getLanIdentifiers() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetLanIdentifiers.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<LanIdentifier?>.fromPtr(value,
            iterableIid: '{accef3cd-5d92-5c01-8ac4-79fe74cd733e}',
            tObjectCreator: LanIdentifier.fromPtr)
        .toList();
  }

  List<HostName?> getHostNames() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetHostNames.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<HostName?>.fromPtr(value,
            iterableIid: '{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}',
            tObjectCreator: HostName.fromPtr)
        .toList();
  }

  Future<ProxyConfiguration?> getProxyConfigurationAsync(Uri? uri) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetProxyConfigurationAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                Pointer<COMObject> value)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ProxyConfiguration?>.fromPtr(value,
        tResultObjectCreator: ProxyConfiguration.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  List<EndpointPair?> getSortedEndpointPairs(
      IIterable<EndpointPair?>? destinationList,
      HostNameSortOptions sortOptions) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetSortedEndpointPairs.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer destinationList,
                int sortOptions, Pointer<COMObject> value)>()(
        lpVtbl, destinationList.lpVtbl, sortOptions.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<EndpointPair?>.fromPtr(value,
            iterableIid: '{d7ec83c4-a17b-51bf-8997-aa33b9102dc9}',
            tObjectCreator: EndpointPair.fromPtr)
        .toList();
  }

  int add_NetworkStatusChanged(Pointer<COMObject> networkStatusHandler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_NetworkStatusChanged.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  VTablePointer networkStatusHandler,
                  Pointer<IntPtr> eventCookie)>()(
          lpVtbl, networkStatusHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_NetworkStatusChanged(int eventCookie) {
    final hr = _vtable.remove_NetworkStatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _INetworkInformationStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetConnectionProfiles;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetInternetConnectionProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetLanIdentifiers;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetHostNames;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
              Pointer<COMObject> value)>> GetProxyConfigurationAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer destinationList,
              Uint32 sortOptions,
              Pointer<COMObject> value)>> GetSortedEndpointPairs;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer networkStatusHandler,
              Pointer<IntPtr> eventCookie)>> add_NetworkStatusChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr eventCookie)>>
      remove_NetworkStatusChanged;
}
