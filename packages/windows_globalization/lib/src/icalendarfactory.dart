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
import 'package:win32/win32.dart' hide DocumentProperties;
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
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL languages,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL languages,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, languagesPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    languages.release();

    return Calendar.fromRawPointer(retValuePtr);
  }

  Calendar createCalendar(
      IIterable<String> languages, String calendar, String clock) {
    final retValuePtr = calloc<COMObject>();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;
    final calendarHString = calendar.toHString();
    final clockHString = clock.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL languages,
                            IntPtr calendar,
                            IntPtr clock,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL languages, int calendar,
                    int clock, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        languagesPtr,
        calendarHString,
        clockHString,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    languages.release();
    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);

    return Calendar.fromRawPointer(retValuePtr);
  }
}
