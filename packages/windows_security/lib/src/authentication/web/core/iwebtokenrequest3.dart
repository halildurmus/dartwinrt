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
const IID_IWebTokenRequest3 = '{5a755b51-3bb1-41a5-a63d-90bc32c7db9a}';

class IWebTokenRequest3 extends IInspectable {
  IWebTokenRequest3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebTokenRequest3Vtbl>().ref;

  final _IWebTokenRequest3Vtbl _vtable;

  factory IWebTokenRequest3.from(IInspectable interface) =>
      interface.cast(IWebTokenRequest3.fromPtr, IID_IWebTokenRequest3);

  String get correlationId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CorrelationId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set correlationId(String value) {
    final hr = _vtable.put_CorrelationId
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IWebTokenRequest3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_CorrelationId;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_CorrelationId;
}
