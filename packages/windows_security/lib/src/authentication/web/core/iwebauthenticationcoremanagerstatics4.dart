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
  // vtable begins at 6, is 5 entries long.
  IWebAuthenticationCoreManagerStatics4.fromPtr(super.ptr);

  factory IWebAuthenticationCoreManagerStatics4.from(IInspectable interface) =>
      interface.cast(IWebAuthenticationCoreManagerStatics4.fromPtr,
          IID_IWebAuthenticationCoreManagerStatics4);

  Future<FindAllAccountsResult?> findAllAccountsAsync(
      WebAccountProvider? provider) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, provider.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<FindAllAccountsResult?>.fromPtr(
        operation,
        creator: FindAllAccountsResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<FindAllAccountsResult?> findAllAccountsWithClientIdAsync(
      WebAccountProvider? provider, String clientId) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            IntPtr clientId,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    int clientId, Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, provider.lpVtbl, clientId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<FindAllAccountsResult?>.fromPtr(
        operation,
        creator: FindAllAccountsResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findSystemAccountProviderAsync(
      String webAccountProviderId) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, webAccountProviderId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        operation,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findSystemAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    int authority, Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl,
        webAccountProviderId.toHString(),
        authority.toHString(),
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        operation,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityForUserAsync(
          String webAccountProviderId, String authority, User? user) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            VTablePointer user,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int webAccountProviderId,
                    int authority,
                    VTablePointer user,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl,
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
        creator: WebAccountProvider.fromPtr);
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
