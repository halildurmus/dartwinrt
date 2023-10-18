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

import 'calendar.dart';

/// @nodoc
const IID_ICalendarFactory = '{83f58412-e56b-4c75-a66e-0f63d57758a6}';

class ICalendarFactory extends IInspectable {
  ICalendarFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICalendarFactoryVtbl>().ref;

  final _ICalendarFactoryVtbl _vtable;

  factory ICalendarFactory.from(IInspectable interface) =>
      interface.cast(ICalendarFactory.fromPtr, IID_ICalendarFactory);

  Calendar createCalendarDefaultCalendarAndClock(IIterable<String>? languages) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateCalendarDefaultCalendarAndClock.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer languages,
            Pointer<COMObject> result)>()(lpVtbl, languages.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return Calendar.fromPtr(result);
  }

  Calendar createCalendar(
      IIterable<String>? languages, String calendar, String clock) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateCalendar.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer languages,
                int calendar, int clock, Pointer<COMObject> result)>()(lpVtbl,
        languages.lpVtbl, calendar.toHString(), clock.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return Calendar.fromPtr(result);
  }
}

final class _ICalendarFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer languages,
                  Pointer<COMObject> result)>>
      CreateCalendarDefaultCalendarAndClock;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer languages,
              IntPtr calendar,
              IntPtr clock,
              Pointer<COMObject> result)>> CreateCalendar;
}
