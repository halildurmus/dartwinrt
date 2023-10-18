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
const IID_IWebAccountProvider4 = '{718fd8db-e796-4210-b74e-84d29894b080}';

class IWebAccountProvider4 extends IInspectable {
  IWebAccountProvider4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccountProvider4Vtbl>().ref;

  final _IWebAccountProvider4Vtbl _vtable;

  factory IWebAccountProvider4.from(IInspectable interface) =>
      interface.cast(IWebAccountProvider4.fromPtr, IID_IWebAccountProvider4);

  bool get isSystemProvider {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsSystemProvider.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IWebAccountProvider4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsSystemProvider;
}
