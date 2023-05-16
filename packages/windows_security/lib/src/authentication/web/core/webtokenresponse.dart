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
import 'iwebtokenresponse.dart';
import 'iwebtokenresponsefactory.dart';
import 'webprovidererror.dart';

/// Represents the response from a web account provider to a web token
/// request.
///
/// {@category class}
class WebTokenResponse extends IInspectable implements IWebTokenResponse {
  WebTokenResponse() : super(activateClass(_className));
  WebTokenResponse.fromPtr(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebTokenResponse';

  factory WebTokenResponse.createWithToken(String token) =>
      createActivationFactory(IWebTokenResponseFactory.fromPtr, _className,
              IID_IWebTokenResponseFactory)
          .createWithToken(token);

  factory WebTokenResponse.createWithTokenAndAccount(
          String token, WebAccount webAccount) =>
      createActivationFactory(IWebTokenResponseFactory.fromPtr, _className,
              IID_IWebTokenResponseFactory)
          .createWithTokenAndAccount(token, webAccount);

  factory WebTokenResponse.createWithTokenAccountAndError(
          String token, WebAccount webAccount, WebProviderError error) =>
      createActivationFactory(IWebTokenResponseFactory.fromPtr, _className,
              IID_IWebTokenResponseFactory)
          .createWithTokenAccountAndError(token, webAccount, error);

  late final _iWebTokenResponse = IWebTokenResponse.from(this);

  @override
  String get token => _iWebTokenResponse.token;

  @override
  WebProviderError? get providerError => _iWebTokenResponse.providerError;

  @override
  WebAccount? get webAccount => _iWebTokenResponse.webAccount;

  @override
  IMap<String, String> get properties => _iWebTokenResponse.properties;
}
