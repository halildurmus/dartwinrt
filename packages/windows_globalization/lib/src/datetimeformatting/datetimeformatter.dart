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

import 'dayformat.dart';
import 'dayofweekformat.dart';
import 'hourformat.dart';
import 'idatetimeformatter.dart';
import 'idatetimeformatter2.dart';
import 'idatetimeformatterfactory.dart';
import 'idatetimeformatterstatics.dart';
import 'minuteformat.dart';
import 'monthformat.dart';
import 'secondformat.dart';
import 'yearformat.dart';

/// Formats dates and times.
class DateTimeFormatter extends IInspectable
    implements IDateTimeFormatter, IDateTimeFormatter2 {
  DateTimeFormatter.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.DateTimeFormatting.DateTimeFormatter';

  factory DateTimeFormatter.createDateTimeFormatter(String formatTemplate) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatter(formatTemplate);

  factory DateTimeFormatter.createDateTimeFormatterLanguages(
          String formatTemplate, IIterable<String>? languages) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatterLanguages(formatTemplate, languages);

  factory DateTimeFormatter.createDateTimeFormatterContext(
          String formatTemplate,
          IIterable<String>? languages,
          String geographicRegion,
          String calendar,
          String clock) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatterContext(
              formatTemplate, languages, geographicRegion, calendar, clock);

  factory DateTimeFormatter.createDateTimeFormatterDate(
          YearFormat yearFormat,
          MonthFormat monthFormat,
          DayFormat dayFormat,
          DayOfWeekFormat dayOfWeekFormat) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatterDate(
              yearFormat, monthFormat, dayFormat, dayOfWeekFormat);

  factory DateTimeFormatter.createDateTimeFormatterTime(HourFormat hourFormat,
          MinuteFormat minuteFormat, SecondFormat secondFormat) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatterTime(hourFormat, minuteFormat, secondFormat);

  factory DateTimeFormatter.createDateTimeFormatterDateTimeLanguages(
          YearFormat yearFormat,
          MonthFormat monthFormat,
          DayFormat dayFormat,
          DayOfWeekFormat dayOfWeekFormat,
          HourFormat hourFormat,
          MinuteFormat minuteFormat,
          SecondFormat secondFormat,
          IIterable<String>? languages) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatterDateTimeLanguages(
              yearFormat,
              monthFormat,
              dayFormat,
              dayOfWeekFormat,
              hourFormat,
              minuteFormat,
              secondFormat,
              languages);

  factory DateTimeFormatter.createDateTimeFormatterDateTimeContext(
          YearFormat yearFormat,
          MonthFormat monthFormat,
          DayFormat dayFormat,
          DayOfWeekFormat dayOfWeekFormat,
          HourFormat hourFormat,
          MinuteFormat minuteFormat,
          SecondFormat secondFormat,
          IIterable<String>? languages,
          String geographicRegion,
          String calendar,
          String clock) =>
      createActivationFactory(IDateTimeFormatterFactory.fromPtr, _className,
              IID_IDateTimeFormatterFactory)
          .createDateTimeFormatterDateTimeContext(
              yearFormat,
              monthFormat,
              dayFormat,
              dayOfWeekFormat,
              hourFormat,
              minuteFormat,
              secondFormat,
              languages,
              geographicRegion,
              calendar,
              clock);

  static DateTimeFormatter? get longDate => createActivationFactory(
          IDateTimeFormatterStatics.fromPtr,
          _className,
          IID_IDateTimeFormatterStatics)
      .longDate;

  static DateTimeFormatter? get longTime => createActivationFactory(
          IDateTimeFormatterStatics.fromPtr,
          _className,
          IID_IDateTimeFormatterStatics)
      .longTime;

  static DateTimeFormatter? get shortDate => createActivationFactory(
          IDateTimeFormatterStatics.fromPtr,
          _className,
          IID_IDateTimeFormatterStatics)
      .shortDate;

  static DateTimeFormatter? get shortTime => createActivationFactory(
          IDateTimeFormatterStatics.fromPtr,
          _className,
          IID_IDateTimeFormatterStatics)
      .shortTime;

  late final _iDateTimeFormatter = IDateTimeFormatter.from(this);

  @override
  List<String>? get languages => _iDateTimeFormatter.languages;

  @override
  String get geographicRegion => _iDateTimeFormatter.geographicRegion;

  @override
  String get calendar => _iDateTimeFormatter.calendar;

  @override
  String get clock => _iDateTimeFormatter.clock;

  @override
  String get numeralSystem => _iDateTimeFormatter.numeralSystem;

  @override
  set numeralSystem(String value) => _iDateTimeFormatter.numeralSystem = value;

  @override
  List<String>? get patterns => _iDateTimeFormatter.patterns;

  @override
  String get template => _iDateTimeFormatter.template;

  @override
  String format(DateTime value) => _iDateTimeFormatter.format(value);

  @override
  YearFormat get includeYear => _iDateTimeFormatter.includeYear;

  @override
  MonthFormat get includeMonth => _iDateTimeFormatter.includeMonth;

  @override
  DayOfWeekFormat get includeDayOfWeek => _iDateTimeFormatter.includeDayOfWeek;

  @override
  DayFormat get includeDay => _iDateTimeFormatter.includeDay;

  @override
  HourFormat get includeHour => _iDateTimeFormatter.includeHour;

  @override
  MinuteFormat get includeMinute => _iDateTimeFormatter.includeMinute;

  @override
  SecondFormat get includeSecond => _iDateTimeFormatter.includeSecond;

  @override
  String get resolvedLanguage => _iDateTimeFormatter.resolvedLanguage;

  @override
  String get resolvedGeographicRegion =>
      _iDateTimeFormatter.resolvedGeographicRegion;

  late final _iDateTimeFormatter2 = IDateTimeFormatter2.from(this);

  @override
  String formatUsingTimeZone(DateTime datetime, String timeZoneId) =>
      _iDateTimeFormatter2.formatUsingTimeZone(datetime, timeZoneId);
}
