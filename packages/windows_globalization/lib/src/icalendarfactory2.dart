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

/// @nodoc
const IID_ICalendarFactory2 = '{b44b378c-ca7e-4590-9e72-ea2bec1a5115}';

class ICalendarFactory2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICalendarFactory2.fromPtr(super.ptr);

  factory ICalendarFactory2.from(IInspectable interface) =>
      ICalendarFactory2.fromPtr(interface.toInterface(IID_ICalendarFactory2));

  Calendar createCalendarWithTimeZone(IIterable<String>? languages,
      String calendar, String clock, String timeZoneId) {
    final result = calloc<COMObject>();
    final calendarHString = calendar.toHString();
    final clockHString = clock.toHString();
    final timeZoneIdHString = timeZoneId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer languages,
                            IntPtr calendar,
                            IntPtr clock,
                            IntPtr timeZoneId,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer languages,
                    int calendar,
                    int clock,
                    int timeZoneId,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        languages == null
            ? nullptr
            : IInspectable(languages
                    .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
                .ptr
                .ref
                .lpVtbl,
        calendarHString,
        clockHString,
        timeZoneIdHString,
        result);

    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);
    WindowsDeleteString(timeZoneIdHString);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return Calendar.fromPtr(result);
  }
}
