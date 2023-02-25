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

import 'hostname.dart';
import 'iendpointpair.dart';
import 'iendpointpairfactory.dart';

/// Provides data for the local endpoint and remote endpoint for a network
/// connection used by network apps.
///
/// {@category class}
class EndpointPair extends IInspectable implements IEndpointPair {
  EndpointPair.fromRawPointer(super.ptr);

  static const _className = 'Windows.Networking.EndpointPair';

  // IEndpointPairFactory methods
  factory EndpointPair.createEndpointPair(
      HostName localHostName,
      String localServiceName,
      HostName remoteHostName,
      String remoteServiceName) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IEndpointPairFactory);
    final object = IEndpointPairFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createEndpointPair(
          localHostName, localServiceName, remoteHostName, remoteServiceName);
    } finally {
      object.release();
    }
  }

  // IEndpointPair methods
  late final _iEndpointPair = IEndpointPair.from(this);

  @override
  HostName? get localHostName => _iEndpointPair.localHostName;

  @override
  set localHostName(HostName? value) => _iEndpointPair.localHostName = value;

  @override
  String get localServiceName => _iEndpointPair.localServiceName;

  @override
  set localServiceName(String value) => _iEndpointPair.localServiceName = value;

  @override
  HostName? get remoteHostName => _iEndpointPair.remoteHostName;

  @override
  set remoteHostName(HostName? value) => _iEndpointPair.remoteHostName = value;

  @override
  String get remoteServiceName => _iEndpointPair.remoteServiceName;

  @override
  set remoteServiceName(String value) =>
      _iEndpointPair.remoteServiceName = value;
}
