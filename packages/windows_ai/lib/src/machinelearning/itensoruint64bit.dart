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
const IID_ITensorUInt64Bit = '{2e70ffad-04bf-4825-839a-82baef8c7886}';

class ITensorUInt64Bit extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITensorUInt64Bit.fromPtr(super.ptr);

  factory ITensorUInt64Bit.from(IInspectable interface) =>
      ITensorUInt64Bit.fromPtr(interface.toInterface(IID_ITensorUInt64Bit));

  List<int> getAsVectorView() {
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
      throw WindowsException(hr);
    }

    return IVectorView<int>.fromPtr(result,
            iterableIid: '{4b3a3229-7995-5f3c-b248-6c1f7e664f01}',
            intType: IntType.uint64)
        .toList();
  }
}
