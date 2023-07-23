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

/// @nodoc
const IID_ITensorDouble = '{91e41252-7a8f-4f0e-a28f-9637ffc8a3d0}';

class ITensorDouble extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITensorDouble.fromPtr(super.ptr);

  factory ITensorDouble.from(IInspectable interface) =>
      ITensorDouble.fromPtr(interface.toInterface(IID_ITensorDouble));

  List<double> getAsVectorView() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<double>.fromPtr(result,
            iterableIid: '{c738964e-9c64-5bce-b5ce-61e9a282ec4a}',
            doubleType: DoubleType.double)
        .toList();
  }
}
