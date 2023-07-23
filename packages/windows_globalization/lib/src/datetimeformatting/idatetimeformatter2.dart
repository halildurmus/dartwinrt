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

/// @nodoc
const IID_IDateTimeFormatter2 = '{27c91a86-bdaa-4fd0-9e36-671d5aa5ee03}';

class IDateTimeFormatter2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDateTimeFormatter2.fromPtr(super.ptr);

  factory IDateTimeFormatter2.from(IInspectable interface) =>
      IDateTimeFormatter2.fromPtr(
          interface.toInterface(IID_IDateTimeFormatter2));

  String formatUsingTimeZone(DateTime datetime, String timeZoneId) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Int64 datetime,
                              IntPtr timeZoneId, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int datetime,
                      int timeZoneId, Pointer<IntPtr> result)>()(ptr.ref.lpVtbl,
          datetime.toWinRTDateTime(), timeZoneId.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}
