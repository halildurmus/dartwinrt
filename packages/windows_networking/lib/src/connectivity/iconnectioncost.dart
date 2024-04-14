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

import 'networkcosttype.dart';

/// @nodoc
const IID_IConnectionCost = '{bad7d829-3416-4b10-a202-bac0b075bdae}';

class IConnectionCost extends IInspectable {
  IConnectionCost.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionCostVtbl>().ref;

  final _IConnectionCostVtbl _vtable;

  factory IConnectionCost.from(IInspectable interface) =>
      interface.cast(IConnectionCost.fromPtr, IID_IConnectionCost);

  NetworkCostType get networkCostType {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NetworkCostType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NetworkCostType.from(value.value);
    } finally {
      free(value);
    }
  }

  bool get roaming {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Roaming.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get overDataLimit {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_OverDataLimit.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get approachingDataLimit {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ApproachingDataLimit.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IConnectionCostVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NetworkCostType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Roaming;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_OverDataLimit;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ApproachingDataLimit;
}
