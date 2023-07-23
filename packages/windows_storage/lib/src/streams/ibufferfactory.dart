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

import 'buffer.dart';

/// @nodoc
const IID_IBufferFactory = '{71af914d-c10f-484b-bc50-14bc623b3a27}';

class IBufferFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IBufferFactory.fromPtr(super.ptr);

  factory IBufferFactory.from(IInspectable interface) =>
      IBufferFactory.fromPtr(interface.toInterface(IID_IBufferFactory));

  Buffer create(int capacity) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 capacity,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int capacity,
                Pointer<COMObject> value)>()(ptr.ref.lpVtbl, capacity, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return Buffer.fromPtr(value);
  }
}
