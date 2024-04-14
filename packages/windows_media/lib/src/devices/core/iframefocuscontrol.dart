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
const IID_IFrameFocusControl = '{272df1d0-d912-4214-a67b-e38a8d48d8c6}';

class IFrameFocusControl extends IInspectable {
  IFrameFocusControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFrameFocusControlVtbl>().ref;

  final _IFrameFocusControlVtbl _vtable;

  factory IFrameFocusControl.from(IInspectable interface) =>
      interface.cast(IFrameFocusControl.fromPtr, IID_IFrameFocusControl);

  int? get value {
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  set value(int? value) {
    final hr = _vtable.put_Value.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference(IntType.uint32).lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFrameFocusControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Value;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Value;
}
