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
const IID_ITensorFloat = '{f2282d82-aa02-42c8-a0c8-df1efc9676e1}';

class ITensorFloat extends IInspectable {
  ITensorFloat.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorFloatVtbl>().ref;

  final _ITensorFloatVtbl _vtable;

  factory ITensorFloat.from(IInspectable interface) =>
      interface.cast(ITensorFloat.fromPtr, IID_ITensorFloat);

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

final class _ITensorFloatVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
