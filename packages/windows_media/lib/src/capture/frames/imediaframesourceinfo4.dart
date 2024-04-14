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

/// @nodoc
const IID_IMediaFrameSourceInfo4 = '{4817d721-85eb-470c-8f37-43ca5498e41d}';

class IMediaFrameSourceInfo4 extends IInspectable {
  IMediaFrameSourceInfo4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceInfo4Vtbl>().ref;

  final _IMediaFrameSourceInfo4Vtbl _vtable;

  factory IMediaFrameSourceInfo4.from(IInspectable interface) => interface.cast(
      IMediaFrameSourceInfo4.fromPtr, IID_IMediaFrameSourceInfo4);

  bool get isShareable {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsShareable.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IMediaFrameSourceInfo4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsShareable;
}
