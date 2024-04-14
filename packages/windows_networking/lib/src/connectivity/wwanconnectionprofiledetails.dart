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

import 'iwwanconnectionprofiledetails.dart';
import 'iwwanconnectionprofiledetails2.dart';
import 'wwandataclass.dart';
import 'wwannetworkipkind.dart';
import 'wwannetworkregistrationstate.dart';

/// Used to access information specific to a WWAN connection.
class WwanConnectionProfileDetails extends IInspectable
    implements IWwanConnectionProfileDetails, IWwanConnectionProfileDetails2 {
  WwanConnectionProfileDetails.fromPtr(super.ptr);

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

  late final _iWwanConnectionProfileDetails2 =
      IWwanConnectionProfileDetails2.from(this);

  @override
  WwanNetworkIPKind get ipKind => _iWwanConnectionProfileDetails2.ipKind;

  @override
  List<Guid>? get purposeGuids => _iWwanConnectionProfileDetails2.purposeGuids;
}
