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

import 'bitmapplanedescription.dart';

/// @nodoc
const IID_IBitmapBuffer = '{a53e04c4-399c-438c-b28f-a63a6b83d1a1}';

class IBitmapBuffer extends IInspectable implements IMemoryBuffer, IClosable {
  IBitmapBuffer.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapBufferVtbl>().ref;

  final _IBitmapBufferVtbl _vtable;

  factory IBitmapBuffer.from(IInspectable interface) =>
      interface.cast(IBitmapBuffer.fromPtr, IID_IBitmapBuffer);

  int getPlaneCount() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetPlaneCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  BitmapPlaneDescription getPlaneDescription(int index) {
    final value = calloc<NativeBitmapPlaneDescription>();

    try {
      final hr = _vtable.GetPlaneDescription.asFunction<
              int Function(VTablePointer lpVtbl, int index,
                  Pointer<NativeBitmapPlaneDescription> value)>()(
          lpVtbl, index, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  late final _iMemoryBuffer = IMemoryBuffer.from(this);

  @override
  IMemoryBufferReference? createReference() => _iMemoryBuffer.createReference();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IBitmapBufferVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      GetPlaneCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 index,
                  Pointer<NativeBitmapPlaneDescription> value)>>
      GetPlaneDescription;
}
