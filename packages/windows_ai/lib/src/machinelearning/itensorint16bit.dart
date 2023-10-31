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
const IID_ITensorInt16Bit = '{98a32d39-e6d6-44af-8afa-baebc44dc020}';

class ITensorInt16Bit extends IInspectable {
  ITensorInt16Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt16BitVtbl>().ref;

  final _ITensorInt16BitVtbl _vtable;

  factory ITensorInt16Bit.from(IInspectable interface) =>
      interface.cast(ITensorInt16Bit.fromPtr, IID_ITensorInt16Bit);

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
            iterableIid: '{72ff2923-4b4e-53bb-8feb-41ec5f2bb734}',
            tIntType: IntType.int16)
        .toList();
  }
}

final class _ITensorInt16BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
