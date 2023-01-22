// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'calendar.dart';

/// @nodoc
const IID_ICalendarFactory2 = '{b44b378c-ca7e-4590-9e72-ea2bec1a5115}';

/// {@category interface}
class ICalendarFactory2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICalendarFactory2.fromRawPointer(super.ptr);

  factory ICalendarFactory2.from(IInspectable interface) =>
      ICalendarFactory2.fromRawPointer(
          interface.toInterface(IID_ICalendarFactory2));

  Calendar createCalendarWithTimeZone(IIterable<String> languages,
      String calendar, String clock, String timeZoneId) {
    final retValuePtr = calloc<COMObject>();

    final calendarHString = convertToHString(calendar);
    final clockHString = convertToHString(clock);
    final timeZoneIdHString = convertToHString(timeZoneId);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer,
                            LPVTBL languages,
                            IntPtr calendar,
                            IntPtr clock,
                            IntPtr timeZoneId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, LPVTBL languages, int calendar, int clock,
                    int timeZoneId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        languages.ptr.ref.lpVtbl,
        calendarHString,
        clockHString,
        timeZoneIdHString,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);
    WindowsDeleteString(timeZoneIdHString);

    return Calendar.fromRawPointer(retValuePtr);
  }
}
