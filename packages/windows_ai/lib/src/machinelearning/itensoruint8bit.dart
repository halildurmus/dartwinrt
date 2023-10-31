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
const IID_ITensorUInt8Bit = '{58e1ae27-622b-48e3-be22-d867aed1daac}';

class ITensorUInt8Bit extends IInspectable {
  ITensorUInt8Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorUInt8BitVtbl>().ref;

  final _ITensorUInt8BitVtbl _vtable;

  factory ITensorUInt8Bit.from(IInspectable interface) =>
      interface.cast(ITensorUInt8Bit.fromPtr, IID_ITensorUInt8Bit);

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
            iterableIid: '{88318266-f3fd-50fc-8f08-b823a41b60c1}',
            tIntType: IntType.uint8)
        .toList();
  }
}

final class _ITensorUInt8BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
