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
const IID_IGeocoordinateWithPositionSourceTimestamp =
    '{8543fc02-c9f1-4610-afe0-8bc3a6a87036}';

class IGeocoordinateWithPositionSourceTimestamp extends IInspectable {
  IGeocoordinateWithPositionSourceTimestamp.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IGeocoordinateWithPositionSourceTimestampVtbl>()
            .ref;

  final _IGeocoordinateWithPositionSourceTimestampVtbl _vtable;

  factory IGeocoordinateWithPositionSourceTimestamp.from(
          IInspectable interface) =>
      interface.cast(IGeocoordinateWithPositionSourceTimestamp.fromPtr,
          IID_IGeocoordinateWithPositionSourceTimestamp);

  DateTime? get positionSourceTimestamp {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PositionSourceTimestamp.asFunction<
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

    return IReference<DateTime?>.fromPtr(value,
            referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}')
        .value;
  }
}

final class _IGeocoordinateWithPositionSourceTimestampVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PositionSourceTimestamp;
}
