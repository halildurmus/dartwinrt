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
const IID_ICalendarFactory = '{83f58412-e56b-4c75-a66e-0f63d57758a6}';

class ICalendarFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ICalendarFactory.fromPtr(super.ptr);

  factory ICalendarFactory.from(IInspectable interface) =>
      ICalendarFactory.fromPtr(interface.toInterface(IID_ICalendarFactory));

  Calendar createCalendarDefaultCalendarAndClock(IIterable<String>? languages) {
    final result = calloc<COMObject>();

    final hr =
        ptr
                .ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer languages,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(
                        VTablePointer lpVtbl,
                        VTablePointer languages,
                        Pointer<COMObject>
                            result)>()(
            ptr.ref.lpVtbl,
            languages ==
                    null
                ? nullptr
                : IInspectable(languages
                        .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
                    .ptr
                    .ref
                    .lpVtbl,
            result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return Calendar.fromPtr(result);
  }

  Calendar createCalendar(
      IIterable<String>? languages, String calendar, String clock) {
    final result = calloc<COMObject>();
    final calendarHString = calendar.toHString();
    final clockHString = clock.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer languages,
                            IntPtr calendar,
                            IntPtr clock,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer languages,
                    int calendar, int clock, Pointer<COMObject> result)>()(
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
        result);

    WindowsDeleteString(calendarHString);
    WindowsDeleteString(clockHString);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return Calendar.fromPtr(result);
  }
}
