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

import 'inetworkoperatortetheringaccesspointconfiguration.dart';
import 'inetworkoperatortetheringaccesspointconfiguration2.dart';
import 'tetheringwifiband.dart';

/// Provides the ability to configure and create an object that contains a
/// specific tethering network SSID, and specifies the passphrase used to
/// authenticate clients trying to establish a network connection to the
/// tethering network.
class NetworkOperatorTetheringAccessPointConfiguration extends IInspectable
    implements
        INetworkOperatorTetheringAccessPointConfiguration,
        INetworkOperatorTetheringAccessPointConfiguration2 {
  NetworkOperatorTetheringAccessPointConfiguration()
      : super(activateClass(_className));
  NetworkOperatorTetheringAccessPointConfiguration.fromPtr(super.ptr);

  static const _className =
      'Windows.Networking.NetworkOperators.NetworkOperatorTetheringAccessPointConfiguration';

  late final _iNetworkOperatorTetheringAccessPointConfiguration =
      INetworkOperatorTetheringAccessPointConfiguration.from(this);

  @override
  String get ssid => _iNetworkOperatorTetheringAccessPointConfiguration.ssid;

  @override
  set ssid(String value) =>
      _iNetworkOperatorTetheringAccessPointConfiguration.ssid = value;

  @override
  String get passphrase =>
      _iNetworkOperatorTetheringAccessPointConfiguration.passphrase;

  @override
  set passphrase(String value) =>
      _iNetworkOperatorTetheringAccessPointConfiguration.passphrase = value;

  late final _iNetworkOperatorTetheringAccessPointConfiguration2 =
      INetworkOperatorTetheringAccessPointConfiguration2.from(this);

  @override
  bool isBandSupported(TetheringWiFiBand band) =>
      _iNetworkOperatorTetheringAccessPointConfiguration2.isBandSupported(band);

  @override
  Future<bool> isBandSupportedAsync(TetheringWiFiBand band) =>
      _iNetworkOperatorTetheringAccessPointConfiguration2
          .isBandSupportedAsync(band);

  @override
  TetheringWiFiBand get band =>
      _iNetworkOperatorTetheringAccessPointConfiguration2.band;

  @override
  set band(TetheringWiFiBand value) =>
      _iNetworkOperatorTetheringAccessPointConfiguration2.band = value;
}
