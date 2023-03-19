// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'buffer.dart';

/// @nodoc
const IID_IBufferFactory = '{71af914d-c10f-484b-bc50-14bc623b3a27}';

/// {@category interface}
class IBufferFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IBufferFactory.fromPtr(super.ptr);

  factory IBufferFactory.from(IInspectable interface) =>
      IBufferFactory.fromPtr(interface.toInterface(IID_IBufferFactory));

  Buffer create(int capacity) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Uint32 capacity,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int capacity,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, capacity, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Buffer.fromPtr(retValuePtr);
  }
}
