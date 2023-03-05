// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

import 'iconnectionprofilefilter.dart';
import 'iconnectionprofilefilter2.dart';
import 'iconnectionprofilefilter3.dart';
import 'networkcosttype.dart';

/// The ConnectionProfileFilter class defines a set of properties that are
/// used to improve the relevance of FindConnectionProfilesAsync results.
///
/// {@category class}
class ConnectionProfileFilter extends IInspectable
    implements
        IConnectionProfileFilter,
        IConnectionProfileFilter2,
        IConnectionProfileFilter3 {
  ConnectionProfileFilter() : super(activateClass(_className));
  ConnectionProfileFilter.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Networking.Connectivity.ConnectionProfileFilter';

  late final _iConnectionProfileFilter = IConnectionProfileFilter.from(this);

  @override
  set isConnected(bool value) => _iConnectionProfileFilter.isConnected = value;

  @override
  bool get isConnected => _iConnectionProfileFilter.isConnected;

  @override
  set isWwanConnectionProfile(bool value) =>
      _iConnectionProfileFilter.isWwanConnectionProfile = value;

  @override
  bool get isWwanConnectionProfile =>
      _iConnectionProfileFilter.isWwanConnectionProfile;

  @override
  set isWlanConnectionProfile(bool value) =>
      _iConnectionProfileFilter.isWlanConnectionProfile = value;

  @override
  bool get isWlanConnectionProfile =>
      _iConnectionProfileFilter.isWlanConnectionProfile;

  @override
  set networkCostType(NetworkCostType value) =>
      _iConnectionProfileFilter.networkCostType = value;

  @override
  NetworkCostType get networkCostType =>
      _iConnectionProfileFilter.networkCostType;

  @override
  set serviceProviderGuid(Guid? value) =>
      _iConnectionProfileFilter.serviceProviderGuid = value;

  @override
  Guid? get serviceProviderGuid =>
      _iConnectionProfileFilter.serviceProviderGuid;

  late final _iConnectionProfileFilter2 = IConnectionProfileFilter2.from(this);

  @override
  set isRoaming(bool? value) => _iConnectionProfileFilter2.isRoaming = value;

  @override
  bool? get isRoaming => _iConnectionProfileFilter2.isRoaming;

  @override
  set isOverDataLimit(bool? value) =>
      _iConnectionProfileFilter2.isOverDataLimit = value;

  @override
  bool? get isOverDataLimit => _iConnectionProfileFilter2.isOverDataLimit;

  @override
  set isBackgroundDataUsageRestricted(bool? value) =>
      _iConnectionProfileFilter2.isBackgroundDataUsageRestricted = value;

  @override
  bool? get isBackgroundDataUsageRestricted =>
      _iConnectionProfileFilter2.isBackgroundDataUsageRestricted;

  @override
  IBuffer? get rawData => _iConnectionProfileFilter2.rawData;

  late final _iConnectionProfileFilter3 = IConnectionProfileFilter3.from(this);

  @override
  set purposeGuid(Guid? value) =>
      _iConnectionProfileFilter3.purposeGuid = value;

  @override
  Guid? get purposeGuid => _iConnectionProfileFilter3.purposeGuid;
}
