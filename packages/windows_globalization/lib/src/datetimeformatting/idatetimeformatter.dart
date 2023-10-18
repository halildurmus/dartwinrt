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

import 'dayformat.dart';
import 'dayofweekformat.dart';
import 'hourformat.dart';
import 'minuteformat.dart';
import 'monthformat.dart';
import 'secondformat.dart';
import 'yearformat.dart';

/// @nodoc
const IID_IDateTimeFormatter = '{95eeca10-73e0-4e4b-a183-3d6ad0ba35ec}';

class IDateTimeFormatter extends IInspectable {
  IDateTimeFormatter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDateTimeFormatterVtbl>().ref;

  final _IDateTimeFormatterVtbl _vtable;

  factory IDateTimeFormatter.from(IInspectable interface) =>
      interface.cast(IDateTimeFormatter.fromPtr, IID_IDateTimeFormatter);

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

  String get geographicRegion {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_GeographicRegion.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get calendar {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Calendar.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get clock {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Clock.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
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

  List<String>? get patterns {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Patterns.asFunction<
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

  String get template {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Template.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String format(DateTime value) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.Format.asFunction<
              int Function(
                  VTablePointer lpVtbl, int value, Pointer<IntPtr> result)>()(
          lpVtbl, value.toWinRTDateTime(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  YearFormat get includeYear {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeYear.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return YearFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  MonthFormat get includeMonth {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeMonth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MonthFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  DayOfWeekFormat get includeDayOfWeek {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeDayOfWeek.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DayOfWeekFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  DayFormat get includeDay {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeDay.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DayFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  HourFormat get includeHour {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeHour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return HourFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  MinuteFormat get includeMinute {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeMinute.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MinuteFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  SecondFormat get includeSecond {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IncludeSecond.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return SecondFormat.from(value.value);
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

  String get resolvedGeographicRegion {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ResolvedGeographicRegion.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IDateTimeFormatterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Languages;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_GeographicRegion;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Calendar;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Clock;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_NumeralSystem;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_NumeralSystem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Patterns;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Template;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int64 value, Pointer<IntPtr> result)>>
      Format;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeYear;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeMonth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeDayOfWeek;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeDay;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeHour;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeMinute;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IncludeSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ResolvedLanguage;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ResolvedGeographicRegion;
}
