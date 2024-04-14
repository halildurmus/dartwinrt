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
import 'package:windows_storage/windows_storage.dart';

import 'iwebaccount.dart';
import 'iwebaccount2.dart';
import 'iwebaccountfactory.dart';
import 'webaccountpicturesize.dart';
import 'webaccountprovider.dart';
import 'webaccountstate.dart';

/// Identifies an account from a web account provider.
class WebAccount extends IInspectable implements IWebAccount, IWebAccount2 {
  WebAccount.fromPtr(super.ptr);

  static const _className = 'Windows.Security.Credentials.WebAccount';

  factory WebAccount.createWebAccount(WebAccountProvider? webAccountProvider,
          String userName, WebAccountState state) =>
      createActivationFactory(
              IWebAccountFactory.fromPtr, _className, IID_IWebAccountFactory)
          .createWebAccount(webAccountProvider, userName, state);

  late final _iWebAccount = IWebAccount.from(this);

  @override
  WebAccountProvider? get webAccountProvider => _iWebAccount.webAccountProvider;

  @override
  String get userName => _iWebAccount.userName;

  @override
  WebAccountState get state => _iWebAccount.state;

  late final _iWebAccount2 = IWebAccount2.from(this);

  @override
  String get id => _iWebAccount2.id;

  @override
  Map<String, String>? get properties => _iWebAccount2.properties;

  @override
  Future<IRandomAccessStream?> getPictureAsync(
          WebAccountPictureSize desizedSize) =>
      _iWebAccount2.getPictureAsync(desizedSize);

  @override
  Future<void> signOutAsync() => _iWebAccount2.signOutAsync();

  @override
  Future<void> signOutWithClientIdAsync(String clientId) =>
      _iWebAccount2.signOutWithClientIdAsync(clientId);
}
