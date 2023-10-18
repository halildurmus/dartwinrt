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
import 'package:windows_storage/windows_storage.dart';

import 'mediaframereference.dart';

/// @nodoc
const IID_IBufferMediaFrame = '{b5b153c7-9b84-4062-b79c-a365b2596854}';

class IBufferMediaFrame extends IInspectable {
  IBufferMediaFrame.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBufferMediaFrameVtbl>().ref;

  final _IBufferMediaFrameVtbl _vtable;

  factory IBufferMediaFrame.from(IInspectable interface) =>
      interface.cast(IBufferMediaFrame.fromPtr, IID_IBufferMediaFrame);

  MediaFrameReference? get frameReference {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameReference.asFunction<
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

    return MediaFrameReference.fromPtr(value);
  }

  IBuffer? get buffer {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Buffer.asFunction<
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

    return IBuffer.fromPtr(value);
  }
}

final class _IBufferMediaFrameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameReference;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Buffer;
}
