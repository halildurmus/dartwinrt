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
const IID_IMediaStreamDescriptor = '{80f16e6e-92f7-451e-97d2-afd80742da70}';

class IMediaStreamDescriptor extends IInspectable {
  IMediaStreamDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaStreamDescriptorVtbl>().ref;

  final _IMediaStreamDescriptorVtbl _vtable;

  factory IMediaStreamDescriptor.from(IInspectable interface) => interface.cast(
      IMediaStreamDescriptor.fromPtr, IID_IMediaStreamDescriptor);

  bool get isSelected {
    final selected = calloc<Bool>();

    try {
      final hr = _vtable.get_IsSelected.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> selected)>()(
          lpVtbl, selected);

      if (FAILED(hr)) throwWindowsException(hr);

      return selected.value;
    } finally {
      free(selected);
    }
  }

  set name(String value) {
    final hr = _vtable.put_Name
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Name.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set language(String value) {
    final hr = _vtable.put_Language
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get language {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Language.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IMediaStreamDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> selected)>>
      get_IsSelected;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Language;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Language;
}
