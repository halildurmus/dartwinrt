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

import 'calendar.dart';
import 'dayofweek.dart';

/// @nodoc
const IID_ICalendar = '{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}';

class ICalendar extends IInspectable {
  // vtable begins at 6, is 98 entries long.
  ICalendar.fromPtr(super.ptr);

  factory ICalendar.from(IInspectable interface) =>
      ICalendar.fromPtr(interface.toInterface(IID_ICalendar));

  Calendar? clone() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setToMax() {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<String> get languages {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }

  String get numeralSystem {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  set numeralSystem(String value) {
    final valueHString = value.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String getCalendarSystem() {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  void changeCalendarSystem(String value) {
    final valueHString = value.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String getClock() {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  void changeClock(String value) {
    final valueHString = value.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(15)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, valueHString);

    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  DateTime getDateTime() {
    final result = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(16)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int64> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int64> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartDateTime();
    } finally {
      free(result);
    }
  }

  void setDateTime(DateTime value) {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setToNow() {
    final hr = ptr.ref.vtable
        .elementAt(18)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get firstEra {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(19)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastEra {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(20)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfEras {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(21)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get era {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(22)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set era(int value) {
    final hr = ptr.ref.vtable
            .elementAt(23)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addEras(int eras) {
    final hr = ptr.ref.vtable
            .elementAt(24)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 eras)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int eras)>()(
        ptr.ref.lpVtbl, eras);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String eraAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(25)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String eraAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int idealLength,
                  Pointer<IntPtr>
                      result)>()(ptr.ref.lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get firstYearInThisEra {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(27)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastYearInThisEra {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(28)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfYearsInThisEra {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(29)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get year {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(30)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set year(int value) {
    final hr = ptr.ref.vtable
            .elementAt(31)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addYears(int years) {
    final hr = ptr.ref.vtable
            .elementAt(32)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 years)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int years)>()(
        ptr.ref.lpVtbl, years);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String yearAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(33)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String yearAsTruncatedString(int remainingDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(34)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  Int32 remainingDigits,
                                  Pointer<IntPtr> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int remainingDigits,
                          Pointer<IntPtr> result)>()(
              ptr.ref.lpVtbl, remainingDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String yearAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get firstMonthInThisYear {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(36)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastMonthInThisYear {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(37)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfMonthsInThisYear {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(38)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get month {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(39)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set month(int value) {
    final hr = ptr.ref.vtable
            .elementAt(40)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addMonths(int months) {
    final hr =
        ptr.ref.vtable
                .elementAt(41)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Int32 months)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int months)>()(
            ptr.ref.lpVtbl, months);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String monthAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(42)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String monthAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int idealLength,
                  Pointer<IntPtr>
                      result)>()(ptr.ref.lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String monthAsFullSoloString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(44)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String monthAsSoloString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int idealLength,
                  Pointer<IntPtr>
                      result)>()(ptr.ref.lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String monthAsNumericString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(46)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String monthAsPaddedNumericString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  void addWeeks(int weeks) {
    final hr = ptr.ref.vtable
            .elementAt(48)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 weeks)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int weeks)>()(
        ptr.ref.lpVtbl, weeks);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get firstDayInThisMonth {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(49)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastDayInThisMonth {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(50)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfDaysInThisMonth {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(51)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get day {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(52)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set day(int value) {
    final hr = ptr.ref.vtable
            .elementAt(53)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addDays(int days) {
    final hr = ptr.ref.vtable
            .elementAt(54)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 days)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int days)>()(
        ptr.ref.lpVtbl, days);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String dayAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(55)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String dayAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  DayOfWeek get dayOfWeek {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(57)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DayOfWeek.from(value.value);
    } finally {
      free(value);
    }
  }

  String dayOfWeekAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(58)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String dayOfWeekAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int idealLength,
                  Pointer<IntPtr>
                      result)>()(ptr.ref.lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String dayOfWeekAsFullSoloString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(60)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String dayOfWeekAsSoloString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int idealLength,
                  Pointer<IntPtr>
                      result)>()(ptr.ref.lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get firstPeriodInThisDay {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(62)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastPeriodInThisDay {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(63)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfPeriodsInThisDay {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(64)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get period {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(65)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set period(int value) {
    final hr = ptr.ref.vtable
            .elementAt(66)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addPeriods(int periods) {
    final hr =
        ptr.ref.vtable
                .elementAt(67)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Int32 periods)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int periods)>()(
            ptr.ref.lpVtbl, periods);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String periodAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(68)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String periodAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int idealLength,
                  Pointer<IntPtr>
                      result)>()(ptr.ref.lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get firstHourInThisPeriod {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(70)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastHourInThisPeriod {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(71)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfHoursInThisPeriod {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(72)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get hour {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(73)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set hour(int value) {
    final hr = ptr.ref.vtable
            .elementAt(74)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addHours(int hours) {
    final hr = ptr.ref.vtable
            .elementAt(75)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 hours)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int hours)>()(
        ptr.ref.lpVtbl, hours);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String hourAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(76)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String hourAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get minute {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(78)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set minute(int value) {
    final hr = ptr.ref.vtable
            .elementAt(79)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addMinutes(int minutes) {
    final hr =
        ptr.ref.vtable
                .elementAt(80)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Int32 minutes)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int minutes)>()(
            ptr.ref.lpVtbl, minutes);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String minuteAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(81)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String minuteAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get second {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(83)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set second(int value) {
    final hr = ptr.ref.vtable
            .elementAt(84)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addSeconds(int seconds) {
    final hr =
        ptr.ref.vtable
                .elementAt(85)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Int32 seconds)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int seconds)>()(
            ptr.ref.lpVtbl, seconds);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String secondAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(86)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String secondAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int get nanosecond {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(88)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set nanosecond(int value) {
    final hr = ptr.ref.vtable
            .elementAt(89)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addNanoseconds(int nanoseconds) {
    final hr = ptr.ref.vtable
            .elementAt(90)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Int32 nanoseconds)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int nanoseconds)>()(
        ptr.ref.lpVtbl, nanoseconds);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String nanosecondAsString() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(91)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  String nanosecondAsPaddedString(int minDigits) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 minDigits,
                          Pointer<IntPtr> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int minDigits,
                  Pointer<IntPtr> result)>()(ptr.ref.lpVtbl, minDigits, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      WindowsDeleteString(result.value);
      free(result);
    }
  }

  int compare(Calendar? other) {
    final result = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(93)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer other, Pointer<Int32> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer other,
                      Pointer<Int32> result)>()(ptr.ref.lpVtbl,
          other == null ? nullptr : other.ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int compareDateTime(DateTime other) {
    final result = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(94)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Int64 other,
                              Pointer<Int32> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int other,
                      Pointer<Int32> result)>()(
          ptr.ref.lpVtbl, other.toWinRTDateTime(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  void copyTo(Calendar? other) {
    final hr = ptr.ref.vtable
            .elementAt(95)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer other)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer other)>()(
        ptr.ref.lpVtbl, other == null ? nullptr : other.ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get firstMinuteInThisHour {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(96)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastMinuteInThisHour {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(97)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfMinutesInThisHour {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(98)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get firstSecondInThisMinute {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(99)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get lastSecondInThisMinute {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(100)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get numberOfSecondsInThisMinute {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(101)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get resolvedLanguage {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(102)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  bool get isDaylightSavingTime {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(103)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}
