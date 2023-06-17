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
const IID_ITensorUInt8Bit = '{58e1ae27-622b-48e3-be22-d867aed1daac}';

class ITensorUInt8Bit extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITensorUInt8Bit.fromPtr(super.ptr);

  factory ITensorUInt8Bit.from(IInspectable interface) =>
      ITensorUInt8Bit.fromPtr(interface.toInterface(IID_ITensorUInt8Bit));

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
        iterableIid: '{88318266-f3fd-50fc-8f08-b823a41b60c1}',
        intType: IntType.uint8);
    return vectorView.toList();
  }
}
