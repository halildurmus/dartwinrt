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
const IID_IOcrWord = '{3c2a477a-5cd9-3525-ba2a-23d1e0a68a1d}';

class IOcrWord extends IInspectable {
  IOcrWord.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IOcrWordVtbl>().ref;

  final _IOcrWordVtbl _vtable;

  factory IOcrWord.from(IInspectable interface) =>
      interface.cast(IOcrWord.fromPtr, IID_IOcrWord);

  Rect get boundingRect {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_BoundingRect.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  String get text {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Text.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IOcrWordVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeRect> value)>>
      get_BoundingRect;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Text;
}
