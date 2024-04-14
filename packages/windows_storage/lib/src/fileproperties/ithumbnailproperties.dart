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

import 'thumbnailtype.dart';

/// @nodoc
const IID_IThumbnailProperties = '{693dd42f-dbe7-49b5-b3b3-2893ac5d3423}';

class IThumbnailProperties extends IInspectable {
  IThumbnailProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IThumbnailPropertiesVtbl>().ref;

  final _IThumbnailPropertiesVtbl _vtable;

  factory IThumbnailProperties.from(IInspectable interface) =>
      interface.cast(IThumbnailProperties.fromPtr, IID_IThumbnailProperties);

  int get originalWidth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_OriginalWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get originalHeight {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_OriginalHeight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get returnedSmallerCachedSize {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ReturnedSmallerCachedSize.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  ThumbnailType get type {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ThumbnailType.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IThumbnailPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_OriginalWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_OriginalHeight;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ReturnedSmallerCachedSize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Type;
}
