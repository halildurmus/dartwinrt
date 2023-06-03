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

import 'iconnectioncost.dart';
import 'iconnectioncost2.dart';
import 'networkcosttype.dart';

/// Provides access to property values that indicate the current cost of a
/// network connection.
class ConnectionCost extends IInspectable
    implements IConnectionCost, IConnectionCost2 {
  ConnectionCost.fromPtr(super.ptr);

  late final _iConnectionCost = IConnectionCost.from(this);

  @override
  NetworkCostType get networkCostType => _iConnectionCost.networkCostType;

  @override
  bool get roaming => _iConnectionCost.roaming;

  @override
  bool get overDataLimit => _iConnectionCost.overDataLimit;

  @override
  bool get approachingDataLimit => _iConnectionCost.approachingDataLimit;

  late final _iConnectionCost2 = IConnectionCost2.from(this);

  @override
  bool get backgroundDataUsageRestricted =>
      _iConnectionCost2.backgroundDataUsageRestricted;
}
