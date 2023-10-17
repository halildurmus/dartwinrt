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
const IID_IConnectivityInterval = '{4faa3fff-6746-4824-a964-eed8e87f8709}';

class IConnectivityInterval extends IInspectable {
  IConnectivityInterval.fromPtr(super.ptr);

  factory IConnectivityInterval.from(IInspectable interface) =>
      interface.cast(IConnectivityInterval.fromPtr, IID_IConnectivityInterval);

  DateTime get startTime {
    final startTime = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> startTime)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> startTime)>()(lpVtbl, startTime);

      if (FAILED(hr)) throwWindowsException(hr);

      return startTime.toDartDateTime();
    } finally {
      free(startTime);
    }
  }

  Duration get connectionDuration {
    final duration = calloc<Int64>();

    try {
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> duration)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> duration)>()(lpVtbl, duration);

      if (FAILED(hr)) throwWindowsException(hr);

      return duration.toDartDuration();
    } finally {
      free(duration);
    }
  }
}
