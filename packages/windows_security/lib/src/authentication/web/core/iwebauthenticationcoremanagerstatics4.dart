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
import 'package:windows_system/windows_system.dart';

import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'findallaccountsresult.dart';
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics4 =
    '{54e633fe-96e0-41e8-9832-1298897c2aaf}';

class IWebAuthenticationCoreManagerStatics4 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  IWebAuthenticationCoreManagerStatics4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IWebAuthenticationCoreManagerStatics4Vtbl>()
            .ref;

  final _IWebAuthenticationCoreManagerStatics4Vtbl _vtable;

  factory IWebAuthenticationCoreManagerStatics4.from(IInspectable interface) =>
      interface.cast(IWebAuthenticationCoreManagerStatics4.fromPtr,
          IID_IWebAuthenticationCoreManagerStatics4);

  Future<FindAllAccountsResult?> findAllAccountsAsync(
      WebAccountProvider? provider) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindAllAccountsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer provider,
                Pointer<COMObject> operation)>()(
        lpVtbl, provider.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<FindAllAccountsResult?>.fromPtr(
        operation,
        tResultObjectCreator: FindAllAccountsResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<FindAllAccountsResult?> findAllAccountsWithClientIdAsync(
      WebAccountProvider? provider, String clientId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindAllAccountsWithClientIdAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer provider,
                int clientId, Pointer<COMObject> operation)>()(
        lpVtbl, provider.lpVtbl, clientId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<FindAllAccountsResult?>.fromPtr(
        operation,
        tResultObjectCreator: FindAllAccountsResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findSystemAccountProviderAsync(
      String webAccountProviderId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindSystemAccountProviderAsync.asFunction<
            int Function(VTablePointer lpVtbl, int webAccountProviderId,
                Pointer<COMObject> operation)>()(
        lpVtbl, webAccountProviderId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        operation,
        tResultObjectCreator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findSystemAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindSystemAccountProviderWithAuthorityAsync.asFunction<
            int Function(VTablePointer lpVtbl, int webAccountProviderId,
                int authority, Pointer<COMObject> operation)>()(lpVtbl,
        webAccountProviderId.toHString(), authority.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        operation,
        tResultObjectCreator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityForUserAsync(
          String webAccountProviderId, String authority, User? user) {
    final operation = calloc<COMObject>();

    final hr =
        _vtable.FindSystemAccountProviderWithAuthorityForUserAsync.asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int webAccountProviderId,
                    int authority,
                    VTablePointer user,
                    Pointer<COMObject> operation)>()(
            lpVtbl,
            webAccountProviderId.toHString(),
            authority.toHString(),
            user.lpVtbl,
            operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        operation,
        tResultObjectCreator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iWebAuthenticationCoreManagerStatics =
      IWebAuthenticationCoreManagerStatics.from(this);

  @override
  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
          WebTokenRequest? request) =>
      _iWebAuthenticationCoreManagerStatics.getTokenSilentlyAsync(request);

  @override
  Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
          WebTokenRequest? request, WebAccount? webAccount) =>
      _iWebAuthenticationCoreManagerStatics.getTokenSilentlyWithWebAccountAsync(
          request, webAccount);

  @override
  Future<WebTokenRequestResult?> requestTokenAsync(WebTokenRequest? request) =>
      _iWebAuthenticationCoreManagerStatics.requestTokenAsync(request);

  @override
  Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
          WebTokenRequest? request, WebAccount? webAccount) =>
      _iWebAuthenticationCoreManagerStatics.requestTokenWithWebAccountAsync(
          request, webAccount);

  @override
  Future<WebAccount?> findAccountAsync(
          WebAccountProvider? provider, String webAccountId) =>
      _iWebAuthenticationCoreManagerStatics.findAccountAsync(
          provider, webAccountId);

  @override
  Future<WebAccountProvider?> findAccountProviderAsync(
          String webAccountProviderId) =>
      _iWebAuthenticationCoreManagerStatics
          .findAccountProviderAsync(webAccountProviderId);

  @override
  Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
          String webAccountProviderId, String authority) =>
      _iWebAuthenticationCoreManagerStatics
          .findAccountProviderWithAuthorityAsync(
              webAccountProviderId, authority);
}

final class _IWebAuthenticationCoreManagerStatics4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer provider,
              Pointer<COMObject> operation)>> FindAllAccountsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer provider,
              IntPtr clientId,
              Pointer<COMObject> operation)>> FindAllAccountsWithClientIdAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr webAccountProviderId,
              Pointer<COMObject> operation)>> FindSystemAccountProviderAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  IntPtr webAccountProviderId,
                  IntPtr authority,
                  Pointer<COMObject> operation)>>
      FindSystemAccountProviderWithAuthorityAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  IntPtr webAccountProviderId,
                  IntPtr authority,
                  VTablePointer user,
                  Pointer<COMObject> operation)>>
      FindSystemAccountProviderWithAuthorityForUserAsync;
}
