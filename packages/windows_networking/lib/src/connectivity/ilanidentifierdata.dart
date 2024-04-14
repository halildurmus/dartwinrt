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
const IID_ILanIdentifierData = '{a74e83c3-d639-45be-a36a-c4e4aeaf6d9b}';

class ILanIdentifierData extends IInspectable {
  ILanIdentifierData.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILanIdentifierDataVtbl>().ref;

  final _ILanIdentifierDataVtbl _vtable;

  factory ILanIdentifierData.from(IInspectable interface) =>
      interface.cast(ILanIdentifierData.fromPtr, IID_ILanIdentifierData);

  int get type {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<int>? get value {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
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

    return IVectorView<int>.fromPtr(value,
            iterableIid: '{88318266-f3fd-50fc-8f08-b823a41b60c1}',
            tIntType: IntType.uint8)
        .toList();
  }
}

final class _ILanIdentifierDataVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Type;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Value;
}
