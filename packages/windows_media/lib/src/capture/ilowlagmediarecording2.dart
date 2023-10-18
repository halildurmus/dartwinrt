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

import '../devices/mediacapturepausebehavior.dart';

/// @nodoc
const IID_ILowLagMediaRecording2 = '{6369c758-5644-41e2-97af-8ef56a25e225}';

class ILowLagMediaRecording2 extends IInspectable {
  ILowLagMediaRecording2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILowLagMediaRecording2Vtbl>().ref;

  final _ILowLagMediaRecording2Vtbl _vtable;

  factory ILowLagMediaRecording2.from(IInspectable interface) => interface.cast(
      ILowLagMediaRecording2.fromPtr, IID_ILowLagMediaRecording2);

  Future<void> pauseAsync(MediaCapturePauseBehavior behavior) {
    final operation = calloc<COMObject>();

    final hr = _vtable.PauseAsync.asFunction<
        int Function(VTablePointer lpVtbl, int behavior,
            Pointer<COMObject> operation)>()(lpVtbl, behavior.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> resumeAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.ResumeAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _ILowLagMediaRecording2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 behavior,
              Pointer<COMObject> operation)>> PauseAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> ResumeAsync;
}
