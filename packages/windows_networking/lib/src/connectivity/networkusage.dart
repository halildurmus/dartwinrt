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
import 'package:windows_foundation/windows_foundation.dart';

import 'inetworkusage.dart';

/// Represents network usage statistics returned by the
/// ConnectionProfile.GetNetworkUsageAsync method.
///
/// {@category class}
class NetworkUsage extends IInspectable implements INetworkUsage {
  NetworkUsage.fromRawPointer(super.ptr);

  // INetworkUsage methods
  late final _iNetworkUsage = INetworkUsage.from(this);

  @override
  int get bytesSent => _iNetworkUsage.bytesSent;

  @override
  int get bytesReceived => _iNetworkUsage.bytesReceived;

  @override
  Duration get connectionDuration => _iNetworkUsage.connectionDuration;
}
