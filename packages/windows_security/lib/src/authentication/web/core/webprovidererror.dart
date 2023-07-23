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

import 'iwebprovidererror.dart';
import 'iwebprovidererrorfactory.dart';

/// Represents an error from a web account provider.
class WebProviderError extends IInspectable implements IWebProviderError {
  WebProviderError.fromPtr(super.ptr);

  static const _className =
      'Windows.Security.Authentication.Web.Core.WebProviderError';

  factory WebProviderError.create(int errorCode, String errorMessage) =>
      createActivationFactory(IWebProviderErrorFactory.fromPtr, _className,
              IID_IWebProviderErrorFactory)
          .create(errorCode, errorMessage);

  late final _iWebProviderError = IWebProviderError.from(this);

  @override
  int get errorCode => _iWebProviderError.errorCode;

  @override
  String get errorMessage => _iWebProviderError.errorMessage;

  @override
  IMap<String, String>? get properties => _iWebProviderError.properties;
}
