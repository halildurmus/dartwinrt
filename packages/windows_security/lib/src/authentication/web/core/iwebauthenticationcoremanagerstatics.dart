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

/// {@category interface}
class IWebAuthenticationCoreManagerStatics extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IWebAuthenticationCoreManagerStatics.fromPtr(super.ptr);

  factory IWebAuthenticationCoreManagerStatics.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics.fromPtr(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics));

  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
      WebTokenRequest? request) {
    final retValuePtr = calloc<COMObject>();
    final requestPtr = request == null ? nullptr : request.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer request,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, requestPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        retValuePtr,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
      WebTokenRequest? request, WebAccount? webAccount) {
    final retValuePtr = calloc<COMObject>();
    final requestPtr = request == null ? nullptr : request.ptr.ref.lpVtbl;
    final webAccountPtr =
        webAccount == null ? nullptr : webAccount.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            VTablePointer webAccount,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer request,
                    VTablePointer webAccount,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, requestPtr, webAccountPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        retValuePtr,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebTokenRequestResult?> requestTokenAsync(WebTokenRequest? request) {
    final retValuePtr = calloc<COMObject>();
    final requestPtr = request == null ? nullptr : request.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer request,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, requestPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        retValuePtr,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
      WebTokenRequest? request, WebAccount? webAccount) {
    final retValuePtr = calloc<COMObject>();
    final requestPtr = request == null ? nullptr : request.ptr.ref.lpVtbl;
    final webAccountPtr =
        webAccount == null ? nullptr : webAccount.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer request,
                            VTablePointer webAccount,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer request,
                    VTablePointer webAccount,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, requestPtr, webAccountPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        retValuePtr,
        creator: WebTokenRequestResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccount?> findAccountAsync(
      WebAccountProvider? provider, String webAccountId) {
    final retValuePtr = calloc<COMObject>();
    final providerPtr = provider == null ? nullptr : provider.ptr.ref.lpVtbl;
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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    int webAccountId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, providerPtr, webAccountIdHString, retValuePtr);

    WindowsDeleteString(webAccountIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccount?>.fromPtr(retValuePtr,
        creator: WebAccount.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findAccountProviderAsync(
      String webAccountProviderId) {
    final retValuePtr = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, webAccountProviderIdHString, retValuePtr);

    WindowsDeleteString(webAccountProviderIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        retValuePtr,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final retValuePtr = calloc<COMObject>();
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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    int authority, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        webAccountProviderIdHString,
        authorityHString,
        retValuePtr);

    WindowsDeleteString(webAccountProviderIdHString);
    WindowsDeleteString(authorityHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        retValuePtr,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
