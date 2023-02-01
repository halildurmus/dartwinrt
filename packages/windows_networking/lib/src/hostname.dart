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

import 'connectivity/ipinformation.dart';
import 'enums.g.dart';
import 'ihostname.dart';
import 'ihostnamefactory.dart';
import 'ihostnamestatics.dart';

/// Provides data for a hostname or an IP address.
///
/// {@category class}
class HostName extends IInspectable implements IHostName, IStringable {
  HostName.fromRawPointer(super.ptr);

  static const _className = 'Windows.Networking.HostName';

  // IHostNameFactory methods
  static HostName createHostName(String hostName) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IHostNameFactory);
    final object = IHostNameFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createHostName(hostName);
    } finally {
      object.release();
    }
  }

  // IHostNameStatics methods
  static int compare(String value1, String value2) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IHostNameStatics);
    final object = IHostNameStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.compare(value1, value2);
    } finally {
      object.release();
    }
  }

  // IHostName methods
  late final _iHostName = IHostName.from(this);

  @override
  IPInformation? get ipInformation => _iHostName.ipInformation;

  @override
  String get rawName => _iHostName.rawName;

  @override
  String get displayName => _iHostName.displayName;

  @override
  String get canonicalName => _iHostName.canonicalName;

  @override
  HostNameType get type => _iHostName.type;

  @override
  bool isEqual(HostName? hostName) => _iHostName.isEqual(hostName);

  // IStringable methods
  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
