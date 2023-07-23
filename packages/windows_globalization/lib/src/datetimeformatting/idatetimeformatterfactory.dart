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

class IDateTimeFormatterFactory extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IDateTimeFormatterFactory.fromPtr(super.ptr);

  factory IDateTimeFormatterFactory.from(IInspectable interface) =>
      IDateTimeFormatterFactory.fromPtr(
          interface.toInterface(IID_IDateTimeFormatterFactory));

  DateTimeFormatter createDateTimeFormatter(String formatTemplate) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr formatTemplate,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int formatTemplate,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, formatTemplate.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }

  DateTimeFormatter createDateTimeFormatterLanguages(
      String formatTemplate, IIterable<String>? languages) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr formatTemplate,
                            VTablePointer languages,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int formatTemplate,
                    VTablePointer languages, Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, formatTemplate.toHString(), languages.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }

  DateTimeFormatter createDateTimeFormatterContext(
      String formatTemplate,
      IIterable<String>? languages,
      String geographicRegion,
      String calendar,
      String clock) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr formatTemplate,
                            VTablePointer languages,
                            IntPtr geographicRegion,
                            IntPtr calendar,
                            IntPtr clock,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int formatTemplate,
                    VTablePointer languages,
                    int geographicRegion,
                    int calendar,
                    int clock,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        formatTemplate.toHString(),
        languages.lpVtbl,
        geographicRegion.toHString(),
        calendar.toHString(),
        clock.toHString(),
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }

  DateTimeFormatter createDateTimeFormatterDate(
      YearFormat yearFormat,
      MonthFormat monthFormat,
      DayFormat dayFormat,
      DayOfWeekFormat dayOfWeekFormat) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 yearFormat,
                            Int32 monthFormat,
                            Int32 dayFormat,
                            Int32 dayOfWeekFormat,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int yearFormat,
                    int monthFormat,
                    int dayFormat,
                    int dayOfWeekFormat,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        yearFormat.value,
        monthFormat.value,
        dayFormat.value,
        dayOfWeekFormat.value,
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }

  DateTimeFormatter createDateTimeFormatterTime(HourFormat hourFormat,
      MinuteFormat minuteFormat, SecondFormat secondFormat) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 hourFormat,
                            Int32 minuteFormat,
                            Int32 secondFormat,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int hourFormat,
                    int minuteFormat,
                    int secondFormat,
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl,
        hourFormat.value, minuteFormat.value, secondFormat.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }

  DateTimeFormatter createDateTimeFormatterDateTimeLanguages(
      YearFormat yearFormat,
      MonthFormat monthFormat,
      DayFormat dayFormat,
      DayOfWeekFormat dayOfWeekFormat,
      HourFormat hourFormat,
      MinuteFormat minuteFormat,
      SecondFormat secondFormat,
      IIterable<String>? languages) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 yearFormat,
                            Int32 monthFormat,
                            Int32 dayFormat,
                            Int32 dayOfWeekFormat,
                            Int32 hourFormat,
                            Int32 minuteFormat,
                            Int32 secondFormat,
                            VTablePointer languages,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int yearFormat,
                    int monthFormat,
                    int dayFormat,
                    int dayOfWeekFormat,
                    int hourFormat,
                    int minuteFormat,
                    int secondFormat,
                    VTablePointer languages,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        yearFormat.value,
        monthFormat.value,
        dayFormat.value,
        dayOfWeekFormat.value,
        hourFormat.value,
        minuteFormat.value,
        secondFormat.value,
        languages.lpVtbl,
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }

  DateTimeFormatter createDateTimeFormatterDateTimeContext(
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
      String clock) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 yearFormat,
                            Int32 monthFormat,
                            Int32 dayFormat,
                            Int32 dayOfWeekFormat,
                            Int32 hourFormat,
                            Int32 minuteFormat,
                            Int32 secondFormat,
                            VTablePointer languages,
                            IntPtr geographicRegion,
                            IntPtr calendar,
                            IntPtr clock,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int yearFormat,
                    int monthFormat,
                    int dayFormat,
                    int dayOfWeekFormat,
                    int hourFormat,
                    int minuteFormat,
                    int secondFormat,
                    VTablePointer languages,
                    int geographicRegion,
                    int calendar,
                    int clock,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        yearFormat.value,
        monthFormat.value,
        dayFormat.value,
        dayOfWeekFormat.value,
        hourFormat.value,
        minuteFormat.value,
        secondFormat.value,
        languages.lpVtbl,
        geographicRegion.toHString(),
        calendar.toHString(),
        clock.toHString(),
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return DateTimeFormatter.fromPtr(result);
  }
}
