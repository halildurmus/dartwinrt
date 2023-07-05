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
import 'package:windows_system/windows_system.dart';

import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics2 =
    '{f584184a-8b57-4820-b6a4-70a5b6fcf44a}';

class IWebAuthenticationCoreManagerStatics2 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  // vtable begins at 6, is 1 entries long.
  IWebAuthenticationCoreManagerStatics2.fromPtr(super.ptr);

  factory IWebAuthenticationCoreManagerStatics2.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics2.fromPtr(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics2));

  Future<WebAccountProvider?> findAccountProviderWithAuthorityForUserAsync(
      String webAccountProviderId, String authority, User? user) {
    final asyncInfo = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();
    final authorityHString = authority.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            VTablePointer user,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int webAccountProviderId,
                    int authority,
                    VTablePointer user,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl,
        webAccountProviderIdHString,
        authorityHString,
        user == null ? nullptr : user.ptr.ref.lpVtbl,
        asyncInfo);

    WindowsDeleteString(webAccountProviderIdHString);
    WindowsDeleteString(authorityHString);

    if (FAILED(hr)) {
      free(asyncInfo);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        asyncInfo,
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
