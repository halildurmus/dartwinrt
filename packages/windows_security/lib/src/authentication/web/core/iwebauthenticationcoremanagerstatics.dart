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

import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics =
    '{6aca7c92-a581-4479-9c10-752eff44fd34}';

class IWebAuthenticationCoreManagerStatics extends IInspectable {
  IWebAuthenticationCoreManagerStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IWebAuthenticationCoreManagerStaticsVtbl>()
            .ref;

  final _IWebAuthenticationCoreManagerStaticsVtbl _vtable;

  factory IWebAuthenticationCoreManagerStatics.from(IInspectable interface) =>
      interface.cast(IWebAuthenticationCoreManagerStatics.fromPtr,
          IID_IWebAuthenticationCoreManagerStatics);

  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
      WebTokenRequest? request) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.GetTokenSilentlyAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer request,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, request.lpVtbl, asyncInfo);

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

    final hr = _vtable.GetTokenSilentlyWithWebAccountAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer request,
                VTablePointer webAccount, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, request.lpVtbl, webAccount.lpVtbl, asyncInfo);

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

    final hr = _vtable.RequestTokenAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer request,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, request.lpVtbl, asyncInfo);

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

    final hr = _vtable.RequestTokenWithWebAccountAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer request,
                VTablePointer webAccount, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, request.lpVtbl, webAccount.lpVtbl, asyncInfo);

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

    final hr = _vtable.FindAccountAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer provider,
                int webAccountId, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, provider.lpVtbl, webAccountId.toHString(), asyncInfo);

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

    final hr = _vtable.FindAccountProviderAsync.asFunction<
            int Function(VTablePointer lpVtbl, int webAccountProviderId,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, webAccountProviderId.toHString(), asyncInfo);

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

    final hr = _vtable.FindAccountProviderWithAuthorityAsync.asFunction<
            int Function(VTablePointer lpVtbl, int webAccountProviderId,
                int authority, Pointer<COMObject> asyncInfo)>()(lpVtbl,
        webAccountProviderId.toHString(), authority.toHString(), asyncInfo);

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

final class _IWebAuthenticationCoreManagerStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer request,
              Pointer<COMObject> asyncInfo)>> GetTokenSilentlyAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer request,
                  VTablePointer webAccount, Pointer<COMObject> asyncInfo)>>
      GetTokenSilentlyWithWebAccountAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer request,
              Pointer<COMObject> asyncInfo)>> RequestTokenAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer request,
              VTablePointer webAccount,
              Pointer<COMObject> asyncInfo)>> RequestTokenWithWebAccountAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer provider,
              IntPtr webAccountId,
              Pointer<COMObject> asyncInfo)>> FindAccountAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr webAccountProviderId,
              Pointer<COMObject> asyncInfo)>> FindAccountProviderAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  IntPtr webAccountProviderId,
                  IntPtr authority,
                  Pointer<COMObject> asyncInfo)>>
      FindAccountProviderWithAuthorityAsync;
}
