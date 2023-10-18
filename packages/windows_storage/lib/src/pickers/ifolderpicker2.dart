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
const IID_IFolderPicker2 = '{8eb3ba97-dc85-4616-be94-9660881f2f5d}';

class IFolderPicker2 extends IInspectable {
  IFolderPicker2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFolderPicker2Vtbl>().ref;

  final _IFolderPicker2Vtbl _vtable;

  factory IFolderPicker2.from(IInspectable interface) =>
      interface.cast(IFolderPicker2.fromPtr, IID_IFolderPicker2);

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

  @Deprecated("Instead, use PickSingleFolderAsync")
  void pickFolderAndContinue() {
    final hr = _vtable.PickFolderAndContinue.asFunction<
        int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFolderPicker2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ContinuationData;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      PickFolderAndContinue;
}
