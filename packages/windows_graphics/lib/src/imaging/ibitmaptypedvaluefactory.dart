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

import 'bitmaptypedvalue.dart';

/// @nodoc
const IID_IBitmapTypedValueFactory = '{92dbb599-ce13-46bb-9545-cb3a3f63eb8b}';

class IBitmapTypedValueFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IBitmapTypedValueFactory.fromPtr(super.ptr);

  factory IBitmapTypedValueFactory.from(IInspectable interface) =>
      IBitmapTypedValueFactory.fromPtr(
          interface.toInterface(IID_IBitmapTypedValueFactory));

  BitmapTypedValue create(Object? value, PropertyType type) {
    final bitmapTypedValue = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer value,
                                Int32 type,
                                Pointer<COMObject> bitmapTypedValue)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer value,
                        int type, Pointer<COMObject> bitmapTypedValue)>()(
            ptr.ref.lpVtbl,
            value?.intoBox().lpVtbl ?? nullptr,
            type.value,
            bitmapTypedValue);

    if (FAILED(hr)) {
      free(bitmapTypedValue);
      throwWindowsException(hr);
    }

    return BitmapTypedValue.fromPtr(bitmapTypedValue);
  }
}
