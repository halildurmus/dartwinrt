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
const IID_IBitmapTypedValue = '{cd8044a9-2443-4000-b0cd-79316c56f589}';

class IBitmapTypedValue extends IInspectable {
  IBitmapTypedValue.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapTypedValueVtbl>().ref;

  final _IBitmapTypedValueVtbl _vtable;

  factory IBitmapTypedValue.from(IInspectable interface) =>
      interface.cast(IBitmapTypedValue.fromPtr, IID_IBitmapTypedValue);

  Object? get value {
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

    return IPropertyValue.fromPtr(value).value;
  }

  PropertyType get type {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PropertyType.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IBitmapTypedValueVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Value;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Type;
}
