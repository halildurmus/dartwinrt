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
const IID_IVariablePhotoSequenceCapture2 =
    '{fe2c62bc-50b0-43e3-917c-e3b92798942f}';

class IVariablePhotoSequenceCapture2 extends IInspectable {
  IVariablePhotoSequenceCapture2.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IVariablePhotoSequenceCapture2Vtbl>().ref;

  final _IVariablePhotoSequenceCapture2Vtbl _vtable;

  factory IVariablePhotoSequenceCapture2.from(IInspectable interface) =>
      interface.cast(IVariablePhotoSequenceCapture2.fromPtr,
          IID_IVariablePhotoSequenceCapture2);

  Future<void> updateSettingsAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.UpdateSettingsAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IVariablePhotoSequenceCapture2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      UpdateSettingsAsync;
}
