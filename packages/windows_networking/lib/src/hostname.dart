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

import 'connectivity/ipinformation.dart';
import 'hostnametype.dart';
import 'ihostname.dart';
import 'ihostnamefactory.dart';
import 'ihostnamestatics.dart';

/// Provides data for a hostname or an IP address.
///
/// {@category class}
class HostName extends IInspectable implements IHostName, IStringable {
  HostName.fromRawPointer(super.ptr);

  static const _className = 'Windows.Networking.HostName';

  factory HostName.createHostName(String hostName) => createActivationFactory(
          IHostNameFactory.fromRawPointer, _className, IID_IHostNameFactory)
      .createHostName(hostName);

  static int compare(String value1, String value2) => createActivationFactory(
          IHostNameStatics.fromRawPointer, _className, IID_IHostNameStatics)
      .compare(value1, value2);

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

  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
