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
const IID_ITensorInt32Bit = '{2c0c28d3-207c-4486-a7d2-884522c5e589}';

class ITensorInt32Bit extends IInspectable {
  ITensorInt32Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt32BitVtbl>().ref;

  final _ITensorInt32BitVtbl _vtable;

  factory ITensorInt32Bit.from(IInspectable interface) =>
      interface.cast(ITensorInt32Bit.fromPtr, IID_ITensorInt32Bit);

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
            iterableIid: '{81a643fb-f51c-5565-83c4-f96425777b66}',
            intType: IntType.int32)
        .toList();
  }
}

final class _ITensorInt32BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
