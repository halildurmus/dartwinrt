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
const IID_IFileSavePicker2 = '{0ec313a2-d24b-449a-8197-e89104fd42cc}';

class IFileSavePicker2 extends IInspectable {
  IFileSavePicker2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFileSavePicker2Vtbl>().ref;

  final _IFileSavePicker2Vtbl _vtable;

  factory IFileSavePicker2.from(IInspectable interface) =>
      interface.cast(IFileSavePicker2.fromPtr, IID_IFileSavePicker2);

  ValueSet? get continuationData {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ContinuationData.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ValueSet.fromPtr(value);
  }

  @Deprecated("Instead, use PickSaveFileAsync")
  void pickSaveFileAndContinue() {
    final hr = _vtable.PickSaveFileAndContinue.asFunction<
        int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFileSavePicker2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ContinuationData;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      PickSaveFileAndContinue;
}
