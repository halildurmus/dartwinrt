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

import 'datetimeformatter.dart';

/// @nodoc
const IID_IDateTimeFormatterStatics = '{bfcde7c0-df4c-4a2e-9012-f47daf3f1212}';

class IDateTimeFormatterStatics extends IInspectable {
  IDateTimeFormatterStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDateTimeFormatterStaticsVtbl>().ref;

  final _IDateTimeFormatterStaticsVtbl _vtable;

  factory IDateTimeFormatterStatics.from(IInspectable interface) => interface
      .cast(IDateTimeFormatterStatics.fromPtr, IID_IDateTimeFormatterStatics);

  DateTimeFormatter? get longDate {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LongDate.asFunction<
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

    return DateTimeFormatter.fromPtr(value);
  }

  DateTimeFormatter? get longTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LongTime.asFunction<
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

    return DateTimeFormatter.fromPtr(value);
  }

  DateTimeFormatter? get shortDate {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ShortDate.asFunction<
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

    return DateTimeFormatter.fromPtr(value);
  }

  DateTimeFormatter? get shortTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ShortTime.asFunction<
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

    return DateTimeFormatter.fromPtr(value);
  }
}

final class _IDateTimeFormatterStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LongDate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LongTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ShortDate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ShortTime;
}
