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

import 'advancedcapturedphoto.dart';
import 'advancedphotocapture.dart';

/// @nodoc
const IID_IAdvancedPhotoCapture = '{83ffaafa-6667-44dc-973c-a6bce596aa0f}';

class IAdvancedPhotoCapture extends IInspectable {
  IAdvancedPhotoCapture.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAdvancedPhotoCaptureVtbl>().ref;

  final _IAdvancedPhotoCaptureVtbl _vtable;

  factory IAdvancedPhotoCapture.from(IInspectable interface) =>
      interface.cast(IAdvancedPhotoCapture.fromPtr, IID_IAdvancedPhotoCapture);

  Future<AdvancedCapturedPhoto?> captureAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.CaptureAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<AdvancedCapturedPhoto?>.fromPtr(
        operation,
        tResultObjectCreator: AdvancedCapturedPhoto.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<AdvancedCapturedPhoto?> captureWithContextAsync(Object? context) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CaptureWithContextAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer context,
                Pointer<COMObject> operation)>()(
        lpVtbl, context?.boxValue().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<AdvancedCapturedPhoto?>.fromPtr(
        operation,
        tResultObjectCreator: AdvancedCapturedPhoto.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  int add_OptionalReferencePhotoCaptured(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_OptionalReferencePhotoCaptured.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_OptionalReferencePhotoCaptured(int token) {
    final hr = _vtable.remove_OptionalReferencePhotoCaptured
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_AllPhotosCaptured(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_AllPhotosCaptured.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_AllPhotosCaptured(int token) {
    final hr = _vtable.remove_AllPhotosCaptured
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
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

final class _IAdvancedPhotoCaptureVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      CaptureAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer context,
              Pointer<COMObject> operation)>> CaptureWithContextAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_OptionalReferencePhotoCaptured;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_OptionalReferencePhotoCaptured;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_AllPhotosCaptured;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_AllPhotosCaptured;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> FinishAsync;
}
