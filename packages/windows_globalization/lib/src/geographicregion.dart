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

import 'igeographicregion.dart';
import 'igeographicregionfactory.dart';
import 'igeographicregionstatics.dart';

/// Describes a region. This is usually a country, but may be a macroregion.
class GeographicRegion extends IInspectable implements IGeographicRegion {
  GeographicRegion() : super(activateClass(_className));
  GeographicRegion.fromPtr(super.ptr);

  static const _className = 'Windows.Globalization.GeographicRegion';

  factory GeographicRegion.createGeographicRegion(
          String geographicRegionCode) =>
      createActivationFactory(IGeographicRegionFactory.fromPtr, _className,
              IID_IGeographicRegionFactory)
          .createGeographicRegion(geographicRegionCode);

  static bool isSupported(String geographicRegionCode) =>
      createActivationFactory(IGeographicRegionStatics.fromPtr, _className,
              IID_IGeographicRegionStatics)
          .isSupported(geographicRegionCode);

  late final _iGeographicRegion = IGeographicRegion.from(this);

  @override
  String get code => _iGeographicRegion.code;

  @override
  String get codeTwoLetter => _iGeographicRegion.codeTwoLetter;

  @override
  String get codeThreeLetter => _iGeographicRegion.codeThreeLetter;

  @override
  String get codeThreeDigit => _iGeographicRegion.codeThreeDigit;

  @override
  String get displayName => _iGeographicRegion.displayName;

  @override
  String get nativeName => _iGeographicRegion.nativeName;

  @override
  List<String> get currenciesInUse => _iGeographicRegion.currenciesInUse;
}
