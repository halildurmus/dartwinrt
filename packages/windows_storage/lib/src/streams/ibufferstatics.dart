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

import 'buffer.dart';
import 'ibuffer.dart';

/// @nodoc
const IID_IBufferStatics = '{e901e65b-d716-475a-a90a-af7229b1e741}';

class IBufferStatics extends IInspectable {
  IBufferStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBufferStaticsVtbl>().ref;

  final _IBufferStaticsVtbl _vtable;

  factory IBufferStatics.from(IInspectable interface) =>
      interface.cast(IBufferStatics.fromPtr, IID_IBufferStatics);

  Buffer? createCopyFromMemoryBuffer(IMemoryBuffer? input) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateCopyFromMemoryBuffer.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer input,
            Pointer<COMObject> value)>()(lpVtbl, input.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return Buffer.fromPtr(value);
  }

  MemoryBuffer? createMemoryBufferOverIBuffer(IBuffer? input) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateMemoryBufferOverIBuffer.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer input,
            Pointer<COMObject> value)>()(lpVtbl, input.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MemoryBuffer.fromPtr(value);
  }
}

final class _IBufferStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer input,
              Pointer<COMObject> value)>> CreateCopyFromMemoryBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer input,
              Pointer<COMObject> value)>> CreateMemoryBufferOverIBuffer;
}
