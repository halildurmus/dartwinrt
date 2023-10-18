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

import 'frames/mediaframesource.dart';
import 'frames/multisourcemediaframereader.dart';
import 'mediacapture.dart';

/// @nodoc
const IID_IMediaCapture6 = '{228948bd-4b20-4bb1-9fd6-a583212a1012}';

class IMediaCapture6 extends IInspectable {
  IMediaCapture6.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCapture6Vtbl>().ref;

  final _IMediaCapture6Vtbl _vtable;

  factory IMediaCapture6.from(IInspectable interface) =>
      interface.cast(IMediaCapture6.fromPtr, IID_IMediaCapture6);

  int add_CaptureDeviceExclusiveControlStatusChanged(
      Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_CaptureDeviceExclusiveControlStatusChanged
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_CaptureDeviceExclusiveControlStatusChanged(int token) {
    final hr = _vtable.remove_CaptureDeviceExclusiveControlStatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<MultiSourceMediaFrameReader?> createMultiSourceFrameReaderAsync(
      IIterable<MediaFrameSource?>? inputSources) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateMultiSourceFrameReaderAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer inputSources,
            Pointer<COMObject> value)>()(lpVtbl, inputSources.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<MultiSourceMediaFrameReader?>.fromPtr(value,
            creator: MultiSourceMediaFrameReader.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IMediaCapture6Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> token)>>
      add_CaptureDeviceExclusiveControlStatusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_CaptureDeviceExclusiveControlStatusChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer inputSources,
              Pointer<COMObject> value)>> CreateMultiSourceFrameReaderAsync;
}
