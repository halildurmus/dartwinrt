// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_ITensorUInt16Bit = '{68140f4b-23c0-42f3-81f6-a891c011bc3f}';

class ITensorUInt16Bit extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITensorUInt16Bit.fromPtr(super.ptr);

  factory ITensorUInt16Bit.from(IInspectable interface) =>
      ITensorUInt16Bit.fromPtr(interface.toInterface(IID_ITensorUInt16Bit));

  List<int> getAsVectorView() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<int>.fromPtr(retValuePtr,
        iterableIid: '{ecfa9a6f-fa2e-5345-b297-efb4e8c6be87}',
        intType: IntType.uint16);
    return vectorView.toList();
  }
}
