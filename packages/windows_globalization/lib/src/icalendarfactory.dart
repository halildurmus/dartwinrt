// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'calendar.dart';

/// @nodoc
const IID_ICalendarFactory = '{83f58412-e56b-4c75-a66e-0f63d57758a6}';

/// {@category interface}
class ICalendarFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ICalendarFactory.fromRawPointer(super.ptr);

  factory ICalendarFactory.from(IInspectable interface) =>
      ICalendarFactory.fromRawPointer(
          interface.toInterface(IID_ICalendarFactory));

  Calendar createCalendarDefaultCalendarAndClock(IIterable<String> languages) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL languages, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL languages, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, languages.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Calendar.fromRawPointer(retValuePtr);
  }

  Calendar createCalendar(
      IIterable<String> languages, String calendar, String clock) {
    final retValuePtr = calloc<COMObject>();

    final calendarHString = convertToHString(calendar);
    final clockHString = convertToHString(clock);

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL,
                                LPVTBL languages,
                                IntPtr calendar,
                                IntPtr clock,
                                Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, LPVTBL languages, int calendar,
                        int clock, Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            languages.ptr.ref.lpVtbl,
            calendarHString,
            clockHString,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);

    return Calendar.fromRawPointer(retValuePtr);
  }
}
