// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values used to indicate the class of data service provided by a
/// WWAN network connection.
///
/// {@category enum}
class WwanDataClass extends WinRTFlagsEnum<WwanDataClass> {
  const WwanDataClass(super.value, {super.name});

  factory WwanDataClass.from(int value) => WwanDataClass.values
      .firstWhere((e) => e.value == value, orElse: () => WwanDataClass(value));

  static const none = WwanDataClass(0, name: 'none');
  static const gprs = WwanDataClass(1, name: 'gprs');
  static const edge = WwanDataClass(2, name: 'edge');
  static const umts = WwanDataClass(4, name: 'umts');
  static const hsdpa = WwanDataClass(8, name: 'hsdpa');
  static const hsupa = WwanDataClass(16, name: 'hsupa');
  static const lteAdvanced = WwanDataClass(32, name: 'lteAdvanced');
  static const cdma1xRtt = WwanDataClass(65536, name: 'cdma1xRtt');
  static const cdma1xEvdo = WwanDataClass(131072, name: 'cdma1xEvdo');
  static const cdma1xEvdoRevA = WwanDataClass(262144, name: 'cdma1xEvdoRevA');
  static const cdma1xEvdv = WwanDataClass(524288, name: 'cdma1xEvdv');
  static const cdma3xRtt = WwanDataClass(1048576, name: 'cdma3xRtt');
  static const cdma1xEvdoRevB = WwanDataClass(2097152, name: 'cdma1xEvdoRevB');
  static const cdmaUmb = WwanDataClass(4194304, name: 'cdmaUmb');
  static const custom = WwanDataClass(2147483648, name: 'custom');

  static const List<WwanDataClass> values = [
    none,
    gprs,
    edge,
    umts,
    hsdpa,
    hsupa,
    lteAdvanced,
    cdma1xRtt,
    cdma1xEvdo,
    cdma1xEvdoRevA,
    cdma1xEvdv,
    cdma3xRtt,
    cdma1xEvdoRevB,
    cdmaUmb,
    custom
  ];

  @override
  WwanDataClass operator &(WwanDataClass other) =>
      WwanDataClass(value & other.value);

  @override
  WwanDataClass operator |(WwanDataClass other) =>
      WwanDataClass(value | other.value);
}
