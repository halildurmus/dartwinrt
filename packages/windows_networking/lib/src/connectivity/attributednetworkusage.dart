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
import 'package:windows_storage/windows_storage.dart';

import 'iattributednetworkusage.dart';

/// Provides access to property values containing information on current
/// usage of the attributed network connection.
///
/// {@category class}
class AttributedNetworkUsage extends IInspectable
    implements IAttributedNetworkUsage {
  AttributedNetworkUsage.fromPtr(super.ptr);

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
