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
const IID_ITensorFloat16Bit = '{0ab994fc-5b89-4c3c-b5e4-5282a5316c0a}';

class ITensorFloat16Bit extends IInspectable {
  ITensorFloat16Bit.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorFloat16BitVtbl>().ref;

  final _ITensorFloat16BitVtbl _vtable;

  factory ITensorFloat16Bit.from(IInspectable interface) =>
      interface.cast(ITensorFloat16Bit.fromPtr, IID_ITensorFloat16Bit);

  List<double> getAsVectorView() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetAsVectorView.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<double>.fromPtr(result,
            iterableIid: '{b01bee51-063a-5fda-bd72-d76637bb8cb8}',
            tDoubleType: DoubleType.float)
        .toList();
  }
}

final class _ITensorFloat16BitVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
