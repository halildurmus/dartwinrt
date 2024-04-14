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
const IID_ITensorUInt64Bit = '{2e70ffad-04bf-4825-839a-82baef8c7886}';

class ITensorUInt64Bit extends IInspectable {
  ITensorUInt64Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorUInt64BitVtbl>().ref;

  final _ITensorUInt64BitVtbl _vtable;

  factory ITensorUInt64Bit.from(IInspectable interface) =>
      interface.cast(ITensorUInt64Bit.fromPtr, IID_ITensorUInt64Bit);

  List<int> getAsVectorView() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetAsVectorView.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<int>.fromPtr(result,
            iterableIid: '{4b3a3229-7995-5f3c-b248-6c1f7e664f01}',
            tIntType: IntType.uint64)
        .toList();
  }
}

final class _ITensorUInt64BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
