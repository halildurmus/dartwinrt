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

import '../../../credentials/webaccountprovider.dart';
import 'iwebtokenrequest.dart';
import 'iwebtokenrequest2.dart';
import 'iwebtokenrequest3.dart';
import 'iwebtokenrequestfactory.dart';
import 'webtokenrequestprompttype.dart';

/// Represents a request to an online identity provider for an
/// authentication token.
class WebTokenRequest extends IInspectable
    implements IWebTokenRequest, IWebTokenRequest2, IWebTokenRequest3 {
  WebTokenRequest.fromPtr(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebTokenRequest';

  factory WebTokenRequest.create(
          WebAccountProvider? provider, String scope, String clientId) =>
      createActivationFactory(IWebTokenRequestFactory.fromPtr, _className,
              IID_IWebTokenRequestFactory)
          .create(provider, scope, clientId);

  factory WebTokenRequest.createWithPromptType(
          WebAccountProvider? provider,
          String scope,
          String clientId,
          WebTokenRequestPromptType promptType) =>
      createActivationFactory(IWebTokenRequestFactory.fromPtr, _className,
              IID_IWebTokenRequestFactory)
          .createWithPromptType(provider, scope, clientId, promptType);

  factory WebTokenRequest.createWithProvider(WebAccountProvider? provider) =>
      createActivationFactory(IWebTokenRequestFactory.fromPtr, _className,
              IID_IWebTokenRequestFactory)
          .createWithProvider(provider);

  factory WebTokenRequest.createWithScope(
          WebAccountProvider? provider, String scope) =>
      createActivationFactory(IWebTokenRequestFactory.fromPtr, _className,
              IID_IWebTokenRequestFactory)
          .createWithScope(provider, scope);

  late final _iWebTokenRequest = IWebTokenRequest.from(this);

  @override
  WebAccountProvider? get webAccountProvider =>
      _iWebTokenRequest.webAccountProvider;

  @override
  String get scope => _iWebTokenRequest.scope;

  @override
  String get clientId => _iWebTokenRequest.clientId;

  @override
  WebTokenRequestPromptType get promptType => _iWebTokenRequest.promptType;

  @override
  IMap<String, String>? get properties => _iWebTokenRequest.properties;

  late final _iWebTokenRequest2 = IWebTokenRequest2.from(this);

  @override
  IMap<String, String>? get appProperties => _iWebTokenRequest2.appProperties;

  late final _iWebTokenRequest3 = IWebTokenRequest3.from(this);

  @override
  String get correlationId => _iWebTokenRequest3.correlationId;

  @override
  set correlationId(String value) => _iWebTokenRequest3.correlationId = value;
}
