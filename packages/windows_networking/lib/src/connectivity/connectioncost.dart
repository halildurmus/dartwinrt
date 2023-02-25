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

import 'enums.g.dart';
import 'iconnectioncost.dart';
import 'iconnectioncost2.dart';

/// Provides access to property values that indicate the current cost of a
/// network connection.
///
/// {@category class}
class ConnectionCost extends IInspectable
    implements IConnectionCost, IConnectionCost2 {
  ConnectionCost.fromRawPointer(super.ptr);

  // IConnectionCost methods
  late final _iConnectionCost = IConnectionCost.from(this);

  @override
  NetworkCostType get networkCostType => _iConnectionCost.networkCostType;

  @override
  bool get roaming => _iConnectionCost.roaming;

  @override
  bool get overDataLimit => _iConnectionCost.overDataLimit;

  @override
  bool get approachingDataLimit => _iConnectionCost.approachingDataLimit;

  // IConnectionCost2 methods
  late final _iConnectionCost2 = IConnectionCost2.from(this);

  @override
  bool get backgroundDataUsageRestricted =>
      _iConnectionCost2.backgroundDataUsageRestricted;
}
