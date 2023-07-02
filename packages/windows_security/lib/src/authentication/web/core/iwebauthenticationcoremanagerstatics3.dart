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
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webaccountmonitor.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics3 =
    '{2404eeb2-8924-4d93-ab3a-99688b419d56}';

class IWebAuthenticationCoreManagerStatics3 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  // vtable begins at 6, is 1 entries long.
  IWebAuthenticationCoreManagerStatics3.fromPtr(super.ptr);

  factory IWebAuthenticationCoreManagerStatics3.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics3.fromPtr(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics3));

  WebAccountMonitor? createWebAccountMonitor(
      IIterable<WebAccount?>? webAccounts) {
    final retValuePtr = calloc<COMObject>();
    final webAccountsPtr = webAccounts == null
        ? nullptr
        : IInspectable(webAccounts
                .toInterface('{cb15d439-a910-542a-89ed-7cfe67848a83}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer webAccounts,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer webAccounts,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, webAccountsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return WebAccountMonitor.fromPtr(retValuePtr);
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
