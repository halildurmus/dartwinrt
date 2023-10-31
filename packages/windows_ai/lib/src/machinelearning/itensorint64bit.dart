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
const IID_ITensorInt64Bit = '{499665ba-1fa2-45ad-af25-a0bd9bda4c87}';

class ITensorInt64Bit extends IInspectable {
  ITensorInt64Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt64BitVtbl>().ref;

  final _ITensorInt64BitVtbl _vtable;

  factory ITensorInt64Bit.from(IInspectable interface) =>
      interface.cast(ITensorInt64Bit.fromPtr, IID_ITensorInt64Bit);

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
            iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}',
            tIntType: IntType.int64)
        .toList();
  }
}

final class _ITensorInt64BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
