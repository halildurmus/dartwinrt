// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
const IID_ICalendarFactory2 = '{b44b378c-ca7e-4590-9e72-ea2bec1a5115}';

class ICalendarFactory2 extends IInspectable {
  ICalendarFactory2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICalendarFactory2Vtbl>().ref;

  final _ICalendarFactory2Vtbl _vtable;

  factory ICalendarFactory2.from(IInspectable interface) =>
      interface.cast(ICalendarFactory2.fromPtr, IID_ICalendarFactory2);

  Calendar createCalendarWithTimeZone(IIterable<String>? languages,
      String calendar, String clock, String timeZoneId) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateCalendarWithTimeZone.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer languages,
                int calendar,
                int clock,
                int timeZoneId,
                Pointer<COMObject> result)>()(
        lpVtbl,
        languages.lpVtbl,
        calendar.toHString(),
        clock.toHString(),
        timeZoneId.toHString(),
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return Calendar.fromPtr(result);
  }
}

final class _ICalendarFactory2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer languages,
              IntPtr calendar,
              IntPtr clock,
              IntPtr timeZoneId,
              Pointer<COMObject> result)>> CreateCalendarWithTimeZone;
}
