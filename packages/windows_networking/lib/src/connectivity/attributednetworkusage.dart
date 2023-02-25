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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

import 'iattributednetworkusage.dart';

/// Provides access to property values containing information on current
/// usage of the attributed network connection.
///
/// {@category class}
class AttributedNetworkUsage extends IInspectable
    implements IAttributedNetworkUsage {
  AttributedNetworkUsage.fromRawPointer(super.ptr);

  // IAttributedNetworkUsage methods
  late final _iAttributedNetworkUsage = IAttributedNetworkUsage.from(this);

  @override
  int get bytesSent => _iAttributedNetworkUsage.bytesSent;

  @override
  int get bytesReceived => _iAttributedNetworkUsage.bytesReceived;

  @override
  String get attributionId => _iAttributedNetworkUsage.attributionId;

  @override
  String get attributionName => _iAttributedNetworkUsage.attributionName;

  @override
  IRandomAccessStreamReference? get attributionThumbnail =>
      _iAttributedNetworkUsage.attributionThumbnail;
}
