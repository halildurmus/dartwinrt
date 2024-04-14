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
import 'package:windows_graphics/windows_graphics.dart';

import 'videoframe.dart';

/// @nodoc
const IID_IVideoFrame2 = '{3837840d-336c-4366-8d46-060798736c5d}';

class IVideoFrame2 extends IInspectable {
  IVideoFrame2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoFrame2Vtbl>().ref;

  final _IVideoFrame2Vtbl _vtable;

  factory IVideoFrame2.from(IInspectable interface) =>
      interface.cast(IVideoFrame2.fromPtr, IID_IVideoFrame2);

  Future<void> copyToWithBoundsAsync(VideoFrame? frame,
      BitmapBounds? sourceBounds, BitmapBounds? destinationBounds) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CopyToWithBoundsAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer frame,
                VTablePointer sourceBounds,
                VTablePointer destinationBounds,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        frame.lpVtbl,
        sourceBounds?.toReference().lpVtbl ?? nullptr,
        destinationBounds?.toReference().lpVtbl ?? nullptr,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IVideoFrame2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer frame,
              VTablePointer sourceBounds,
              VTablePointer destinationBounds,
              Pointer<COMObject> operation)>> CopyToWithBoundsAsync;
}
