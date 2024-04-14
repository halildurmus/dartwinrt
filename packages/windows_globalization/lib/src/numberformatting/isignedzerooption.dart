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
const IID_ISignedZeroOption = '{fd1cdd31-0a3c-49c4-a642-96a1564f4f30}';

class ISignedZeroOption extends IInspectable {
  ISignedZeroOption.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ISignedZeroOptionVtbl>().ref;

  final _ISignedZeroOptionVtbl _vtable;

  factory ISignedZeroOption.from(IInspectable interface) =>
      interface.cast(ISignedZeroOption.fromPtr, IID_ISignedZeroOption);

  bool get isZeroSigned {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsZeroSigned.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set isZeroSigned(bool value) {
    final hr = _vtable.put_IsZeroSigned
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ISignedZeroOptionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsZeroSigned;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IsZeroSigned;
}
