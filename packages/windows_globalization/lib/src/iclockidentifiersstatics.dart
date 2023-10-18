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
const IID_IClockIdentifiersStatics = '{523805bb-12ec-4f83-bc31-b1b4376b0808}';

class IClockIdentifiersStatics extends IInspectable {
  IClockIdentifiersStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IClockIdentifiersStaticsVtbl>().ref;

  final _IClockIdentifiersStaticsVtbl _vtable;

  factory IClockIdentifiersStatics.from(IInspectable interface) => interface
      .cast(IClockIdentifiersStatics.fromPtr, IID_IClockIdentifiersStatics);

  String get twelveHour {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_TwelveHour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get twentyFourHour {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_TwentyFourHour.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IClockIdentifiersStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_TwelveHour;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_TwentyFourHour;
}
