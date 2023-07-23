// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

import 'iincrementnumberrounder.dart';
import 'inumberrounder.dart';
import 'roundingalgorithm.dart';

/// Rounds numbers to a specified increment.
class IncrementNumberRounder extends IInspectable
    implements INumberRounder, IIncrementNumberRounder {
  IncrementNumberRounder() : super(activateClass(_className));
  IncrementNumberRounder.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.NumberFormatting.IncrementNumberRounder';

  late final _iNumberRounder = INumberRounder.from(this);

  @override
  int roundInt32(int value) => _iNumberRounder.roundInt32(value);

  @override
  int roundUInt32(int value) => _iNumberRounder.roundUInt32(value);

  @override
  int roundInt64(int value) => _iNumberRounder.roundInt64(value);

  @override
  int roundUInt64(int value) => _iNumberRounder.roundUInt64(value);

  @override
  double roundSingle(double value) => _iNumberRounder.roundSingle(value);

  @override
  double roundDouble(double value) => _iNumberRounder.roundDouble(value);

  late final _iIncrementNumberRounder = IIncrementNumberRounder.from(this);

  @override
  RoundingAlgorithm get roundingAlgorithm =>
      _iIncrementNumberRounder.roundingAlgorithm;

  @override
  set roundingAlgorithm(RoundingAlgorithm value) =>
      _iIncrementNumberRounder.roundingAlgorithm = value;

  @override
  double get increment => _iIncrementNumberRounder.increment;

  @override
  set increment(double value) => _iIncrementNumberRounder.increment = value;
}
