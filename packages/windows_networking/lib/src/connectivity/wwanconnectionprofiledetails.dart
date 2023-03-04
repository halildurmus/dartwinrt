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

import 'iwwanconnectionprofiledetails.dart';
import 'iwwanconnectionprofiledetails2.dart';
import 'wwandataclass.dart';
import 'wwannetworkipkind.dart';
import 'wwannetworkregistrationstate.dart';

/// Used to access information specific to a WWAN connection.
///
/// {@category class}
class WwanConnectionProfileDetails extends IInspectable
    implements IWwanConnectionProfileDetails, IWwanConnectionProfileDetails2 {
  WwanConnectionProfileDetails.fromRawPointer(super.ptr);

  // IWwanConnectionProfileDetails methods
  late final _iWwanConnectionProfileDetails =
      IWwanConnectionProfileDetails.from(this);

  @override
  String get homeProviderId => _iWwanConnectionProfileDetails.homeProviderId;

  @override
  String get accessPointName => _iWwanConnectionProfileDetails.accessPointName;

  @override
  WwanNetworkRegistrationState getNetworkRegistrationState() =>
      _iWwanConnectionProfileDetails.getNetworkRegistrationState();

  @override
  WwanDataClass getCurrentDataClass() =>
      _iWwanConnectionProfileDetails.getCurrentDataClass();

  // IWwanConnectionProfileDetails2 methods
  late final _iWwanConnectionProfileDetails2 =
      IWwanConnectionProfileDetails2.from(this);

  @override
  WwanNetworkIPKind get ipKind => _iWwanConnectionProfileDetails2.ipKind;

  @override
  List<Guid> get purposeGuids => _iWwanConnectionProfileDetails2.purposeGuids;
}
