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
const IID_ITensorUInt16Bit = '{68140f4b-23c0-42f3-81f6-a891c011bc3f}';

class ITensorUInt16Bit extends IInspectable {
  ITensorUInt16Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorUInt16BitVtbl>().ref;

  final _ITensorUInt16BitVtbl _vtable;

  factory ITensorUInt16Bit.from(IInspectable interface) =>
      interface.cast(ITensorUInt16Bit.fromPtr, IID_ITensorUInt16Bit);

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
            iterableIid: '{ecfa9a6f-fa2e-5345-b297-efb4e8c6be87}',
            intType: IntType.uint16)
        .toList();
  }
}

final class _ITensorUInt16BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
