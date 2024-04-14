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

import 'bitmaptypedvalue.dart';

/// @nodoc
const IID_IBitmapTypedValueFactory = '{92dbb599-ce13-46bb-9545-cb3a3f63eb8b}';

class IBitmapTypedValueFactory extends IInspectable {
  IBitmapTypedValueFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapTypedValueFactoryVtbl>().ref;

  final _IBitmapTypedValueFactoryVtbl _vtable;

  factory IBitmapTypedValueFactory.from(IInspectable interface) => interface
      .cast(IBitmapTypedValueFactory.fromPtr, IID_IBitmapTypedValueFactory);

  BitmapTypedValue create(Object? value, PropertyType type) {
    final bitmapTypedValue = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value, int type,
                Pointer<COMObject> bitmapTypedValue)>()(lpVtbl,
        value?.boxValue().lpVtbl ?? nullptr, type.value, bitmapTypedValue);

    if (FAILED(hr)) {
      free(bitmapTypedValue);
      throwWindowsException(hr);
    }

    return BitmapTypedValue.fromPtr(bitmapTypedValue);
  }
}

final class _IBitmapTypedValueFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Int32 type, Pointer<COMObject> bitmapTypedValue)>> Create;
}
