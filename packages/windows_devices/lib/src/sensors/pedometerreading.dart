// pedometerreading.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.g.dart';
import 'ipedometerreading.dart';

/// Provides an interface for a pedometer to measure the number of steps
/// taken.
///
/// {@category Class}
/// {@category winrt}
class PedometerReading extends IInspectable implements IPedometerReading {
  PedometerReading.fromRawPointer(super.ptr);

  // IPedometerReading methods
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
