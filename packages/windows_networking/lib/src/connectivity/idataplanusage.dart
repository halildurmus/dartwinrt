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
const IID_IDataPlanUsage = '{b921492d-3b44-47ff-b361-be59e69ed1b0}';

class IDataPlanUsage extends IInspectable {
  IDataPlanUsage.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDataPlanUsageVtbl>().ref;

  final _IDataPlanUsageVtbl _vtable;

  factory IDataPlanUsage.from(IInspectable interface) =>
      interface.cast(IDataPlanUsage.fromPtr, IID_IDataPlanUsage);

  int get megabytesUsed {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MegabytesUsed.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  DateTime get lastSyncTime {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_LastSyncTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }
}

final class _IDataPlanUsageVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MegabytesUsed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_LastSyncTime;
}
