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

import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics =
    '{6aca7c92-a581-4479-9c10-752eff44fd34}';

class IWebAuthenticationCoreManagerStatics extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IWebAuthenticationCoreManagerStatics.fromPtr(super.ptr);

  factory IWebAuthenticationCoreManagerStatics.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics.fromPtr(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics));

  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
      WebTokenRequest? request) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer request,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl, request?.ptr.ref.lpVtbl ?? nullptr, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        asyncInfo,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
      WebTokenRequest? request, WebAccount? webAccount) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            VTablePointer webAccount,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer request,
                    VTablePointer webAccount, Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        request?.ptr.ref.lpVtbl ?? nullptr,
        webAccount?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        asyncInfo,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebTokenRequestResult?> requestTokenAsync(WebTokenRequest? request) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer request,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl, request?.ptr.ref.lpVtbl ?? nullptr, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        asyncInfo,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
      WebTokenRequest? request, WebAccount? webAccount) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            VTablePointer webAccount,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer request,
                    VTablePointer webAccount, Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        request?.ptr.ref.lpVtbl ?? nullptr,
        webAccount?.ptr.ref.lpVtbl ?? nullptr,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        asyncInfo,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccount?> findAccountAsync(
      WebAccountProvider? provider, String webAccountId) {
    final asyncInfo = calloc<COMObject>();
    final webAccountIdHString = webAccountId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            IntPtr webAccountId,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    int webAccountId, Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        provider?.ptr.ref.lpVtbl ?? nullptr,
        webAccountIdHString,
        asyncInfo);

    WindowsDeleteString(webAccountIdHString);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccount?>.fromPtr(asyncInfo,
        creator: WebAccount.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findAccountProviderAsync(
      String webAccountProviderId) {
    final asyncInfo = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl, webAccountProviderIdHString, asyncInfo);

    WindowsDeleteString(webAccountProviderIdHString);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        asyncInfo,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final asyncInfo = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();
    final authorityHString = authority.toHString();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    int authority, Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        webAccountProviderIdHString,
        authorityHString,
        asyncInfo);

    WindowsDeleteString(webAccountProviderIdHString);
    WindowsDeleteString(authorityHString);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        asyncInfo,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
