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

import 'capturedphoto.dart';

/// @nodoc
const IID_ILowLagPhotoCapture = '{a37251b7-6b44-473d-8f24-f703d6c0ec44}';

class ILowLagPhotoCapture extends IInspectable {
  ILowLagPhotoCapture.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILowLagPhotoCaptureVtbl>().ref;

  final _ILowLagPhotoCaptureVtbl _vtable;

  factory ILowLagPhotoCapture.from(IInspectable interface) =>
      interface.cast(ILowLagPhotoCapture.fromPtr, IID_ILowLagPhotoCapture);

  Future<CapturedPhoto?> captureAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.CaptureAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<CapturedPhoto?>.fromPtr(operation,
        tResultObjectCreator: CapturedPhoto.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> finishAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.FinishAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _ILowLagPhotoCaptureVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      CaptureAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> FinishAsync;
}
