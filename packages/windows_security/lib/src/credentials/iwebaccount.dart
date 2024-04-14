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

import 'webaccountprovider.dart';
import 'webaccountstate.dart';

/// @nodoc
const IID_IWebAccount = '{69473eb2-8031-49be-80bb-96cb46d99aba}';

class IWebAccount extends IInspectable {
  IWebAccount.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccountVtbl>().ref;

  final _IWebAccountVtbl _vtable;

  factory IWebAccount.from(IInspectable interface) =>
      interface.cast(IWebAccount.fromPtr, IID_IWebAccount);

  WebAccountProvider? get webAccountProvider {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WebAccountProvider.asFunction<
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

    return WebAccountProvider.fromPtr(value);
  }

  String get userName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_UserName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  WebAccountState get state {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_State.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return WebAccountState.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IWebAccountVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WebAccountProvider;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_UserName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_State;
}
