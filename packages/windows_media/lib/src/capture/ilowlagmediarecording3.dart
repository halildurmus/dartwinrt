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
import 'mediacapturepauseresult.dart';
import 'mediacapturestopresult.dart';

/// @nodoc
const IID_ILowLagMediaRecording3 = '{5c33ab12-48f7-47da-b41e-90880a5fe0ec}';

class ILowLagMediaRecording3 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ILowLagMediaRecording3.fromPtr(super.ptr);

  factory ILowLagMediaRecording3.from(IInspectable interface) => interface.cast(
      ILowLagMediaRecording3.fromPtr, IID_ILowLagMediaRecording3);

  Future<MediaCapturePauseResult?> pauseWithResultAsync(
      MediaCapturePauseBehavior behavior) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 behavior,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int behavior,
                    Pointer<COMObject> operation)>()(
        lpVtbl, behavior.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaCapturePauseResult?>.fromPtr(
        operation,
        creator: MediaCapturePauseResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaCaptureStopResult?> stopWithResultAsync() {
    final operation = calloc<COMObject>();

    final hr = vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaCaptureStopResult?>.fromPtr(
        operation,
        creator: MediaCaptureStopResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
