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

/// @nodoc
const IID_IBitmapDecoderStatics2 = '{50ba68ea-99a1-40c4-80d9-aef0dafa6c3f}';

class IBitmapDecoderStatics2 extends IInspectable {
  IBitmapDecoderStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapDecoderStatics2Vtbl>().ref;

  final _IBitmapDecoderStatics2Vtbl _vtable;

  factory IBitmapDecoderStatics2.from(IInspectable interface) => interface.cast(
      IBitmapDecoderStatics2.fromPtr, IID_IBitmapDecoderStatics2);

  Guid get heifDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_HeifDecoderId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get webpDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_WebpDecoderId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }
}

final class _IBitmapDecoderStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_HeifDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_WebpDecoderId;
}
