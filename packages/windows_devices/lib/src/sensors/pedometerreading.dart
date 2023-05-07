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

import 'ipedometerreading.dart';
import 'pedometerstepkind.dart';

/// Provides an interface for a pedometer to measure the number of steps
/// taken.
///
/// {@category class}
class PedometerReading extends IInspectable implements IPedometerReading {
  PedometerReading.fromPtr(super.ptr);

  late final _iPedometerReading = IPedometerReading.from(this);

  @override
  PedometerStepKind get stepKind => _iPedometerReading.stepKind;

  @override
  int get cumulativeSteps => _iPedometerReading.cumulativeSteps;

  @override
  DateTime get timestamp => _iPedometerReading.timestamp;

  @override
  Duration get cumulativeStepsDuration =>
      _iPedometerReading.cumulativeStepsDuration;
}
