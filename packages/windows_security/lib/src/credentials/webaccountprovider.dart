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

import 'iwebaccountprovider.dart';
import 'iwebaccountprovider2.dart';
import 'iwebaccountprovider3.dart';
import 'iwebaccountprovider4.dart';
import 'iwebaccountproviderfactory.dart';

/// Represents a web account authentication provider.
class WebAccountProvider extends IInspectable
    implements
        IWebAccountProvider,
        IWebAccountProvider2,
        IWebAccountProvider3,
        IWebAccountProvider4 {
  WebAccountProvider.fromPtr(super.ptr);

  static const _className = 'Windows.Security.Credentials.WebAccountProvider';

  factory WebAccountProvider.createWebAccountProvider(
          String id, String displayName, Uri iconUri) =>
      createActivationFactory(IWebAccountProviderFactory.fromPtr, _className,
              IID_IWebAccountProviderFactory)
          .createWebAccountProvider(id, displayName, iconUri);

  late final _iWebAccountProvider = IWebAccountProvider.from(this);

  @override
  String get id => _iWebAccountProvider.id;

  @override
  String get displayName => _iWebAccountProvider.displayName;

  @Deprecated(
      "IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.")
  @override
  Uri? get iconUri => _iWebAccountProvider.iconUri;

  late final _iWebAccountProvider2 = IWebAccountProvider2.from(this);

  @override
  String get displayPurpose => _iWebAccountProvider2.displayPurpose;

  @override
  String get authority => _iWebAccountProvider2.authority;

  late final _iWebAccountProvider3 = IWebAccountProvider3.from(this);

  @override
  User? get user => _iWebAccountProvider3.user;

  late final _iWebAccountProvider4 = IWebAccountProvider4.from(this);

  @override
  bool get isSystemProvider => _iWebAccountProvider4.isSystemProvider;
}
