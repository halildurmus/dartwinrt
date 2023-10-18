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
const IID_IFileSavePicker3 = '{698aec69-ba3c-4e51-bd90-4abcbbf4cfaf}';

class IFileSavePicker3 extends IInspectable {
  IFileSavePicker3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFileSavePicker3Vtbl>().ref;

  final _IFileSavePicker3Vtbl _vtable;

  factory IFileSavePicker3.from(IInspectable interface) =>
      interface.cast(IFileSavePicker3.fromPtr, IID_IFileSavePicker3);

  String get enterpriseId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_EnterpriseId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set enterpriseId(String value) {
    final hr = _vtable.put_EnterpriseId
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFileSavePicker3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_EnterpriseId;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_EnterpriseId;
}
