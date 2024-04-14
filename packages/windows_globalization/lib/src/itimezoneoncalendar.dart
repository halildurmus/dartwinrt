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

/// @nodoc
const IID_ITimeZoneOnCalendar = '{bb3c25e5-46cf-4317-a3f5-02621ad54478}';

class ITimeZoneOnCalendar extends IInspectable {
  ITimeZoneOnCalendar.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITimeZoneOnCalendarVtbl>().ref;

  final _ITimeZoneOnCalendarVtbl _vtable;

  factory ITimeZoneOnCalendar.from(IInspectable interface) =>
      interface.cast(ITimeZoneOnCalendar.fromPtr, IID_ITimeZoneOnCalendar);

  String getTimeZone() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetTimeZone.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  void changeTimeZone(String timeZoneId) {
    final hr = _vtable.ChangeTimeZone.asFunction<
            int Function(VTablePointer lpVtbl, int timeZoneId)>()(
        lpVtbl, timeZoneId.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String timeZoneAsFullString() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.TimeZoneAsFullString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String timeZoneAsString(int idealLength) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.TimeZoneAsString.asFunction<
          int Function(VTablePointer lpVtbl, int idealLength,
              Pointer<IntPtr> result)>()(lpVtbl, idealLength, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}

final class _ITimeZoneOnCalendarVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      GetTimeZone;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr timeZoneId)>>
      ChangeTimeZone;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      TimeZoneAsFullString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 idealLength,
              Pointer<IntPtr> result)>> TimeZoneAsString;
}
