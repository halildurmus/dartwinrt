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
const IID_IBasicProperties = '{d05d55db-785e-4a66-be02-9beec58aea81}';

class IBasicProperties extends IInspectable {
  IBasicProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBasicPropertiesVtbl>().ref;

  final _IBasicPropertiesVtbl _vtable;

  factory IBasicProperties.from(IInspectable interface) =>
      interface.cast(IBasicProperties.fromPtr, IID_IBasicProperties);

  int get size {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_Size.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  DateTime get dateModified {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_DateModified.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  DateTime get itemDate {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_ItemDate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }
}

final class _IBasicPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_DateModified;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_ItemDate;
}
