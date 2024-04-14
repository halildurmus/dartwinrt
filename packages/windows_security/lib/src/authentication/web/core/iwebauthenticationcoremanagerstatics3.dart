// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webaccountmonitor.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics3 =
    '{2404eeb2-8924-4d93-ab3a-99688b419d56}';

class IWebAuthenticationCoreManagerStatics3 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  IWebAuthenticationCoreManagerStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IWebAuthenticationCoreManagerStatics3Vtbl>()
            .ref;

  final _IWebAuthenticationCoreManagerStatics3Vtbl _vtable;

  factory IWebAuthenticationCoreManagerStatics3.from(IInspectable interface) =>
      interface.cast(IWebAuthenticationCoreManagerStatics3.fromPtr,
          IID_IWebAuthenticationCoreManagerStatics3);

  WebAccountMonitor? createWebAccountMonitor(
      IIterable<WebAccount?>? webAccounts) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateWebAccountMonitor.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer webAccounts,
            Pointer<COMObject> result)>()(lpVtbl, webAccounts.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return WebAccountMonitor.fromPtr(result);
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

final class _IWebAuthenticationCoreManagerStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer webAccounts,
              Pointer<COMObject> result)>> CreateWebAccountMonitor;
}
