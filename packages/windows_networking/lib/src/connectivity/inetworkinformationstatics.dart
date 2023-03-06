// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
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

/// {@category interface}
class INetworkInformationStatics extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  INetworkInformationStatics.fromPtr(super.ptr);

  factory INetworkInformationStatics.from(IInspectable interface) =>
      INetworkInformationStatics.fromPtr(
          interface.toInterface(IID_INetworkInformationStatics));

  List<ConnectionProfile> getConnectionProfiles() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    final vectorView = IVectorView<ConnectionProfile>.fromPtr(retValuePtr,
        iterableIid: '{34dabef9-87d0-5b1c-a7ac-9d290adeb0c8}',
        creator: ConnectionProfile.fromPtr);
    return vectorView.toList();
  }

  ConnectionProfile? getInternetConnectionProfile() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    return ConnectionProfile.fromPtr(retValuePtr);
  }

  List<LanIdentifier> getLanIdentifiers() {
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

    final vectorView = IVectorView<LanIdentifier>.fromPtr(retValuePtr,
        iterableIid: '{accef3cd-5d92-5c01-8ac4-79fe74cd733e}',
        creator: LanIdentifier.fromPtr);
    return vectorView.toList();
  }

  List<HostName> getHostNames() {
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

    final vectorView = IVectorView<HostName>.fromPtr(retValuePtr,
        iterableIid: '{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}',
        creator: HostName.fromPtr);
    return vectorView.toList();
  }

  Future<ProxyConfiguration?> getProxyConfigurationAsync(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<ProxyConfiguration?>();
    final uriUri = uri?.toWinRTUri();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL uri,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL uri,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ProxyConfiguration?>.fromPtr(
        retValuePtr,
        creator: ProxyConfiguration.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  List<EndpointPair> getSortedEndpointPairs(
      IIterable<EndpointPair>? destinationList,
      HostNameSortOptions sortOptions) {
    final retValuePtr = calloc<COMObject>();
    final destinationListPtr = destinationList == null
        ? nullptr
        : IInspectable(destinationList
                .toInterface('{d7ec83c4-a17b-51bf-8997-aa33b9102dc9}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL destinationList,
                                Uint32 sortOptions,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL destinationList,
                        int sortOptions, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, destinationListPtr, sortOptions.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<EndpointPair>.fromPtr(retValuePtr,
        iterableIid: '{d7ec83c4-a17b-51bf-8997-aa33b9102dc9}',
        creator: EndpointPair.fromPtr);
    return vectorView.toList();
  }

  int add_NetworkStatusChanged(Pointer<COMObject> networkStatusHandler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              LPVTBL networkStatusHandler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL networkStatusHandler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, networkStatusHandler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_NetworkStatusChanged(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
