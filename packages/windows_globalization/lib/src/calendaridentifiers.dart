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

import 'icalendaridentifiersstatics.dart';
import 'icalendaridentifiersstatics2.dart';
import 'icalendaridentifiersstatics3.dart';

/// Contains the calendar identifiers for the supported calendars, as static
/// properties.
class CalendarIdentifiers extends IInspectable {
  CalendarIdentifiers.fromPtr(super.ptr);

  static const _className = 'Windows.Globalization.CalendarIdentifiers';

  static String get gregorian => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .gregorian;

  static String get hebrew => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .hebrew;

  static String get hijri => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .hijri;

  static String get japanese => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .japanese;

  static String get julian => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .julian;

  static String get korean => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .korean;

  static String get taiwan => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .taiwan;

  static String get thai => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .thai;

  static String get umAlQura => createActivationFactory(
          ICalendarIdentifiersStatics.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics)
      .umAlQura;

  static String get persian => createActivationFactory(
          ICalendarIdentifiersStatics2.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics2)
      .persian;

  static String get chineseLunar => createActivationFactory(
          ICalendarIdentifiersStatics3.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics3)
      .chineseLunar;

  static String get japaneseLunar => createActivationFactory(
          ICalendarIdentifiersStatics3.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics3)
      .japaneseLunar;

  static String get koreanLunar => createActivationFactory(
          ICalendarIdentifiersStatics3.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics3)
      .koreanLunar;

  static String get taiwanLunar => createActivationFactory(
          ICalendarIdentifiersStatics3.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics3)
      .taiwanLunar;

  static String get vietnameseLunar => createActivationFactory(
          ICalendarIdentifiersStatics3.fromPtr,
          _className,
          IID_ICalendarIdentifiersStatics3)
      .vietnameseLunar;
}
