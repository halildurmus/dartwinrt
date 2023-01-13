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

import 'icivicaddress.dart';

/// Unsupported API.
///
/// {@category class}
class CivicAddress extends IInspectable implements ICivicAddress {
  CivicAddress.fromRawPointer(super.ptr);

  // ICivicAddress methods
  late final _iCivicAddress = ICivicAddress.from(this);

  @override
  String get country => _iCivicAddress.country;

  @override
  String get state => _iCivicAddress.state;

  @override
  String get city => _iCivicAddress.city;

  @override
  String get postalCode => _iCivicAddress.postalCode;

  @override
  DateTime get timestamp => _iCivicAddress.timestamp;
}
