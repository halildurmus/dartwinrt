// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

import 'iproxyconfiguration.dart';

/// Represents the proxy configuration for the current user.
///
/// {@category class}
class ProxyConfiguration extends IInspectable implements IProxyConfiguration {
  ProxyConfiguration.fromRawPointer(super.ptr);

  // IProxyConfiguration methods
  late final _iProxyConfiguration = IProxyConfiguration.from(this);

  @override
  List<Uri> get proxyUris => _iProxyConfiguration.proxyUris;

  @override
  bool get canConnectDirectly => _iProxyConfiguration.canConnectDirectly;
}
