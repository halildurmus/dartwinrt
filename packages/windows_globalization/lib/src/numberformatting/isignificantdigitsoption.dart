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
const IID_ISignificantDigitsOption = '{1d4dfcdd-2d43-4ee8-bbf1-c1b26a711a58}';

class ISignificantDigitsOption extends IInspectable {
  ISignificantDigitsOption.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ISignificantDigitsOptionVtbl>().ref;

  final _ISignificantDigitsOptionVtbl _vtable;

  factory ISignificantDigitsOption.from(IInspectable interface) => interface
      .cast(ISignificantDigitsOption.fromPtr, IID_ISignificantDigitsOption);

  int get significantDigits {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_SignificantDigits.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set significantDigits(int value) {
    final hr = _vtable.put_SignificantDigits
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ISignificantDigitsOptionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_SignificantDigits;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_SignificantDigits;
}
