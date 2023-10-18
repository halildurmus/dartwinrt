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
const IID_IGeocoordinateWithRemoteSource =
    '{397cebd7-ee38-5f3b-8900-c4a7bc9cf953}';

class IGeocoordinateWithRemoteSource extends IInspectable {
  IGeocoordinateWithRemoteSource.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IGeocoordinateWithRemoteSourceVtbl>().ref;

  final _IGeocoordinateWithRemoteSourceVtbl _vtable;

  factory IGeocoordinateWithRemoteSource.from(IInspectable interface) =>
      interface.cast(IGeocoordinateWithRemoteSource.fromPtr,
          IID_IGeocoordinateWithRemoteSource);

  bool get isRemoteSource {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsRemoteSource.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IGeocoordinateWithRemoteSourceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsRemoteSource;
}
