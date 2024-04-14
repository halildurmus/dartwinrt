// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'calendar.dart';
import 'dayofweek.dart';

/// @nodoc
const IID_ICalendar = '{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}';

class ICalendar extends IInspectable {
  ICalendar.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICalendarVtbl>().ref;

  final _ICalendarVtbl _vtable;

  factory ICalendar.from(IInspectable interface) =>
      interface.cast(ICalendar.fromPtr, IID_ICalendar);

  Calendar? clone() {
    final value = calloc<COMObject>();

    final hr = _vtable.Clone.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return Calendar.fromPtr(value);
  }

  void setToMin() {
    final hr =
        _vtable.SetToMin.asFunction<int Function(VTablePointer lpVtbl)>()(
            lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setToMax() {
    final hr =
        _vtable.SetToMax.asFunction<int Function(VTablePointer lpVtbl)>()(
            lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<String>? get languages {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Languages.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }

  String get numeralSystem {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_NumeralSystem.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set numeralSystem(String value) {
    final hr = _vtable.put_NumeralSystem
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String getCalendarSystem() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetCalendarSystem.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  void changeCalendarSystem(String value) {
    final hr = _vtable.ChangeCalendarSystem.asFunction<
        int Function(
            VTablePointer lpVtbl, int value)>()(lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String getClock() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetClock.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  void changeClock(String value) {
    final hr = _vtable.ChangeClock.asFunction<
        int Function(
            VTablePointer lpVtbl, int value)>()(lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  DateTime getDateTime() {
    final result = calloc<Int64>();

    try {
      final hr = _vtable.GetDateTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartDateTime();
    } finally {
      free(result);
    }
  }

  void setDateTime(DateTime value) {
    final hr = _vtable.SetDateTime.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setToNow() {
    final hr =
        _vtable.SetToNow.asFunction<int Function(VTablePointer lpVtbl)>()(
            lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get firstEra {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstEra.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastEra {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastEra.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfEras {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfEras.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get era {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Era.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set era(int value) {
    final hr = _vtable.put_Era
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addEras(int eras) {
    final hr = _vtable.AddEras.asFunction<
        int Function(VTablePointer lpVtbl, int eras)>()(lpVtbl, eras);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String eraAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.EraAsFullString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String eraAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.EraAsString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get firstYearInThisEra {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstYearInThisEra.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastYearInThisEra {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastYearInThisEra.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfYearsInThisEra {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfYearsInThisEra.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get year {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Year.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set year(int value) {
    final hr = _vtable.put_Year
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addYears(int years) {
    final hr = _vtable.AddYears.asFunction<
        int Function(VTablePointer lpVtbl, int years)>()(lpVtbl, years);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String yearAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.YearAsString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String yearAsTruncatedString(int remainingDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.YearAsTruncatedString.asFunction<
          int Function(VTablePointer lpVtbl, int remainingDigits,
              Pointer<IntPtr> result)>()(lpVtbl, remainingDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String yearAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.YearAsPaddedString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get firstMonthInThisYear {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstMonthInThisYear.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastMonthInThisYear {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastMonthInThisYear.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfMonthsInThisYear {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfMonthsInThisYear.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get month {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Month.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set month(int value) {
    final hr = _vtable.put_Month
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addMonths(int months) {
    final hr = _vtable.AddMonths.asFunction<
        int Function(VTablePointer lpVtbl, int months)>()(lpVtbl, months);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String monthAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MonthAsFullString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String monthAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MonthAsString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String monthAsFullSoloString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MonthAsFullSoloString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String monthAsSoloString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MonthAsSoloString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String monthAsNumericString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MonthAsNumericString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String monthAsPaddedNumericString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MonthAsPaddedNumericString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  void addWeeks(int weeks) {
    final hr = _vtable.AddWeeks.asFunction<
        int Function(VTablePointer lpVtbl, int weeks)>()(lpVtbl, weeks);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get firstDayInThisMonth {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstDayInThisMonth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastDayInThisMonth {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastDayInThisMonth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfDaysInThisMonth {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfDaysInThisMonth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get day {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Day.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set day(int value) {
    final hr = _vtable.put_Day
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addDays(int days) {
    final hr = _vtable.AddDays.asFunction<
        int Function(VTablePointer lpVtbl, int days)>()(lpVtbl, days);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String dayAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.DayAsString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String dayAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.DayAsPaddedString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  DayOfWeek get dayOfWeek {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_DayOfWeek.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DayOfWeek.from(value.value);
    } finally {
      free(value);
    }
  }

  String dayOfWeekAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.DayOfWeekAsFullString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String dayOfWeekAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.DayOfWeekAsString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String dayOfWeekAsFullSoloString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.DayOfWeekAsFullSoloString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String dayOfWeekAsSoloString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.DayOfWeekAsSoloString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get firstPeriodInThisDay {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstPeriodInThisDay.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastPeriodInThisDay {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastPeriodInThisDay.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfPeriodsInThisDay {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfPeriodsInThisDay.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get period {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Period.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set period(int value) {
    final hr = _vtable.put_Period
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addPeriods(int periods) {
    final hr = _vtable.AddPeriods.asFunction<
        int Function(VTablePointer lpVtbl, int periods)>()(lpVtbl, periods);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String periodAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.PeriodAsFullString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String periodAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.PeriodAsString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get firstHourInThisPeriod {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstHourInThisPeriod.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastHourInThisPeriod {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastHourInThisPeriod.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfHoursInThisPeriod {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfHoursInThisPeriod.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get hour {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Hour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set hour(int value) {
    final hr = _vtable.put_Hour
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addHours(int hours) {
    final hr = _vtable.AddHours.asFunction<
        int Function(VTablePointer lpVtbl, int hours)>()(lpVtbl, hours);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String hourAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.HourAsString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String hourAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.HourAsPaddedString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get minute {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Minute.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set minute(int value) {
    final hr = _vtable.put_Minute
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addMinutes(int minutes) {
    final hr = _vtable.AddMinutes.asFunction<
        int Function(VTablePointer lpVtbl, int minutes)>()(lpVtbl, minutes);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String minuteAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MinuteAsString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String minuteAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.MinuteAsPaddedString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get second {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Second.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set second(int value) {
    final hr = _vtable.put_Second
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addSeconds(int seconds) {
    final hr = _vtable.AddSeconds.asFunction<
        int Function(VTablePointer lpVtbl, int seconds)>()(lpVtbl, seconds);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String secondAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.SecondAsString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String secondAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.SecondAsPaddedString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int get nanosecond {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Nanosecond.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set nanosecond(int value) {
    final hr = _vtable.put_Nanosecond
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addNanoseconds(int nanoseconds) {
    final hr = _vtable.AddNanoseconds.asFunction<
        int Function(
            VTablePointer lpVtbl, int nanoseconds)>()(lpVtbl, nanoseconds);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String nanosecondAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.NanosecondAsString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String nanosecondAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.NanosecondAsPaddedString.asFunction<
          int Function(VTablePointer lpVtbl, int minDigits,
              Pointer<IntPtr> result)>()(lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int compare(Calendar? other) {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.Compare.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer other,
              Pointer<Int32> result)>()(lpVtbl, other.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int compareDateTime(DateTime other) {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.CompareDateTime.asFunction<
              int Function(
                  VTablePointer lpVtbl, int other, Pointer<Int32> result)>()(
          lpVtbl, other.toWinRTDateTime(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  void copyTo(Calendar? other) {
    final hr = _vtable.CopyTo.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer other)>()(lpVtbl, other.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get firstMinuteInThisHour {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstMinuteInThisHour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastMinuteInThisHour {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastMinuteInThisHour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfMinutesInThisHour {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfMinutesInThisHour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get firstSecondInThisMinute {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FirstSecondInThisMinute.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastSecondInThisMinute {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_LastSecondInThisMinute.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfSecondsInThisMinute {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NumberOfSecondsInThisMinute.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get resolvedLanguage {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ResolvedLanguage.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  bool get isDaylightSavingTime {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsDaylightSavingTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _ICalendarVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      Clone;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      SetToMin;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      SetToMax;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Languages;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_NumeralSystem;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_NumeralSystem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      GetCalendarSystem;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      ChangeCalendarSystem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      GetClock;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      ChangeClock;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> result)>>
      GetDateTime;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      SetDateTime;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      SetToNow;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstEra;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastEra;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfEras;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Era;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Era;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 eras)>>
      AddEras;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      EraAsFullString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> EraAsString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstYearInThisEra;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastYearInThisEra;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfYearsInThisEra;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Year;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Year;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 years)>>
      AddYears;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      YearAsString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 remainingDigits,
              Pointer<IntPtr> result)>> YearAsTruncatedString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> YearAsPaddedString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstMonthInThisYear;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastMonthInThisYear;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfMonthsInThisYear;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Month;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Month;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 months)>>
      AddMonths;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      MonthAsFullString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> MonthAsString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      MonthAsFullSoloString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> MonthAsSoloString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      MonthAsNumericString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> MonthAsPaddedNumericString;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 weeks)>>
      AddWeeks;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstDayInThisMonth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastDayInThisMonth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfDaysInThisMonth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Day;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Day;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 days)>>
      AddDays;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      DayAsString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> DayAsPaddedString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_DayOfWeek;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      DayOfWeekAsFullString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> DayOfWeekAsString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      DayOfWeekAsFullSoloString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> DayOfWeekAsSoloString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstPeriodInThisDay;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastPeriodInThisDay;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfPeriodsInThisDay;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Period;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Period;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 periods)>>
      AddPeriods;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      PeriodAsFullString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> PeriodAsString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstHourInThisPeriod;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastHourInThisPeriod;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfHoursInThisPeriod;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Hour;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Hour;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 hours)>>
      AddHours;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      HourAsString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> HourAsPaddedString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Minute;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Minute;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 minutes)>>
      AddMinutes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      MinuteAsString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> MinuteAsPaddedString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Second;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Second;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 seconds)>>
      AddSeconds;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      SecondAsString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> SecondAsPaddedString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Nanosecond;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Nanosecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 nanoseconds)>>
      AddNanoseconds;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      NanosecondAsString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
              Pointer<IntPtr> result)>> NanosecondAsPaddedString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer other,
              Pointer<Int32> result)>> Compare;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int64 other, Pointer<Int32> result)>>
      CompareDateTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer other)>> CopyTo;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstMinuteInThisHour;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastMinuteInThisHour;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfMinutesInThisHour;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FirstSecondInThisMinute;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_LastSecondInThisMinute;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NumberOfSecondsInThisMinute;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ResolvedLanguage;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsDaylightSavingTime;
}
