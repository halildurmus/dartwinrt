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
import 'findallaccountsresult.dart';
import 'iwebauthenticationcoremanagerstatics.dart';
import 'iwebauthenticationcoremanagerstatics2.dart';
import 'iwebauthenticationcoremanagerstatics3.dart';
import 'iwebauthenticationcoremanagerstatics4.dart';
import 'webaccountmonitor.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// Contains core methods for obtaining tokens from web account providers.
///
/// {@category class}
class WebAuthenticationCoreManager extends IInspectable {
  WebAuthenticationCoreManager.fromPtr(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager';

  static Future<WebTokenRequestResult?> getTokenSilentlyAsync(
          WebTokenRequest? request) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .getTokenSilentlyAsync(request);

  static Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
          WebTokenRequest? request, WebAccount? webAccount) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .getTokenSilentlyWithWebAccountAsync(request, webAccount);

  static Future<WebTokenRequestResult?> requestTokenAsync(
          WebTokenRequest? request) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .requestTokenAsync(request);

  static Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
          WebTokenRequest? request, WebAccount? webAccount) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .requestTokenWithWebAccountAsync(request, webAccount);

  static Future<WebAccount?> findAccountAsync(
          WebAccountProvider? provider, String webAccountId) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .findAccountAsync(provider, webAccountId);

  static Future<WebAccountProvider?> findAccountProviderAsync(
          String webAccountProviderId) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .findAccountProviderAsync(webAccountProviderId);

  static Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
          String webAccountProviderId, String authority) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics)
          .findAccountProviderWithAuthorityAsync(
              webAccountProviderId, authority);

  static Future<WebAccountProvider?>
      findAccountProviderWithAuthorityForUserAsync(
              String webAccountProviderId, String authority, User? user) =>
          createActivationFactory(IWebAuthenticationCoreManagerStatics2.fromPtr,
                  _className, IID_IWebAuthenticationCoreManagerStatics2)
              .findAccountProviderWithAuthorityForUserAsync(
                  webAccountProviderId, authority, user);

  static WebAccountMonitor? createWebAccountMonitor(
          IIterable<WebAccount>? webAccounts) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics3.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics3)
          .createWebAccountMonitor(webAccounts);

  static Future<FindAllAccountsResult?> findAllAccountsAsync(
          WebAccountProvider? provider) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics4.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics4)
          .findAllAccountsAsync(provider);

  static Future<FindAllAccountsResult?> findAllAccountsWithClientIdAsync(
          WebAccountProvider? provider, String clientId) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics4.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics4)
          .findAllAccountsWithClientIdAsync(provider, clientId);

  static Future<WebAccountProvider?> findSystemAccountProviderAsync(
          String webAccountProviderId) =>
      createActivationFactory(IWebAuthenticationCoreManagerStatics4.fromPtr,
              _className, IID_IWebAuthenticationCoreManagerStatics4)
          .findSystemAccountProviderAsync(webAccountProviderId);

  static Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityAsync(
              String webAccountProviderId, String authority) =>
          createActivationFactory(IWebAuthenticationCoreManagerStatics4.fromPtr,
                  _className, IID_IWebAuthenticationCoreManagerStatics4)
              .findSystemAccountProviderWithAuthorityAsync(
                  webAccountProviderId, authority);

  static Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityForUserAsync(
              String webAccountProviderId, String authority, User? user) =>
          createActivationFactory(IWebAuthenticationCoreManagerStatics4.fromPtr,
                  _className, IID_IWebAuthenticationCoreManagerStatics4)
              .findSystemAccountProviderWithAuthorityForUserAsync(
                  webAccountProviderId, authority, user);
}
