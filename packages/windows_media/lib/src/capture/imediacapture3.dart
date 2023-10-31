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

import '../mediaproperties/imageencodingproperties.dart';
import 'core/variablephotosequencecapture.dart';
import 'mediacapture.dart';

/// @nodoc
const IID_IMediaCapture3 = '{d4136f30-1564-466e-bc0a-af94e02ab016}';

class IMediaCapture3 extends IInspectable {
  IMediaCapture3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCapture3Vtbl>().ref;

  final _IMediaCapture3Vtbl _vtable;

  factory IMediaCapture3.from(IInspectable interface) =>
      interface.cast(IMediaCapture3.fromPtr, IID_IMediaCapture3);

  Future<VariablePhotoSequenceCapture?>
      prepareVariablePhotoSequenceCaptureAsync(ImageEncodingProperties? type) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PrepareVariablePhotoSequenceCaptureAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer type,
            Pointer<COMObject> operation)>()(lpVtbl, type.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<VariablePhotoSequenceCapture?>.fromPtr(operation,
            tResultObjectCreator: VariablePhotoSequenceCapture.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  int add_FocusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_FocusChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_FocusChanged(int token) {
    final hr = _vtable.remove_FocusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_PhotoConfirmationCaptured(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_PhotoConfirmationCaptured.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_PhotoConfirmationCaptured(int token) {
    final hr = _vtable.remove_PhotoConfirmationCaptured
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMediaCapture3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer type,
                  Pointer<COMObject> operation)>>
      PrepareVariablePhotoSequenceCaptureAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_FocusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_FocusChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_PhotoConfirmationCaptured;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_PhotoConfirmationCaptured;
}
