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
const IID_ITensorInt16Bit = '{98a32d39-e6d6-44af-8afa-baebc44dc020}';

class ITensorInt16Bit extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITensorInt16Bit.fromPtr(super.ptr);

  factory ITensorInt16Bit.from(IInspectable interface) =>
      ITensorInt16Bit.fromPtr(interface.toInterface(IID_ITensorInt16Bit));

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
        iterableIid: '{72ff2923-4b4e-53bb-8feb-41ec5f2bb734}',
        intType: IntType.int16);
    return vectorView.toList();
  }
}
