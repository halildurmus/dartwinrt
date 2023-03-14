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

import 'datetimeformatter.dart';
import 'dayformat.dart';
import 'dayofweekformat.dart';
import 'hourformat.dart';
import 'minuteformat.dart';
import 'monthformat.dart';
import 'secondformat.dart';
import 'yearformat.dart';

/// @nodoc
const IID_IDateTimeFormatterFactory = '{ec8d8a53-1a2e-412d-8815-3b745fb1a2a0}';

/// {@category interface}
class IDateTimeFormatterFactory extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IDateTimeFormatterFactory.fromPtr(super.ptr);

  factory IDateTimeFormatterFactory.from(IInspectable interface) =>
      IDateTimeFormatterFactory.fromPtr(
          interface.toInterface(IID_IDateTimeFormatterFactory));

  DateTimeFormatter createDateTimeFormatter(String formatTemplate) {
    final retValuePtr = calloc<COMObject>();
    final formatTemplateHString = formatTemplate.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr formatTemplate,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int formatTemplate,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, formatTemplateHString, retValuePtr);

    WindowsDeleteString(formatTemplateHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }

  DateTimeFormatter createDateTimeFormatterLanguages(
      String formatTemplate, IIterable<String> languages) {
    final retValuePtr = calloc<COMObject>();
    final formatTemplateHString = formatTemplate.toHString();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                IntPtr formatTemplate,
                                LPVTBL languages,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, int formatTemplate,
                        LPVTBL languages, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, formatTemplateHString, languagesPtr, retValuePtr);

    WindowsDeleteString(formatTemplateHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }

  DateTimeFormatter createDateTimeFormatterContext(
      String formatTemplate,
      IIterable<String> languages,
      String geographicRegion,
      String calendar,
      String clock) {
    final retValuePtr = calloc<COMObject>();
    final formatTemplateHString = formatTemplate.toHString();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;
    final geographicRegionHString = geographicRegion.toHString();
    final calendarHString = calendar.toHString();
    final clockHString = clock.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr formatTemplate,
                            LPVTBL languages,
                            IntPtr geographicRegion,
                            IntPtr calendar,
                            IntPtr clock,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int formatTemplate,
                    LPVTBL languages,
                    int geographicRegion,
                    int calendar,
                    int clock,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        formatTemplateHString,
        languagesPtr,
        geographicRegionHString,
        calendarHString,
        clockHString,
        retValuePtr);

    WindowsDeleteString(formatTemplateHString);
    WindowsDeleteString(geographicRegionHString);
    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }

  DateTimeFormatter createDateTimeFormatterDate(
      YearFormat yearFormat,
      MonthFormat monthFormat,
      DayFormat dayFormat,
      DayOfWeekFormat dayOfWeekFormat) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int32 yearFormat,
                            Int32 monthFormat,
                            Int32 dayFormat,
                            Int32 dayOfWeekFormat,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int yearFormat,
                    int monthFormat,
                    int dayFormat,
                    int dayOfWeekFormat,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        yearFormat.value,
        monthFormat.value,
        dayFormat.value,
        dayOfWeekFormat.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }

  DateTimeFormatter createDateTimeFormatterTime(HourFormat hourFormat,
      MinuteFormat minuteFormat, SecondFormat secondFormat) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int32 hourFormat,
                            Int32 minuteFormat,
                            Int32 secondFormat,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int hourFormat, int minuteFormat,
                    int secondFormat, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        hourFormat.value,
        minuteFormat.value,
        secondFormat.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }

  DateTimeFormatter createDateTimeFormatterDateTimeLanguages(
      YearFormat yearFormat,
      MonthFormat monthFormat,
      DayFormat dayFormat,
      DayOfWeekFormat dayOfWeekFormat,
      HourFormat hourFormat,
      MinuteFormat minuteFormat,
      SecondFormat secondFormat,
      IIterable<String> languages) {
    final retValuePtr = calloc<COMObject>();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int32 yearFormat,
                            Int32 monthFormat,
                            Int32 dayFormat,
                            Int32 dayOfWeekFormat,
                            Int32 hourFormat,
                            Int32 minuteFormat,
                            Int32 secondFormat,
                            LPVTBL languages,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int yearFormat,
                    int monthFormat,
                    int dayFormat,
                    int dayOfWeekFormat,
                    int hourFormat,
                    int minuteFormat,
                    int secondFormat,
                    LPVTBL languages,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        yearFormat.value,
        monthFormat.value,
        dayFormat.value,
        dayOfWeekFormat.value,
        hourFormat.value,
        minuteFormat.value,
        secondFormat.value,
        languagesPtr,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }

  DateTimeFormatter createDateTimeFormatterDateTimeContext(
      YearFormat yearFormat,
      MonthFormat monthFormat,
      DayFormat dayFormat,
      DayOfWeekFormat dayOfWeekFormat,
      HourFormat hourFormat,
      MinuteFormat minuteFormat,
      SecondFormat secondFormat,
      IIterable<String> languages,
      String geographicRegion,
      String calendar,
      String clock) {
    final retValuePtr = calloc<COMObject>();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;
    final geographicRegionHString = geographicRegion.toHString();
    final calendarHString = calendar.toHString();
    final clockHString = clock.toHString();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int32 yearFormat,
                            Int32 monthFormat,
                            Int32 dayFormat,
                            Int32 dayOfWeekFormat,
                            Int32 hourFormat,
                            Int32 minuteFormat,
                            Int32 secondFormat,
                            LPVTBL languages,
                            IntPtr geographicRegion,
                            IntPtr calendar,
                            IntPtr clock,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int yearFormat,
                    int monthFormat,
                    int dayFormat,
                    int dayOfWeekFormat,
                    int hourFormat,
                    int minuteFormat,
                    int secondFormat,
                    LPVTBL languages,
                    int geographicRegion,
                    int calendar,
                    int clock,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        yearFormat.value,
        monthFormat.value,
        dayFormat.value,
        dayOfWeekFormat.value,
        hourFormat.value,
        minuteFormat.value,
        secondFormat.value,
        languagesPtr,
        geographicRegionHString,
        calendarHString,
        clockHString,
        retValuePtr);

    WindowsDeleteString(geographicRegionHString);
    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(retValuePtr);
  }
}
