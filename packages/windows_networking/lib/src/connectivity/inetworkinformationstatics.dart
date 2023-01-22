// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

// import '../endpointpair.dart';
import '../enums.g.dart';
import '../hostname.dart';
import 'connectionprofile.dart';
// import 'lanidentifier.dart';
// import 'proxyconfiguration.dart';

/// @nodoc
const IID_INetworkInformationStatics = '{5074f851-950d-4165-9c15-365619481eea}';

/// {@category interface}
class INetworkInformationStatics extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  INetworkInformationStatics.fromRawPointer(super.ptr);

  factory INetworkInformationStatics.from(IInspectable interface) =>
      INetworkInformationStatics.fromRawPointer(
          interface.toInterface(IID_INetworkInformationStatics));

  Pointer<COMObject> getConnectionProfiles() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> getInternetConnectionProfile() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> getLanIdentifiers() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  List<HostName> getHostNames() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<HostName>.fromRawPointer(retValuePtr,
        iterableIid: '{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}',
        creator: HostName.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }

  Pointer<COMObject> getProxyConfigurationAsync(Uri uri) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = winrt_uri.Uri.createUri(uri.toString());

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, LPVTBL uri, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, LPVTBL uri, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, uriUri.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    uriUri.release();

    return retValuePtr;
  }

  Pointer<COMObject> getSortedEndpointPairs(
    Pointer<COMObject> destinationList,
    int sortOptions,
  ) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, LPVTBL destinationList,
                            Uint32 sortOptions, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, LPVTBL destinationList, int sortOptions,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, destinationList.ref.lpVtbl, sortOptions, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  // int add_NetworkStatusChanged(
  //     Pointer<NativeFunction<NetworkStatusChangedEventHandler>>
  //         networkStatusHandler) {
  //   final retValuePtr = calloc<IntPtr>();

  //   try {
  //     final hr = ptr.ref.vtable
  //             .elementAt(12)
  //             .cast<
  //                 Pointer<
  //                     NativeFunction<
  //                         HRESULT Function(
  //                             Pointer,
  //                             Pointer<
  //                                     NativeFunction<
  //                                         NetworkStatusChangedEventHandler>>
  //                                 networkStatusHandler,
  //                             Pointer<IntPtr>)>>>()
  //             .value
  //             .asFunction<
  //                 int Function(
  //                     Pointer,
  //                     Pointer<NativeFunction<NetworkStatusChangedEventHandler>>
  //                         networkStatusHandler,
  //                     Pointer<IntPtr>)>()(
  //         ptr.ref.lpVtbl, networkStatusHandler, retValuePtr);

  //     if (FAILED(hr)) throw WindowsException(hr);

  //     final retValue = retValuePtr.value;
  //     return retValue;
  //   } finally {
  //     free(retValuePtr);
  //   }
  // }

  // void remove_NetworkStatusChanged(int eventCookie) {
  //   final hr = ptr.ref.vtable
  //           .elementAt(13)
  //           .cast<
  //               Pointer<
  //                   NativeFunction<
  //                       HRESULT Function(Pointer, IntPtr eventCookie)>>>()
  //           .value
  //           .asFunction<int Function(Pointer, int eventCookie)>()(
  //       ptr.ref.lpVtbl, eventCookie);

  //   if (FAILED(hr)) throw WindowsException(hr);
  // }
}
