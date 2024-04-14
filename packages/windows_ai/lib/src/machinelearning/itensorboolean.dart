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
const IID_ITensorBoolean = '{50f311ed-29e9-4a5c-a44d-8fc512584eed}';

class ITensorBoolean extends IInspectable {
  ITensorBoolean.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorBooleanVtbl>().ref;

  final _ITensorBooleanVtbl _vtable;

  factory ITensorBoolean.from(IInspectable interface) =>
      interface.cast(ITensorBoolean.fromPtr, IID_ITensorBoolean);

  List<bool> getAsVectorView() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetAsVectorView.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<bool>.fromPtr(result,
            iterableIid: '{30160817-1d7d-54e9-99db-d7636266a476}')
        .toList();
  }
}

final class _ITensorBooleanVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAsVectorView;
}
