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

import 'iwebtokenrequestresult.dart';
import 'webprovidererror.dart';
import 'webtokenrequeststatus.dart';
import 'webtokenresponse.dart';

/// Represents the results of a web token request to an identity provider.
///
/// {@category class}
class WebTokenRequestResult extends IInspectable
    implements IWebTokenRequestResult {
  WebTokenRequestResult.fromPtr(super.ptr);

  late final _iWebTokenRequestResult = IWebTokenRequestResult.from(this);

  @override
  List<WebTokenResponse> get responseData =>
      _iWebTokenRequestResult.responseData;

  @override
  WebTokenRequestStatus get responseStatus =>
      _iWebTokenRequestResult.responseStatus;

  @override
  WebProviderError? get responseError => _iWebTokenRequestResult.responseError;

  @override
  Future<void> invalidateCacheAsync() =>
      _iWebTokenRequestResult.invalidateCacheAsync();
}
